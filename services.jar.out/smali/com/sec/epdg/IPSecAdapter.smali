.class public Lcom/sec/epdg/IPSecAdapter;
.super Ljava/lang/Object;
.source "IPSecAdapter.java"

# interfaces
.implements Lcom/ipsec/client/IIPsecListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IPSecAdapter$2;,
        Lcom/sec/epdg/IPSecAdapter$ConnectInfo;,
        Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;,
        Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;,
        Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;
    }
.end annotation


# static fields
.field private static CISCO_TESTING:I = 0x0

.field private static INSIDE_SECURE:I = 0x0

.field private static final IPSEC_ADAPTER_CONNECTION_STATUS_CHANGED:I = 0x2

.field private static final IPSEC_ADAPTER_EVENT_CHECK_CONNECTION_REQ:I = 0x5

.field private static final IPSEC_ADAPTER_EVENT_CONNECT_REQ:I = 0x3

.field private static final IPSEC_ADAPTER_EVENT_DISCONNECT_REQ:I = 0x4

.field private static final IPSEC_ADAPTER_EVENT_SEND_KEEPALIVE_REQ:I = 0x6

.field private static final IPSEC_ADAPTER_SERVICE_STATUS_CHANGED:I = 0x1

.field private static IPV6PREFIX:Ljava/lang/String; = null

.field private static final OUTGOING_ADAPTER:Ljava/lang/String; = "[EPDGSerive->IPSecLib]"

.field private static SETCOM_TESTING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[IPSECADAPTER]"

.field private static TESTING_TYPE:I

.field private static conn_prefix:Ljava/lang/String;

.field private static mIPsecClient:Lcom/ipsec/client/IPsecClient;

.field private static mInstance:Lcom/sec/epdg/IPSecAdapter;

.field private static mOemHandler:Landroid/os/Handler;


# instance fields
.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mConnectionDb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ipsec/client/IPsecConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

.field private mPowerMgr:Landroid/os/PowerManager;

.field private mToastCounter:I

.field private mbStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/sec/epdg/IPSecAdapter;->CISCO_TESTING:I

    .line 97
    const/4 v0, 0x1

    sput v0, Lcom/sec/epdg/IPSecAdapter;->INSIDE_SECURE:I

    .line 99
    const/4 v0, 0x2

    sput v0, Lcom/sec/epdg/IPSecAdapter;->SETCOM_TESTING:I

    .line 101
    sget v0, Lcom/sec/epdg/IPSecAdapter;->CISCO_TESTING:I

    sput v0, Lcom/sec/epdg/IPSecAdapter;->TESTING_TYPE:I

    .line 115
    const-string v0, "CONN"

    sput-object v0, Lcom/sec/epdg/IPSecAdapter;->conn_prefix:Ljava/lang/String;

    .line 118
    const-string v0, "/64"

    sput-object v0, Lcom/sec/epdg/IPSecAdapter;->IPV6PREFIX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/IPSecAdapter;->mConnectionDb:Ljava/util/HashMap;

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/epdg/IPSecAdapter;->mContext:Landroid/content/Context;

    .line 113
    iput-boolean v4, p0, Lcom/sec/epdg/IPSecAdapter;->mbStarted:Z

    .line 124
    iput v4, p0, Lcom/sec/epdg/IPSecAdapter;->mToastCounter:I

    .line 128
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IpSecAdapterThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 130
    new-instance v1, Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;-><init>(Lcom/sec/epdg/IPSecAdapter;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecAdapter;->mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    .line 131
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/sec/epdg/IPSecAdapter;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 133
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/sec/epdg/IPSecAdapter;->mPowerMgr:Landroid/os/PowerManager;

    .line 134
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapter;->mPowerMgr:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "[IPSECADAPTER]"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecAdapter;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 135
    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapter;->mContext:Landroid/content/Context;

    .line 136
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter;->initIpSecClient(Landroid/content/Context;)V

    .line 137
    iput v4, p0, Lcom/sec/epdg/IPSecAdapter;->mToastCounter:I

    .line 138
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/IPSecAdapter;Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter;
    .param p1, "x1"    # Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter;->onIpSecAdapterConnectionStatusChanged(Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/epdg/IPSecAdapter;Lcom/sec/epdg/IPSecAdapter$ConnectInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter;
    .param p1, "x1"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecAdapter;->onConnectRequestRecv(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/epdg/IPSecAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter;->onDisconnectRequestRecv(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/epdg/IPSecAdapter;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecAdapter;->onCheckConnectionRequestRecv(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/epdg/IPSecAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter;->onSendKeepalive(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/epdg/IPSecAdapter;Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter;
    .param p1, "x1"    # Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter;->onIpSecAdapterServiceStatusChanged(Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;)V

    return-void
.end method

.method private addIPsecConnectionDb(ILcom/ipsec/client/IPsecConnection;)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "connection"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    .line 237
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "Adding IPSecConnection to DB addIPsecConnectionDb()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter;->mConnectionDb:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "Added IPSecConnection to DB"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private getCidfromConnDb(Lcom/ipsec/client/IPsecConnection;)I
    .locals 6
    .param p1, "conn"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    .line 1765
    const-string v3, "[IPSECADAPTER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieving context ID from the DataBase : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    iget-object v3, p0, Lcom/sec/epdg/IPSecAdapter;->mConnectionDb:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1767
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1769
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1770
    .local v2, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/sec/epdg/IPSecAdapter;->mConnectionDb:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection;

    .line 1771
    .local v0, "ipsecconn":Lcom/ipsec/client/IPsecConnection;
    const-string v3, "[IPSECADAPTER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interface name in connection being checked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecConnection;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1775
    const-string v3, "[IPSECADAPTER]"

    const-string v4, "Connection Object Found in DB"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1780
    .end local v0    # "ipsecconn":Lcom/ipsec/client/IPsecConnection;
    .end local v2    # "key":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 1779
    :cond_1
    const-string v3, "[IPSECADAPTER]"

    const-string v4, "Retrieval getCidfromConnDb failed"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private getConnectionInformation(I)Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    .locals 37
    .param p1, "cid"    # I

    .prologue
    .line 1453
    const-string v2, "[IPSECADAPTER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConnectionInformation():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecAdapter;->mConnectionDb:Ljava/util/HashMap;

    if-eqz v2, :cond_27

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecAdapter;->mConnectionDb:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/ipsec/client/IPsecConnection;

    .line 1456
    .local v17, "conn":Lcom/ipsec/client/IPsecConnection;
    sget-object v2, Lcom/sec/epdg/IPSecAdapter;->mIPsecClient:Lcom/ipsec/client/IPsecClient;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/ipsec/client/IPsecClient;->getIPsecConnectionState(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecConnectionState;

    move-result-object v33

    .line 1458
    .local v33, "state":Lcom/ipsec/client/IPsecConnectionState;
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 1460
    .local v24, "mStatus":Ljava/lang/StringBuffer;
    if-eqz v33, :cond_27

    if-eqz v17, :cond_27

    .line 1461
    const/4 v3, 0x0

    .line 1462
    .local v3, "linkPropIpv4PrefixLen":I
    const/4 v4, 0x0

    .line 1463
    .local v4, "linkPropIpv6PrefixLen":I
    const/4 v11, 0x0

    .line 1464
    .local v11, "linkPropIpv4Addr":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1466
    .local v12, "linkPropIpv6Addr":Ljava/lang/String;
    const-string v2, "[IPSECADAPTER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrive Connection Params for cid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "connection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    sget-object v23, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    .line 1470
    .local v23, "iptype":Lcom/ipsec/client/IPsecConnection$IPVersion;
    if-eqz v17, :cond_0

    .line 1471
    invoke-virtual/range {v17 .. v17}, Lcom/ipsec/client/IPsecConnection;->getSubnetType()Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-result-object v23

    .line 1474
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ngateway address: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getGatewayIP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\nlocal address: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getLocalIP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\nremote identity: type "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getRemoteIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " data "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getRemoteIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\nlocal identity: type "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " data "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getOwnIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1481
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/ipsec/client/IPsecConnectionState;->getRemoteAccessClientAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;)[Ljava/lang/String;

    move-result-object v29

    .line 1483
    .local v29, "racAddresses":[Ljava/lang/String;
    if-eqz v29, :cond_11

    .line 1484
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, v29

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_7

    .line 1485
    aget-object v14, v29, v21

    .line 1486
    .local v14, "addr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nrac address: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1487
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v23

    if-ne v0, v2, :cond_3

    .line 1488
    aget-object v2, v29, v21

    const-string v5, "\\/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1489
    .local v18, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "IPv4 address received ::"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v36, 0x0

    aget-object v36, v18, v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1490
    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1491
    const/4 v2, 0x0

    aget-object v11, v18, v2

    .line 1492
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_1

    .line 1493
    const/4 v2, 0x1

    aget-object v27, v18, v2

    .line 1494
    .local v27, "prefixlen":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1484
    .end local v27    # "prefixlen":Ljava/lang/String;
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 1497
    :cond_1
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "IPV4 Prefix Absent"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1500
    :cond_2
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "Received IPv4 address is not valid"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1502
    .end local v18    # "data":[Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v23

    if-ne v0, v2, :cond_6

    .line 1503
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Storing IPv6 address:"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v36, v29, v21

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, "pos:"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1505
    aget-object v2, v29, v21

    const-string v5, "\\/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1506
    .restart local v18    # "data":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "IPv6 address received ::"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v36, 0x0

    aget-object v36, v18, v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1507
    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1508
    const/4 v2, 0x0

    aget-object v12, v18, v2

    .line 1509
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_4

    .line 1510
    const/4 v2, 0x1

    aget-object v27, v18, v2

    .line 1511
    .restart local v27    # "prefixlen":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1513
    goto/16 :goto_1

    .line 1514
    .end local v27    # "prefixlen":Ljava/lang/String;
    :cond_4
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "IPV6 Prefix Absent"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1517
    :cond_5
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "Received IPv6 address is not valid"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1520
    .end local v18    # "data":[Ljava/lang/String;
    :cond_6
    const/16 v21, 0x0

    .line 1521
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Got IPv4 address after connect @ pos:"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, " "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v36, v29, v21

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1523
    aget-object v2, v29, v21

    const-string v5, "\\/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1524
    .restart local v18    # "data":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "IPv4 address received ::"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v36, 0x0

    aget-object v36, v18, v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1526
    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1527
    const/4 v2, 0x0

    aget-object v11, v18, v2

    .line 1528
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_9

    .line 1529
    const/4 v2, 0x1

    aget-object v27, v18, v2

    .line 1530
    .restart local v27    # "prefixlen":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1535
    .end local v27    # "prefixlen":Ljava/lang/String;
    :goto_2
    sget-object v23, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    .line 1552
    :goto_3
    move-object/from16 v0, v29

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_7

    .line 1553
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Got next address after connect @ pos:"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, " "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v36, 0x1

    aget-object v36, v29, v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1556
    const/4 v2, 0x1

    aget-object v2, v29, v2

    const-string v5, "\\/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1559
    .local v19, "data2":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v19, v2

    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1560
    const/4 v2, 0x0

    aget-object v11, v19, v2

    .line 1561
    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_d

    .line 1562
    const/4 v2, 0x1

    aget-object v27, v19, v2

    .line 1563
    .restart local v27    # "prefixlen":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1586
    .end local v27    # "prefixlen":Ljava/lang/String;
    :goto_4
    sget-object v23, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    .line 1597
    .end local v14    # "addr":Ljava/lang/String;
    .end local v18    # "data":[Ljava/lang/String;
    .end local v19    # "data2":[Ljava/lang/String;
    .end local v21    # "i":I
    :cond_7
    :goto_5
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/ipsec/client/IPsecConnectionState;->getRemoteAccessDnsAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;)[Ljava/lang/String;

    move-result-object v30

    .line 1599
    .local v30, "racDNSAddresses":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIPSECCONN_MAX_DNS()I

    move-result v13

    .line 1600
    .local v13, "MAX_DNS":I
    new-array v7, v13, [Ljava/lang/String;

    .line 1601
    .local v7, "ipv4DNS":[Ljava/lang/String;
    new-array v8, v13, [Ljava/lang/String;

    .line 1602
    .local v8, "ipv6DNS":[Ljava/lang/String;
    const/16 v34, 0x0

    .line 1603
    .local v34, "v4num":I
    const/16 v35, 0x0

    .line 1604
    .local v35, "v6num":I
    if-eqz v30, :cond_1b

    .line 1605
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_6
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_1c

    .line 1606
    aget-object v14, v30, v21

    .line 1607
    .restart local v14    # "addr":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "rac DNS address: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1608
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v23

    if-ne v0, v2, :cond_13

    .line 1609
    invoke-static {v14}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1610
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Received v4 address as iptype is v4: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, " v4 index "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1613
    const/4 v2, 0x2

    move/from16 v0, v34

    if-ge v0, v2, :cond_8

    .line 1614
    aput-object v14, v7, v34

    .line 1616
    :cond_8
    add-int/lit8 v34, v34, 0x1

    .line 1605
    :goto_7
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 1533
    .end local v7    # "ipv4DNS":[Ljava/lang/String;
    .end local v8    # "ipv6DNS":[Ljava/lang/String;
    .end local v13    # "MAX_DNS":I
    .end local v30    # "racDNSAddresses":[Ljava/lang/String;
    .end local v34    # "v4num":I
    .end local v35    # "v6num":I
    .restart local v18    # "data":[Ljava/lang/String;
    :cond_9
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "IPV4 Prefix Absent"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1536
    :cond_a
    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1537
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "IPv6 address received ::"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v36, 0x0

    aget-object v36, v18, v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1538
    const/4 v2, 0x0

    aget-object v12, v18, v2

    .line 1539
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_b

    .line 1540
    const/4 v2, 0x1

    aget-object v28, v18, v2

    .line 1541
    .local v28, "prefixlenv6":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1546
    .end local v28    # "prefixlenv6":Ljava/lang/String;
    :goto_8
    sget-object v23, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    goto/16 :goto_3

    .line 1544
    :cond_b
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "IPV6 Prefix Absent"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1548
    :cond_c
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "Received address is not valid (v4 or v6)"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1566
    .restart local v19    # "data2":[Ljava/lang/String;
    :cond_d
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "IPV4 Prefix Absent"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1569
    :cond_e
    const/4 v2, 0x0

    aget-object v2, v19, v2

    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1571
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "IPv6 address received ::"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v36, 0x0

    aget-object v36, v19, v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1573
    const/4 v2, 0x0

    aget-object v12, v19, v2

    .line 1574
    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_f

    .line 1575
    const/4 v2, 0x1

    aget-object v28, v19, v2

    .line 1576
    .restart local v28    # "prefixlenv6":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1578
    goto/16 :goto_4

    .line 1579
    .end local v28    # "prefixlenv6":Ljava/lang/String;
    :cond_f
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "IPV6 Prefix Absent"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1583
    :cond_10
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "Received address is not valid (v4 or v6)"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1593
    .end local v14    # "addr":Ljava/lang/String;
    .end local v18    # "data":[Ljava/lang/String;
    .end local v19    # "data2":[Ljava/lang/String;
    .end local v21    # "i":I
    :cond_11
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "IP address is null"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1618
    .restart local v7    # "ipv4DNS":[Ljava/lang/String;
    .restart local v8    # "ipv6DNS":[Ljava/lang/String;
    .restart local v13    # "MAX_DNS":I
    .restart local v14    # "addr":Ljava/lang/String;
    .restart local v21    # "i":I
    .restart local v30    # "racDNSAddresses":[Ljava/lang/String;
    .restart local v34    # "v4num":I
    .restart local v35    # "v6num":I
    :cond_12
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "Received IPv4 DNS address is not valid"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1621
    :cond_13
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v23

    if-ne v0, v2, :cond_16

    .line 1622
    invoke-static {v14}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1623
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Received v6 address as iptype is v6: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, " v6 index: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1626
    const/4 v2, 0x2

    move/from16 v0, v35

    if-ge v0, v2, :cond_14

    .line 1627
    aput-object v14, v8, v35

    .line 1629
    :cond_14
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_7

    .line 1631
    :cond_15
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "Received IPv6 DNS address is not valid"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1635
    :cond_16
    invoke-static {v14}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1636
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Received v4 address as ipaddress is v4: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, " v4 index: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1639
    const/4 v2, 0x2

    move/from16 v0, v34

    if-ge v0, v2, :cond_17

    .line 1640
    aput-object v14, v7, v34

    .line 1642
    :cond_17
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_7

    .line 1643
    :cond_18
    invoke-static {v14}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1644
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Received v6 address as ipaddress is v6: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, " v6 index: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1647
    const/4 v2, 0x2

    move/from16 v0, v35

    if-ge v0, v2, :cond_19

    .line 1648
    aput-object v14, v8, v35

    .line 1650
    :cond_19
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_7

    .line 1652
    :cond_1a
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "Received DNS address is not valid (v4 or v6)"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1658
    .end local v14    # "addr":Ljava/lang/String;
    .end local v21    # "i":I
    :cond_1b
    const-string v2, "[IPSECADAPTER]"

    const-string v5, "DNS addresses received : NULL"

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    :cond_1c
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/ipsec/client/IPsecConnectionState;->getRemoteAccessSubnets(Lcom/ipsec/client/IPsecConnection$IPVersion;)[Ljava/lang/String;

    move-result-object v32

    .line 1663
    .local v32, "racSubnets":[Ljava/lang/String;
    if-eqz v32, :cond_1e

    .line 1664
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_9
    move-object/from16 v0, v32

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_1d

    .line 1665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nrac subnets: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v32, v21

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1664
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 1666
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nvirtual adapter: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " MTU "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getVirtualAdapterMTU()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1671
    .end local v21    # "i":I
    :cond_1e
    invoke-static {}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIPSECCONN_MAX_PCSCFv4()I

    move-result v25

    .line 1672
    .local v25, "maxPcscfv4":I
    move/from16 v0, v25

    new-array v9, v0, [Ljava/lang/String;

    .line 1673
    .local v9, "ipv4PCSCFaddr":[Ljava/lang/String;
    const/16 v34, 0x0

    .line 1674
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv4VendorAttr()I

    move-result v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/ipsec/client/IPsecConnectionState;->getIkeCfgAttributes(I)Ljava/util/Vector;

    move-result-object v31

    .line 1676
    .local v31, "racPCSCF":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecIkeCfgAttribute;>;"
    if-eqz v31, :cond_21

    .line 1678
    const/4 v2, 0x4

    :try_start_0
    new-array v15, v2, [B

    .line 1679
    .local v15, "address":[B
    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    .line 1680
    .local v16, "attr":Lcom/ipsec/client/IPsecIkeCfgAttribute;
    invoke-virtual/range {v16 .. v16}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getData()[B

    move-result-object v18

    .line 1681
    .local v18, "data":[B
    if-eqz v18, :cond_20

    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v5, 0x4

    if-ne v2, v5, :cond_20

    .line 1682
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object/from16 v0, v18

    invoke-static {v0, v2, v15, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1683
    move/from16 v0, v34

    move/from16 v1, v25

    if-ge v0, v1, :cond_1f

    .line 1684
    invoke-static {v15}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v34

    .line 1688
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n-PCSCFv4 address: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v9, v34

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1690
    add-int/lit8 v34, v34, 0x1

    goto :goto_a

    .line 1692
    :cond_20
    const-string v2, "\n-invalid PCSCFv4 address "

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 1695
    .end local v15    # "address":[B
    .end local v16    # "attr":Lcom/ipsec/client/IPsecIkeCfgAttribute;
    .end local v18    # "data":[B
    .end local v22    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v20

    .line 1696
    .local v20, "e":Ljava/net/UnknownHostException;
    const-string v2, "[IPSECADAPTER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P-CSCFv4 parse exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    .end local v20    # "e":Ljava/net/UnknownHostException;
    :cond_21
    invoke-static {}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIPSECCONN_MAX_PCSCFv6()I

    move-result v26

    .line 1701
    .local v26, "maxPcscfv6":I
    move/from16 v0, v26

    new-array v10, v0, [Ljava/lang/String;

    .line 1702
    .local v10, "ipv6PCSCFaddr":[Ljava/lang/String;
    const/16 v35, 0x0

    .line 1703
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv6VendorAttr()I

    move-result v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/ipsec/client/IPsecConnectionState;->getIkeCfgAttributes(I)Ljava/util/Vector;

    move-result-object v31

    .line 1705
    if-eqz v31, :cond_26

    .line 1707
    const/16 v2, 0x10

    :try_start_1
    new-array v15, v2, [B

    .line 1708
    .restart local v15    # "address":[B
    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    .line 1709
    .restart local v16    # "attr":Lcom/ipsec/client/IPsecIkeCfgAttribute;
    invoke-virtual/range {v16 .. v16}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getData()[B

    move-result-object v18

    .line 1716
    .restart local v18    # "data":[B
    if-eqz v18, :cond_25

    move-object/from16 v0, v18

    array-length v2, v0

    const/16 v5, 0x10

    if-eq v2, v5, :cond_22

    move-object/from16 v0, v18

    array-length v2, v0

    const/16 v5, 0x11

    if-ne v2, v5, :cond_25

    .line 1718
    :cond_22
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object/from16 v0, v18

    invoke-static {v0, v2, v15, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1719
    move/from16 v0, v35

    move/from16 v1, v26

    if-ge v0, v1, :cond_24

    .line 1721
    move-object/from16 v0, v18

    array-length v2, v0

    const/16 v5, 0x11

    if-ne v2, v5, :cond_23

    .line 1728
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Received v6 p-cscf is : "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v15}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v36, "/"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v36, 0x10

    aget-byte v36, v18, v36

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v36, v0

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1737
    :cond_23
    invoke-static {v15}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v35

    .line 1740
    const/4 v2, 0x0

    const-string v5, "[IPSECADAPTER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "send v6 p-cscf to ril: "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v36, v10, v35

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1743
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n-PCSCFv6 address: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v10, v35

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1745
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_b

    .line 1747
    :cond_25
    const-string v2, "\n-invalid PCSCFv6 address"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_b

    .line 1750
    .end local v15    # "address":[B
    .end local v16    # "attr":Lcom/ipsec/client/IPsecIkeCfgAttribute;
    .end local v18    # "data":[B
    .end local v22    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v20

    .line 1751
    .restart local v20    # "e":Ljava/net/UnknownHostException;
    const-string v2, "[IPSECADAPTER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P-CSCFv6 parse exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    .end local v20    # "e":Ljava/net/UnknownHostException;
    :cond_26
    new-instance v2, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->getIpsecIwlanIpType(Lcom/ipsec/client/IPsecConnection$IPVersion;)Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Lcom/ipsec/client/IPsecConnectionState;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v12}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;-><init>(IILcom/sec/epdg/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    .end local v3    # "linkPropIpv4PrefixLen":I
    .end local v4    # "linkPropIpv6PrefixLen":I
    .end local v7    # "ipv4DNS":[Ljava/lang/String;
    .end local v8    # "ipv6DNS":[Ljava/lang/String;
    .end local v9    # "ipv4PCSCFaddr":[Ljava/lang/String;
    .end local v10    # "ipv6PCSCFaddr":[Ljava/lang/String;
    .end local v11    # "linkPropIpv4Addr":Ljava/lang/String;
    .end local v12    # "linkPropIpv6Addr":Ljava/lang/String;
    .end local v13    # "MAX_DNS":I
    .end local v17    # "conn":Lcom/ipsec/client/IPsecConnection;
    .end local v23    # "iptype":Lcom/ipsec/client/IPsecConnection$IPVersion;
    .end local v24    # "mStatus":Ljava/lang/StringBuffer;
    .end local v25    # "maxPcscfv4":I
    .end local v26    # "maxPcscfv6":I
    .end local v29    # "racAddresses":[Ljava/lang/String;
    .end local v30    # "racDNSAddresses":[Ljava/lang/String;
    .end local v31    # "racPCSCF":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecIkeCfgAttribute;>;"
    .end local v32    # "racSubnets":[Ljava/lang/String;
    .end local v33    # "state":Lcom/ipsec/client/IPsecConnectionState;
    .end local v34    # "v4num":I
    .end local v35    # "v6num":I
    :goto_c
    return-object v2

    :cond_27
    const/4 v2, 0x0

    goto :goto_c
.end method

.method private getIWlanAdapterConf(Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;)Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .locals 3
    .param p1, "conf"    # Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    .prologue
    .line 1400
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIWlanIkegroupSpinnerValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecConnection$VirtualAdapterConfigurationMethod:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1409
    sget-object v0, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    :goto_0
    return-object v0

    .line 1403
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    goto :goto_0

    .line 1405
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    goto :goto_0

    .line 1407
    :pswitch_2
    sget-object v0, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    goto :goto_0

    .line 1401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getIWlanEAPTypeValue(Ljava/util/Vector;)Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .locals 4
    .param p1, "v"    # Ljava/util/Vector;

    .prologue
    .line 1272
    const-string v1, "[IPSECADAPTER]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIWlanEAPTypeValue()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    .line 1274
    .local v0, "ikeVal":Lcom/ipsec/client/IPsecConnection$EapMethod;
    sget-object v1, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecConnection$EapMethod:[I

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecConnection$EapMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1284
    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_AKA:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    :goto_0
    return-object v1

    .line 1276
    :pswitch_0
    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto :goto_0

    .line 1278
    :pswitch_1
    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_SIM:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto :goto_0

    .line 1280
    :pswitch_2
    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_AKA:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto :goto_0

    .line 1282
    :pswitch_3
    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MSCHAPV2:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto :goto_0

    .line 1274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getIWlanEncryptType(Lcom/ipsec/client/IPsecConnection$IkeEncryption;)Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .locals 3
    .param p1, "ikeEncrptVal"    # Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .prologue
    .line 1220
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIWlanEncryptType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1251
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    :goto_0
    return-object v0

    .line 1223
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_0

    .line 1225
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_0

    .line 1227
    :pswitch_2
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_0

    .line 1229
    :pswitch_3
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_0

    .line 1231
    :pswitch_4
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_0

    .line 1233
    :pswitch_5
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_0

    .line 1235
    :pswitch_6
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_0

    .line 1237
    :pswitch_7
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_0

    .line 1239
    :pswitch_8
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_0

    .line 1241
    :pswitch_9
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_0

    .line 1243
    :pswitch_a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_0

    .line 1245
    :pswitch_b
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_0

    .line 1247
    :pswitch_c
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_0

    .line 1249
    :pswitch_d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto :goto_0

    .line 1221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private getIWlanEncryptType(Lcom/ipsec/client/IPsecConnection$IPsecEncryption;)Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .locals 3
    .param p1, "encrypt"    # Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .prologue
    .line 875
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIWlanEncryptType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 906
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    :goto_0
    return-object v0

    .line 878
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_0

    .line 880
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_0

    .line 882
    :pswitch_2
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_0

    .line 884
    :pswitch_3
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_0

    .line 886
    :pswitch_4
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_0

    .line 888
    :pswitch_5
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_0

    .line 890
    :pswitch_6
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_0

    .line 892
    :pswitch_7
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_0

    .line 894
    :pswitch_8
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_0

    .line 896
    :pswitch_9
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_0

    .line 898
    :pswitch_a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_0

    .line 900
    :pswitch_b
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_0

    .line 902
    :pswitch_c
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_0

    .line 904
    :pswitch_d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto :goto_0

    .line 876
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private getIWlanErrorFromIpsecError(Lcom/ipsec/client/IPsecError;I)Lcom/sec/epdg/IWlanError;
    .locals 5
    .param p1, "error"    # Lcom/ipsec/client/IPsecError;
    .param p2, "ikeErrorCode"    # I

    .prologue
    .line 1803
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecError:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1860
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->VENDOR_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_UNKNOWN_ERROR:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v2}, Lcom/ipsec/client/IPsecError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 1844
    :pswitch_0
    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->VENDOR_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    goto :goto_0

    .line 1848
    :pswitch_1
    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->CERTIFICATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    goto :goto_0

    .line 1851
    :pswitch_2
    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->TIMEOUT_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    goto :goto_0

    .line 1855
    :pswitch_3
    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecError;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/epdg/IWlanError$IkeError;

    invoke-static {p2}, Lcom/sec/epdg/EpdgUtils;->getIkeErrorFromCode(I)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(I)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;Lcom/sec/epdg/IWlanError$IkeError;)V

    goto :goto_0

    .line 1803
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getIWlanEventbyIPSecEvent(Lcom/ipsec/client/IPsecEvent;)I
    .locals 3
    .param p1, "event"    # Lcom/ipsec/client/IPsecEvent;

    .prologue
    const/16 v0, 0x32

    .line 1784
    sget-object v1, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecEvent:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1798
    :goto_0
    :pswitch_0
    return v0

    .line 1786
    :pswitch_1
    const/16 v0, 0x2d

    goto :goto_0

    .line 1788
    :pswitch_2
    const/16 v0, 0x30

    goto :goto_0

    .line 1790
    :pswitch_3
    const/16 v0, 0x2e

    goto :goto_0

    .line 1792
    :pswitch_4
    const/16 v0, 0x2f

    goto :goto_0

    .line 1794
    :pswitch_5
    const/16 v0, 0x31

    goto :goto_0

    .line 1784
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private getIWlanIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;I)Lcom/sec/epdg/IWlanEnum$IdentityType;
    .locals 3
    .param p1, "identity"    # Lcom/ipsec/client/IPsecConnection$IdentityType;
    .param p2, "uritype"    # I

    .prologue
    .line 783
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIWlanIdentityType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uritype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    if-nez p1, :cond_1

    .line 786
    if-nez p2, :cond_0

    .line 787
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    .line 809
    :goto_0
    return-object v0

    .line 789
    :cond_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_0

    .line 791
    :cond_1
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IdentityType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 806
    if-nez p2, :cond_2

    .line 807
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_0

    .line 793
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_0

    .line 795
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_0

    .line 797
    :pswitch_2
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_0

    .line 799
    :pswitch_3
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_0

    .line 801
    :pswitch_4
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_0

    .line 803
    :pswitch_5
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_0

    .line 809
    :cond_2
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto :goto_0

    .line 791
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getIWlanIkeIntegrityValue(Lcom/ipsec/client/IPsecConnection$IkeIntegrity;)Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .locals 3
    .param p1, "ikeIntgrVal"    # Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    .prologue
    .line 1154
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIWlanIkeIntegrityValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1177
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    :goto_0
    return-object v0

    .line 1157
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_0

    .line 1159
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_0

    .line 1161
    :pswitch_2
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_0

    .line 1163
    :pswitch_3
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_0

    .line 1165
    :pswitch_4
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_0

    .line 1167
    :pswitch_5
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_0

    .line 1169
    :pswitch_6
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_0

    .line 1171
    :pswitch_7
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_0

    .line 1173
    :pswitch_8
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_0

    .line 1175
    :pswitch_9
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto :goto_0

    .line 1155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getIWlanIkeVersionValue(Lcom/ipsec/client/IPsecConnection$IkeVersion;)Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .locals 3
    .param p1, "ikeVal"    # Lcom/ipsec/client/IPsecConnection$IkeVersion;

    .prologue
    .line 1111
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIWlanIkeVersionValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeVersion:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IkeVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1118
    sget-object v0, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_2:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    :goto_0
    return-object v0

    .line 1114
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_2:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    goto :goto_0

    .line 1116
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_1:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    goto :goto_0

    .line 1112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIWlanIkegroupValue(Lcom/ipsec/client/IPsecConnection$IkeGroup;)Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .locals 3
    .param p1, "ikegrp"    # Lcom/ipsec/client/IPsecConnection$IkeGroup;

    .prologue
    .line 1337
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIWlanIkegroupSpinnerValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IkeGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1378
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    :goto_0
    return-object v0

    .line 1340
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1342
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1344
    :pswitch_2
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1346
    :pswitch_3
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1348
    :pswitch_4
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1350
    :pswitch_5
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1352
    :pswitch_6
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1354
    :pswitch_7
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1356
    :pswitch_8
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1358
    :pswitch_9
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1360
    :pswitch_a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1362
    :pswitch_b
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1364
    :pswitch_c
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1366
    :pswitch_d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1368
    :pswitch_e
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1370
    :pswitch_f
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1372
    :pswitch_10
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1374
    :pswitch_11
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1376
    :pswitch_12
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto :goto_0

    .line 1338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private getIWlanTunnelType(Lcom/ipsec/client/IPsecConnection$TunnelMode;)Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .locals 3
    .param p1, "tunnelmode"    # Lcom/ipsec/client/IPsecConnection$TunnelMode;

    .prologue
    .line 826
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIWlanTunnelType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecConnection$TunnelMode:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$TunnelMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 833
    sget-object v0, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->IPSEC_RAC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    :goto_0
    return-object v0

    .line 829
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->IPSEC_RAC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    goto :goto_0

    .line 831
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->L2TP_OVER_IPSEC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    goto :goto_0

    .line 827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/epdg/IPSecAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    sget-object v0, Lcom/sec/epdg/IPSecAdapter;->mInstance:Lcom/sec/epdg/IPSecAdapter;

    if-nez v0, :cond_0

    .line 158
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "Creating IPSecAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/sec/epdg/IPSecAdapter;

    invoke-direct {v0, p0}, Lcom/sec/epdg/IPSecAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/epdg/IPSecAdapter;->mInstance:Lcom/sec/epdg/IPSecAdapter;

    .line 160
    sget-object v0, Lcom/sec/epdg/IPSecAdapter;->mInstance:Lcom/sec/epdg/IPSecAdapter;

    .line 164
    :goto_0
    return-object v0

    .line 163
    :cond_0
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "IPSecAdapter already exists !"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/sec/epdg/IPSecAdapter;->mInstance:Lcom/sec/epdg/IPSecAdapter;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/IPSecAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hdlr"    # Landroid/os/Handler;

    .prologue
    .line 141
    sget-object v0, Lcom/sec/epdg/IPSecAdapter;->mInstance:Lcom/sec/epdg/IPSecAdapter;

    if-nez v0, :cond_0

    .line 142
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "Creating IPSecAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/sec/epdg/IPSecAdapter;

    invoke-direct {v0, p0}, Lcom/sec/epdg/IPSecAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/epdg/IPSecAdapter;->mInstance:Lcom/sec/epdg/IPSecAdapter;

    .line 144
    sput-object p1, Lcom/sec/epdg/IPSecAdapter;->mOemHandler:Landroid/os/Handler;

    .line 145
    sget-object v0, Lcom/sec/epdg/IPSecAdapter;->mInstance:Lcom/sec/epdg/IPSecAdapter;

    .line 150
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "IPSecAdapter already exists !"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sput-object p1, Lcom/sec/epdg/IPSecAdapter;->mOemHandler:Landroid/os/Handler;

    .line 150
    sget-object v0, Lcom/sec/epdg/IPSecAdapter;->mInstance:Lcom/sec/epdg/IPSecAdapter;

    goto :goto_0
.end method

.method private getIpSecConnectionbyCid(I)Lcom/ipsec/client/IPsecConnection;
    .locals 2
    .param p1, "cid"    # I

    .prologue
    .line 230
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "getIpSecConnectionbyCid()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter;->mConnectionDb:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter;->mConnectionDb:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection;

    .line 233
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIpSeclibAdapterConf(Lcom/sec/epdg/IWlanEnum$AdapterConf;)Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;
    .locals 3
    .param p1, "conf"    # Lcom/sec/epdg/IWlanEnum$AdapterConf;

    .prologue
    .line 1384
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIWlanIkegroupSpinnerValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$sec$epdg$IWlanEnum$AdapterConf:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$AdapterConf;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1393
    sget-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    :goto_0
    return-object v0

    .line 1387
    :pswitch_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    goto :goto_0

    .line 1389
    :pswitch_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    goto :goto_0

    .line 1391
    :pswitch_2
    sget-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    goto :goto_0

    .line 1385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getIpSeclibEncryptType(Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;)Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
    .locals 3
    .param p1, "encryptVal"    # Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    .prologue
    .line 839
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpSeclibEncryptType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 870
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    :goto_0
    return-object v0

    .line 842
    :pswitch_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0

    .line 844
    :pswitch_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0

    .line 846
    :pswitch_2
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0

    .line 848
    :pswitch_3
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0

    .line 850
    :pswitch_4
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0

    .line 852
    :pswitch_5
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0

    .line 854
    :pswitch_6
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0

    .line 856
    :pswitch_7
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0

    .line 858
    :pswitch_8
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0

    .line 860
    :pswitch_9
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0

    .line 862
    :pswitch_a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0

    .line 864
    :pswitch_b
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0

    .line 866
    :pswitch_c
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0

    .line 868
    :pswitch_d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0

    .line 840
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private getIpSeclibikegrpValue(Lcom/sec/epdg/IWlanEnum$IkeDhGroup;)Lcom/ipsec/client/IPsecConnection$IkeGroup;
    .locals 3
    .param p1, "ikegrpval"    # Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    .prologue
    .line 1291
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpSeclibikegrpValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1332
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    :goto_0
    return-object v0

    .line 1294
    :pswitch_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1296
    :pswitch_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1024:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1298
    :pswitch_2
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1536:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1300
    :pswitch_3
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1302
    :pswitch_4
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_3072:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1304
    :pswitch_5
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_4096:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1306
    :pswitch_6
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_6144:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1308
    :pswitch_7
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_8192:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1310
    :pswitch_8
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1312
    :pswitch_9
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1314
    :pswitch_a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_521:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1316
    :pswitch_b
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1024_160:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1318
    :pswitch_c
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048_224:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1320
    :pswitch_d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1322
    :pswitch_e
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_192:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1324
    :pswitch_f
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_224:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1326
    :pswitch_10
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1328
    :pswitch_11
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1330
    :pswitch_12
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0

    .line 1292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private getIpSeclibintegrityType(Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;)Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
    .locals 3
    .param p1, "integrityval"    # Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .prologue
    .line 912
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpSeclibintegrityType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 943
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    :goto_0
    return-object v0

    .line 915
    :pswitch_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0

    .line 917
    :pswitch_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0

    .line 919
    :pswitch_2
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0

    .line 921
    :pswitch_3
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0

    .line 923
    :pswitch_4
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0

    .line 925
    :pswitch_5
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0

    .line 927
    :pswitch_6
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0

    .line 929
    :pswitch_7
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0

    .line 931
    :pswitch_8
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0

    .line 933
    :pswitch_9
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0

    .line 935
    :pswitch_a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0

    .line 937
    :pswitch_b
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_NULL:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0

    .line 939
    :pswitch_c
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0

    .line 941
    :pswitch_d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0

    .line 913
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private getIpsecIwlanAuthType(Lcom/ipsec/client/IPsecConnection$HostAuthentication;)Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .locals 3
    .param p1, "authtype"    # Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    .prologue
    .line 716
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpsecIwlanAuthType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecConnection$HostAuthentication:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 725
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    :goto_0
    return-object v0

    .line 719
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    goto :goto_0

    .line 721
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    goto :goto_0

    .line 723
    :pswitch_2
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    goto :goto_0

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getIpsecIwlanIpType(Lcom/ipsec/client/IPsecConnection$IPVersion;)Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .locals 3
    .param p1, "ipversion"    # Lcom/ipsec/client/IPsecConnection$IPVersion;

    .prologue
    .line 744
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpsecIwlanIpType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecConnection$IPVersion:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IPVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 753
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    :goto_0
    return-object v0

    .line 747
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto :goto_0

    .line 749
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto :goto_0

    .line 751
    :pswitch_2
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto :goto_0

    .line 745
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getIpseclibAuthVal(Lcom/sec/epdg/IWlanEnum$IPSecAuthType;)Lcom/ipsec/client/IPsecConnection$HostAuthentication;
    .locals 3
    .param p1, "authType"    # Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    .prologue
    .line 701
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpseclibAuthVal()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$sec$epdg$IWlanEnum$IPSecAuthType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 710
    sget-object v0, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->EAP:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    :goto_0
    return-object v0

    .line 704
    :pswitch_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->PRE_SHARED:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    goto :goto_0

    .line 706
    :pswitch_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->PUBLIC_KEY:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    goto :goto_0

    .line 708
    :pswitch_2
    sget-object v0, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->EAP:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getIpseclibIdentityType(Lcom/sec/epdg/IWlanEnum$IdentityType;I)Lcom/ipsec/client/IPsecConnection$IdentityType;
    .locals 3
    .param p1, "identityType"    # Lcom/sec/epdg/IWlanEnum$IdentityType;
    .param p2, "uritype"    # I

    .prologue
    .line 759
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpseclibIdentityType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uritype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IdentityType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 774
    if-nez p2, :cond_0

    .line 775
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->USER_FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 777
    :goto_0
    return-object v0

    .line 762
    :pswitch_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_0

    .line 764
    :pswitch_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV6_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_0

    .line 766
    :pswitch_2
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_0

    .line 768
    :pswitch_3
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->USER_FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_0

    .line 770
    :pswitch_4
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->DN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_0

    .line 772
    :pswitch_5
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->KEY_ID:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_0

    .line 777
    :cond_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_0

    .line 760
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getIpseclibIkeEncryptType(Lcom/sec/epdg/IWlanEnum$IkeEncryption;)Lcom/ipsec/client/IPsecConnection$IkeEncryption;
    .locals 3
    .param p1, "encryptval"    # Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    .prologue
    .line 1183
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpseclibIkeEncryptType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1214
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    :goto_0
    return-object v0

    .line 1186
    :pswitch_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0

    .line 1188
    :pswitch_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0

    .line 1190
    :pswitch_2
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0

    .line 1192
    :pswitch_3
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0

    .line 1194
    :pswitch_4
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0

    .line 1196
    :pswitch_5
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0

    .line 1198
    :pswitch_6
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0

    .line 1200
    :pswitch_7
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0

    .line 1202
    :pswitch_8
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0

    .line 1204
    :pswitch_9
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0

    .line 1206
    :pswitch_a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0

    .line 1208
    :pswitch_b
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0

    .line 1210
    :pswitch_c
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0

    .line 1212
    :pswitch_d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0

    .line 1184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private getIpseclibIkeVersionValue(Lcom/sec/epdg/IWlanEnum$Ikeversion;)Lcom/ipsec/client/IPsecConnection$IkeVersion;
    .locals 3
    .param p1, "version"    # Lcom/sec/epdg/IWlanEnum$Ikeversion;

    .prologue
    .line 1099
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpseclibIkeVersionValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$sec$epdg$IWlanEnum$Ikeversion:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$Ikeversion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1106
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeVersion;->IKE_VERSION_2:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    :goto_0
    return-object v0

    .line 1102
    :pswitch_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeVersion;->IKE_VERSION_1:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    goto :goto_0

    .line 1104
    :pswitch_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeVersion;->IKE_VERSION_2:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    goto :goto_0

    .line 1100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIpseclibIkeintegrityValue(Lcom/sec/epdg/IWlanEnum$IkeIntegrity;)Lcom/ipsec/client/IPsecConnection$IkeIntegrity;
    .locals 3
    .param p1, "ikeInegrity"    # Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    .prologue
    .line 1125
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpseclibIkeintegrityValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1148
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    :goto_0
    return-object v0

    .line 1128
    :pswitch_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_0

    .line 1130
    :pswitch_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_0

    .line 1132
    :pswitch_2
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_0

    .line 1134
    :pswitch_3
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_0

    .line 1136
    :pswitch_4
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_0

    .line 1138
    :pswitch_5
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_0

    .line 1140
    :pswitch_6
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_0

    .line 1142
    :pswitch_7
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_0

    .line 1144
    :pswitch_8
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_0

    .line 1146
    :pswitch_9
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_0

    .line 1126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getIpseclibIpTypeVal(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)Lcom/ipsec/client/IPsecConnection$IPVersion;
    .locals 3
    .param p1, "version"    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .prologue
    .line 730
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpseclibIpTypeVal()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$sec$epdg$IWlanEnum$IPSecIpType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 739
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    :goto_0
    return-object v0

    .line 733
    :pswitch_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    goto :goto_0

    .line 735
    :pswitch_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    goto :goto_0

    .line 737
    :pswitch_2
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    goto :goto_0

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getIpseclibLifeType(Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;)Lcom/ipsec/client/IPsecConnection$IPsecLifeType;
    .locals 3
    .param p1, "lifetimetype"    # Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    .prologue
    .line 1074
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpseclibLifeType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecLifeTimeType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1081
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    :goto_0
    return-object v0

    .line 1077
    :pswitch_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    goto :goto_0

    .line 1079
    :pswitch_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    goto :goto_0

    .line 1075
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIpseclibTunnelMode(Lcom/sec/epdg/IWlanEnum$TunnelModeType;)Lcom/ipsec/client/IPsecConnection$TunnelMode;
    .locals 3
    .param p1, "tunnelMode"    # Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    .prologue
    .line 814
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpseclibTunnelMode()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$sec$epdg$IWlanEnum$TunnelModeType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 821
    sget-object v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;->IPSEC_RAC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    :goto_0
    return-object v0

    .line 817
    :pswitch_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;->IPSEC_RAC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    goto :goto_0

    .line 819
    :pswitch_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;->L2TP_OVER_IPSEC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    goto :goto_0

    .line 815
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIpseclibValue(Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;)Lcom/ipsec/client/IPsecConnection$IPsecGroup;
    .locals 3
    .param p1, "group"    # Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    .prologue
    .line 985
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpseclibValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1024
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    :goto_0
    return-object v0

    .line 988
    :pswitch_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 990
    :pswitch_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_1024:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 992
    :pswitch_2
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_1536:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 994
    :pswitch_3
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_2048:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 996
    :pswitch_4
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_3072:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 998
    :pswitch_5
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_4096:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 1000
    :pswitch_6
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_6144:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 1002
    :pswitch_7
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_8192:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 1004
    :pswitch_8
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 1006
    :pswitch_9
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 1008
    :pswitch_a
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_521:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 1010
    :pswitch_b
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 1012
    :pswitch_c
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 1014
    :pswitch_d
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 1016
    :pswitch_e
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_192:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 1018
    :pswitch_f
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 1020
    :pswitch_10
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 1022
    :pswitch_11
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0

    .line 986
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private getIwlanIpsecLifeType(Lcom/ipsec/client/IPsecConnection$IPsecLifeType;)Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .locals 3
    .param p1, "ipseclifetype"    # Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    .prologue
    .line 1087
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIwlanIpsecLifeType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecLifeType:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1094
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    :goto_0
    return-object v0

    .line 1090
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    goto :goto_0

    .line 1092
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    goto :goto_0

    .line 1088
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIwlanintegrityType(Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;)Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .locals 3
    .param p1, "integrityval"    # Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .prologue
    .line 949
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIwlanintegrityType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 980
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    :goto_0
    return-object v0

    .line 952
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_0

    .line 954
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_0

    .line 956
    :pswitch_2
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_0

    .line 958
    :pswitch_3
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_0

    .line 960
    :pswitch_4
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_0

    .line 962
    :pswitch_5
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_0

    .line 964
    :pswitch_6
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_0

    .line 966
    :pswitch_7
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_0

    .line 968
    :pswitch_8
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_0

    .line 970
    :pswitch_9
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_0

    .line 972
    :pswitch_a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_0

    .line 974
    :pswitch_b
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_0

    .line 976
    :pswitch_c
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_0

    .line 978
    :pswitch_d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto :goto_0

    .line 950
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private getIwlanipsecgroup(Lcom/ipsec/client/IPsecConnection$IPsecGroup;)Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .locals 3
    .param p1, "integrityval"    # Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .prologue
    .line 1029
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIwlanipsecgroup()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1068
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    :goto_0
    return-object v0

    .line 1032
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1034
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1036
    :pswitch_2
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1038
    :pswitch_3
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1040
    :pswitch_4
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1042
    :pswitch_5
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1044
    :pswitch_6
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1046
    :pswitch_7
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1048
    :pswitch_8
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1050
    :pswitch_9
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1052
    :pswitch_a
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1054
    :pswitch_b
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1056
    :pswitch_c
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1058
    :pswitch_d
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1060
    :pswitch_e
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1062
    :pswitch_f
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1064
    :pswitch_10
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1066
    :pswitch_11
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto :goto_0

    .line 1030
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private initIpSecClient(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "Initalizing IPSec Library"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {p1}, Lcom/ipsec/client/IPsecClient;->getInstance(Landroid/content/Context;)Lcom/ipsec/client/IPsecClient;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/IPSecAdapter;->mIPsecClient:Lcom/ipsec/client/IPsecClient;

    .line 211
    sget-object v0, Lcom/sec/epdg/IPSecAdapter;->mIPsecClient:Lcom/ipsec/client/IPsecClient;

    invoke-virtual {v0, p0}, Lcom/ipsec/client/IPsecClient;->setServiceListener(Lcom/ipsec/client/IIPsecListener;)V

    .line 212
    invoke-static {}, Lcom/sec/epdg/IPSecAdapter;->startService()V

    .line 214
    return-void
.end method

.method private mapIwlanSettingToIPsecConnection(Lcom/sec/epdg/IWlanApnSetting;Ljava/lang/String;Ljava/lang/String;I)Lcom/ipsec/client/IPsecConnection;
    .locals 25
    .param p1, "iwlanSetting"    # Lcom/sec/epdg/IWlanApnSetting;
    .param p2, "ipv4HandoverAddr"    # Ljava/lang/String;
    .param p3, "ipv6HandoverAddr"    # Ljava/lang/String;
    .param p4, "cid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 245
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "mapIwlanSettingToIPsecConnection()"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/16 v16, 0x0

    .line 247
    .local v16, "inetAddress":Ljava/net/InetAddress;
    new-instance v6, Lcom/ipsec/client/IPsecConnection;

    invoke-direct {v6}, Lcom/ipsec/client/IPsecConnection;-><init>()V

    .line 248
    .local v6, "connection":Lcom/ipsec/client/IPsecConnection;
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/EpdgServerSelection;->getEpdgServerIp()Ljava/net/InetAddress;

    move-result-object v16

    .line 249
    const/4 v11, 0x0

    .line 251
    .local v11, "hostAddress":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setName(Ljava/lang/String;)V

    .line 252
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getEpdgInterfacePrefix()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, p4, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setVirtualAdapterName(Ljava/lang/String;)V

    .line 255
    if-nez v16, :cond_0

    .line 256
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Error, wifi is connected still epdg server ip is null, returning null"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v6, 0x0

    .line 478
    .end local v6    # "connection":Lcom/ipsec/client/IPsecConnection;
    :goto_0
    return-object v6

    .line 260
    .restart local v6    # "connection":Lcom/ipsec/client/IPsecConnection;
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    .line 261
    const/16 v21, 0x0

    const-string v22, "[IPSECADAPTER]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "epdg fqdn is already resolved, setting gateway, epdg ip is: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 264
    if-eqz v11, :cond_9

    invoke-static {v11}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    invoke-static {v11}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 266
    :cond_1
    invoke-virtual {v6, v11}, Lcom/ipsec/client/IPsecConnection;->setGateway(Ljava/lang/String;)V

    .line 271
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setUserAuthentication(Z)V

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpSecIpType()Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->getIpseclibIpTypeVal(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setSubnetType(Lcom/ipsec/client/IPsecConnection$IPVersion;)V

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmOwnUriType()Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IPSecAdapter;->getIpseclibIdentityType(Lcom/sec/epdg/IWlanEnum$IdentityType;I)Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/IPSecAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/ipsec/client/IPsecConnection;->setOwnIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "internal"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 284
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Set Testing type to Inside Secure"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget v21, Lcom/sec/epdg/IPSecAdapter;->INSIDE_SECURE:I

    sput v21, Lcom/sec/epdg/IPSecAdapter;->TESTING_TYPE:I

    .line 294
    :goto_1
    sget v21, Lcom/sec/epdg/IPSecAdapter;->TESTING_TYPE:I

    sget v22, Lcom/sec/epdg/IPSecAdapter;->CISCO_TESTING:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmRemoteUriType()Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IPSecAdapter;->getIpseclibIdentityType(Lcom/sec/epdg/IWlanEnum$IdentityType;I)Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/ipsec/client/IPsecConnection;->setRemoteIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/IPSecAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setUsername(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeEapType()Lcom/sec/epdg/IWlanEnum$IkeEapType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->setIkeEAPTypeValue(Lcom/sec/epdg/IWlanEnum$IkeEapType;)Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setEapMethod(Lcom/ipsec/client/IPsecConnection$EapMethod;)V

    .line 303
    :cond_2
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "PFS for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "is: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmPfsval()Lcom/sec/epdg/IWlanEnum$PfsState;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmPfsval()Lcom/sec/epdg/IWlanEnum$PfsState;

    move-result-object v21

    sget-object v22, Lcom/sec/epdg/IWlanEnum$PfsState;->ENABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 306
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setPerfectForwardSecrecy(Z)V

    .line 310
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpSecauthType()Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->getIpseclibAuthVal(Lcom/sec/epdg/IWlanEnum$IPSecAuthType;)Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setHostAuthentication(Lcom/ipsec/client/IPsecConnection$HostAuthentication;)V

    .line 313
    sget v21, Lcom/sec/epdg/IPSecAdapter;->TESTING_TYPE:I

    sget v22, Lcom/sec/epdg/IPSecAdapter;->INSIDE_SECURE:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/IPSecAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "self@ipsec.com"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 316
    const-string v21, "batikgeologic"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setPreSharedKey(Ljava/lang/String;)V

    .line 328
    :cond_4
    :goto_3
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setGlobalDnsConfiguration(Z)V

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmTunnelMode()Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->getIpseclibTunnelMode(Lcom/sec/epdg/IWlanEnum$TunnelModeType;)Lcom/ipsec/client/IPsecConnection$TunnelMode;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setTunnelMode(Lcom/ipsec/client/IPsecConnection$TunnelMode;)V

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecEncryptionType()Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->getIpSeclibEncryptType(Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;)Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIPsecEncryption(Lcom/ipsec/client/IPsecConnection$IPsecEncryption;)V

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecIntegrityType()Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->getIpSeclibintegrityType(Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;)Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIPsecIntegrity(Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;)V

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecDHGroup()Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->getIpseclibValue(Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;)Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIPsecGroup(Lcom/ipsec/client/IPsecConnection$IPsecGroup;)V

    .line 343
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIPsecAntiReplay(Z)V

    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecLifeTimeType()Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->getIpseclibLifeType(Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;)Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecLifeval()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/ipsec/client/IPsecConnection;->setIPsecLife(Lcom/ipsec/client/IPsecConnection$IPsecLifeType;I)V

    .line 348
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUsingCaCertificate()Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 349
    const/4 v4, 0x0

    .line 350
    .local v4, "caCert":Ljava/security/cert/X509Certificate;
    const/16 v17, 0x0

    .line 351
    .local v17, "input":Ljava/io/FileInputStream;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->caCertificatePath()Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "ca":Ljava/lang/String;
    :try_start_0
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .end local v17    # "input":Ljava/io/FileInputStream;
    .local v18, "input":Ljava/io/FileInputStream;
    :try_start_1
    const-string v21, "X.509"

    invoke-static/range {v21 .. v21}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 355
    .local v5, "cf":Ljava/security/cert/CertificateFactory;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    .line 356
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Success to generate CA"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    if-eqz v18, :cond_5

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    move-object/from16 v17, v18

    .line 369
    .end local v5    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v18    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    .line 370
    :try_start_3
    invoke-virtual {v6, v4}, Lcom/ipsec/client/IPsecConnection;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    .line 371
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Success to setCaCertificate"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_6

    .line 381
    .end local v3    # "ca":Ljava/lang/String;
    .end local v4    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v17    # "input":Ljava/io/FileInputStream;
    :cond_7
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeversion()Lcom/sec/epdg/IWlanEnum$Ikeversion;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->getIpseclibIkeVersionValue(Lcom/sec/epdg/IWlanEnum$Ikeversion;)Lcom/ipsec/client/IPsecConnection$IkeVersion;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIkeVersion(Lcom/ipsec/client/IPsecConnection$IkeVersion;)V

    .line 384
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeIntergrity()Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->getIpseclibIkeintegrityValue(Lcom/sec/epdg/IWlanEnum$IkeIntegrity;)Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIkeIntegrity(Lcom/ipsec/client/IPsecConnection$IkeIntegrity;)V

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeEncryptType()Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->getIpseclibIkeEncryptType(Lcom/sec/epdg/IWlanEnum$IkeEncryption;)Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIkeEncryption(Lcom/ipsec/client/IPsecConnection$IkeEncryption;)V

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeDhGroup()Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->getIpSeclibikegrpValue(Lcom/sec/epdg/IWlanEnum$IkeDhGroup;)Lcom/ipsec/client/IPsecConnection$IkeGroup;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setGroup(Lcom/ipsec/client/IPsecConnection$IkeGroup;)V

    .line 393
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeLife()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIkeLife(I)V

    .line 394
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeWindowSize()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setIkeWindowSize(I)V

    .line 397
    sget v21, Lcom/sec/epdg/IPSecAdapter;->TESTING_TYPE:I

    sget v22, Lcom/sec/epdg/IPSecAdapter;->SETCOM_TESTING:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/IPSecAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setUsername(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeEapType()Lcom/sec/epdg/IWlanEnum$IkeEapType;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->setIkeEAPTypeValue(Lcom/sec/epdg/IWlanEnum$IkeEapType;)Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setEapMethod(Lcom/ipsec/client/IPsecConnection$EapMethod;)V

    .line 401
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmRemoteUriType()Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IPSecAdapter;->getIpseclibIdentityType(Lcom/sec/epdg/IWlanEnum$IdentityType;I)Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/ipsec/client/IPsecConnection;->setRemoteIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)V

    .line 406
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeConnectionTimeOut()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setConnectTimeout(I)V

    .line 409
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeDpdTimeOut()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setDpdTimeout(I)V

    .line 411
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeNatValue()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setNattKeepaliveTimeout(I)V

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIkeVirtualAdapterConf()Lcom/sec/epdg/IWlanEnum$AdapterConf;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->getIpSeclibAdapterConf(Lcom/sec/epdg/IWlanEnum$AdapterConf;)Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setVirtualAdapterConfiguration(Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;)V

    .line 419
    const/16 v21, 0x0

    const-string v22, "[IPSECADAPTER]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "HandOverL2W Requesting ipv4:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "ipv6:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 424
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/sec/epdg/IPSecAdapter;->IPV6PREFIX:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 425
    .local v19, "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setRequestedRacIPv4Address(Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setRequestedRacIPv6Address(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getPcscfattributes()Lcom/sec/epdg/IWlanEnum$PcscfConf;

    move-result-object v20

    .line 430
    .local v20, "pcscfattribute":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    sget-object v21, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_12

    .line 431
    sget-object v21, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 432
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Vendor Attribute is set to PCSCF_CONF_V4"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v21, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv4VendorAttr()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->addRequestIkeCfgAttribute(Lcom/ipsec/client/IPsecIkeCfgAttribute;)V

    .line 449
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getImeiVendorAttrVal()Lcom/sec/epdg/IWlanEnum$Imei;

    move-result-object v14

    .line 450
    .local v14, "imeiVendorAttrVal":Lcom/sec/epdg/IWlanEnum$Imei;
    sget-object v21, Lcom/sec/epdg/IWlanEnum$Imei;->DEVICE_IMEI:Lcom/sec/epdg/IWlanEnum$Imei;

    move-object/from16 v0, v21

    if-ne v0, v14, :cond_16

    .line 451
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Adding IMEI vendor attribute to IKE connection"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getImeiVendorAttributeType()I

    move-result v13

    .line 453
    .local v13, "imeiVendorAttrType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/IPSecAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/epdg/EpdgUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 454
    .local v15, "imeiVendorAttrValue":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 455
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Adding IMEI Error"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 268
    .end local v13    # "imeiVendorAttrType":I
    .end local v14    # "imeiVendorAttrVal":Lcom/sec/epdg/IWlanEnum$Imei;
    .end local v15    # "imeiVendorAttrValue":Ljava/lang/String;
    .end local v19    # "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    .end local v20    # "pcscfattribute":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    :cond_9
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Error, wifi is connected still epdg server ip is not valid, returning null"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 286
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "setcom"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 287
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Set Testing type to setcom"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget v21, Lcom/sec/epdg/IPSecAdapter;->SETCOM_TESTING:I

    sput v21, Lcom/sec/epdg/IPSecAdapter;->TESTING_TYPE:I

    goto/16 :goto_1

    .line 290
    :cond_b
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Set Testing type to cisco"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget v21, Lcom/sec/epdg/IPSecAdapter;->CISCO_TESTING:I

    sput v21, Lcom/sec/epdg/IPSecAdapter;->TESTING_TYPE:I

    goto/16 :goto_1

    .line 307
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmPfsval()Lcom/sec/epdg/IWlanEnum$PfsState;

    move-result-object v21

    sget-object v22, Lcom/sec/epdg/IWlanEnum$PfsState;->DISABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 308
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setPerfectForwardSecrecy(Z)V

    goto/16 :goto_2

    .line 318
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/IPSecAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "south@ipsec.com"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 320
    const-string v21, "hostelrybumped"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setPreSharedKey(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 321
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/IPSecAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "councilors@ipsec.com"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 323
    const-string v21, "harrowedregularizes"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setPreSharedKey(Ljava/lang/String;)V

    .line 324
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->getIpseclibIpTypeVal(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setSubnetType(Lcom/ipsec/client/IPsecConnection$IPVersion;)V

    goto/16 :goto_3

    .line 364
    .restart local v3    # "ca":Ljava/lang/String;
    .restart local v4    # "caCert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v18    # "input":Ljava/io/FileInputStream;
    :catch_0
    move-exception v10

    .line 365
    .local v10, "eio":Ljava/io/IOException;
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v18

    .line 367
    .end local v18    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 357
    .end local v5    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v10    # "eio":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 358
    .local v7, "e":Ljava/security/cert/CertificateException;
    :goto_7
    :try_start_4
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mapIwlanSettingToIPsecConnection(): CertificateException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 363
    if-eqz v17, :cond_6

    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_4

    .line 364
    :catch_2
    move-exception v10

    .line 365
    .restart local v10    # "eio":Ljava/io/IOException;
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 359
    .end local v7    # "e":Ljava/security/cert/CertificateException;
    .end local v10    # "eio":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 360
    .local v9, "e2":Ljava/io/IOException;
    :goto_8
    :try_start_6
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 363
    if-eqz v17, :cond_6

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_4

    .line 364
    :catch_4
    move-exception v10

    .line 365
    .restart local v10    # "eio":Ljava/io/IOException;
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 362
    .end local v9    # "e2":Ljava/io/IOException;
    .end local v10    # "eio":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    .line 363
    :goto_9
    if-eqz v17, :cond_f

    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 366
    :cond_f
    :goto_a
    throw v21

    .line 364
    :catch_5
    move-exception v10

    .line 365
    .restart local v10    # "eio":Ljava/io/IOException;
    const-string v22, "[IPSECADAPTER]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 373
    .end local v10    # "eio":Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 374
    .local v8, "e1":Ljava/security/cert/CertificateEncodingException;
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mapIwlanSettingToIPsecConnection(): CertificateEncodingException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 435
    .end local v3    # "ca":Ljava/lang/String;
    .end local v4    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v8    # "e1":Ljava/security/cert/CertificateEncodingException;
    .end local v17    # "input":Ljava/io/FileInputStream;
    .restart local v19    # "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    .restart local v20    # "pcscfattribute":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    :cond_10
    sget-object v21, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 436
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Vendor Attribute is set to PCSCF_CONF_V6"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v21, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv6VendorAttr()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->addRequestIkeCfgAttribute(Lcom/ipsec/client/IPsecIkeCfgAttribute;)V

    goto/16 :goto_6

    .line 440
    :cond_11
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Vendor Attribute is set to PCSCF_CONF_V4_V6"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    new-instance v21, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv4VendorAttr()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->addRequestIkeCfgAttribute(Lcom/ipsec/client/IPsecIkeCfgAttribute;)V

    .line 443
    new-instance v21, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv6VendorAttr()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->addRequestIkeCfgAttribute(Lcom/ipsec/client/IPsecIkeCfgAttribute;)V

    goto/16 :goto_6

    .line 447
    :cond_12
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Vendor Attribute is set to PCSCF-NONE"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 458
    .restart local v13    # "imeiVendorAttrType":I
    .restart local v14    # "imeiVendorAttrVal":Lcom/sec/epdg/IWlanEnum$Imei;
    .restart local v15    # "imeiVendorAttrValue":Ljava/lang/String;
    :cond_13
    new-instance v21, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v13, v1}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I[B)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->addRequestIkeCfgAttribute(Lcom/ipsec/client/IPsecIkeCfgAttribute;)V

    .line 459
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IMEI VendorAttributeType:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "IMEI VendorAttributeValue:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v23

    if-eqz v23, :cond_14

    const-string v15, "Suppressed"

    .end local v15    # "imeiVendorAttrValue":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .end local v13    # "imeiVendorAttrType":I
    :goto_b
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IWLAN_NETWORK_INTERFACE is: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    new-instance v12, Lcom/ipsec/client/IPsecNetworkInterface;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Lcom/ipsec/client/IPsecNetworkInterface;-><init>(Ljava/lang/String;)V

    .line 469
    .local v12, "iface":Lcom/ipsec/client/IPsecNetworkInterface;
    const-string v21, "[IPSECADAPTER]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MOBIKE for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "is: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/IWlanEnum$Mobike;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/IWlanEnum$Mobike;

    move-result-object v21

    sget-object v22, Lcom/sec/epdg/IWlanEnum$Mobike;->ENABLED:Lcom/sec/epdg/IWlanEnum$Mobike;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 472
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setMobike(Z)V

    .line 476
    :cond_15
    :goto_c
    invoke-virtual {v6, v12}, Lcom/ipsec/client/IPsecConnection;->addInterface(Lcom/ipsec/client/IPsecNetworkInterface;)V

    goto/16 :goto_0

    .line 462
    .end local v12    # "iface":Lcom/ipsec/client/IPsecNetworkInterface;
    :cond_16
    const-string v21, "[IPSECADAPTER]"

    const-string v22, "Skipping IMEI vendor attribute in IKE connection"

    invoke-static/range {v21 .. v22}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 473
    .restart local v12    # "iface":Lcom/ipsec/client/IPsecNetworkInterface;
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/IWlanEnum$Mobike;

    move-result-object v21

    sget-object v22, Lcom/sec/epdg/IWlanEnum$Mobike;->DISABLED:Lcom/sec/epdg/IWlanEnum$Mobike;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 474
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/ipsec/client/IPsecConnection;->setMobike(Z)V

    goto :goto_c

    .line 362
    .end local v12    # "iface":Lcom/ipsec/client/IPsecNetworkInterface;
    .end local v14    # "imeiVendorAttrVal":Lcom/sec/epdg/IWlanEnum$Imei;
    .end local v19    # "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    .end local v20    # "pcscfattribute":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .restart local v3    # "ca":Ljava/lang/String;
    .restart local v4    # "caCert":Ljava/security/cert/X509Certificate;
    .restart local v18    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v21

    move-object/from16 v17, v18

    .end local v18    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 359
    .end local v17    # "input":Ljava/io/FileInputStream;
    .restart local v18    # "input":Ljava/io/FileInputStream;
    :catch_7
    move-exception v9

    move-object/from16 v17, v18

    .end local v18    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 357
    .end local v17    # "input":Ljava/io/FileInputStream;
    .restart local v18    # "input":Ljava/io/FileInputStream;
    :catch_8
    move-exception v7

    move-object/from16 v17, v18

    .end local v18    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_7
.end method

.method private onCheckConnectionRequestRecv(II)V
    .locals 4
    .param p1, "cid"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 664
    iget-boolean v1, p0, Lcom/sec/epdg/IPSecAdapter;->mbStarted:Z

    if-nez v1, :cond_0

    .line 665
    const-string v1, "[IPSECADAPTER]"

    const-string v2, "IPSecService is not connected yet"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter;->getIpSecConnectionbyCid(I)Lcom/ipsec/client/IPsecConnection;

    move-result-object v0

    .line 670
    .local v0, "conn":Lcom/ipsec/client/IPsecConnection;
    if-eqz v0, :cond_2

    .line 671
    const-string v1, "[IPSECADAPTER]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkConnection cid ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) - timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapter;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapter;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 673
    const-string v1, "[IPSECADAPTER]"

    const-string v2, "checkConnection wake lock"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapter;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 676
    :cond_1
    sget-object v1, Lcom/sec/epdg/IPSecAdapter;->mIPsecClient:Lcom/ipsec/client/IPsecClient;

    invoke-virtual {v1, v0, p2}, Lcom/ipsec/client/IPsecClient;->checkConnection(Lcom/ipsec/client/IPsecConnection;I)Lcom/ipsec/client/IPsecError;

    goto :goto_0

    .line 678
    :cond_2
    const-string v1, "[IPSECADAPTER]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkConnection: Error Cannot find ipsec conn obj : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onConnectRequestRecv(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;I)V
    .locals 13
    .param p1, "info"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    .param p2, "cid"    # I

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x32

    const/4 v10, -0x1

    .line 483
    const-string v7, "[IPSECADAPTER]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "connect(): cid - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v2, 0x0

    .line 485
    .local v2, "ipsecconn":Lcom/ipsec/client/IPsecConnection;
    # invokes: Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->getIWlanSettingInfo()Lcom/sec/epdg/IWlanApnSetting;
    invoke-static {p1}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->access$400(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v3

    .line 487
    .local v3, "iwlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    iget-boolean v7, p0, Lcom/sec/epdg/IPSecAdapter;->mbStarted:Z

    if-nez v7, :cond_0

    .line 488
    const-string v7, "[IPSECADAPTER]"

    const-string v8, "IPsecservice not started"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    sget-object v7, Lcom/sec/epdg/IPSecAdapter;->mOemHandler:Landroid/os/Handler;

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 490
    .local v5, "msg":Landroid/os/Message;
    iput v11, v5, Landroid/os/Message;->what:I

    .line 491
    iput p2, v5, Landroid/os/Message;->arg1:I

    .line 492
    new-instance v7, Lcom/sec/epdg/IWlanConnectResult;

    sget-object v8, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v8, v10}, Lcom/sec/epdg/IPSecAdapter;->getIWlanErrorFromIpsecError(Lcom/ipsec/client/IPsecError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v8

    invoke-direct {v7, p2, v12, v8}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 494
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 545
    :goto_0
    return-void

    .line 499
    .end local v5    # "msg":Landroid/os/Message;
    :cond_0
    :try_start_0
    # invokes: Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->getHandoverIpv4Addr()Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->access$500(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->getHandoverIpv6Addr()Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->access$600(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v7, v8, p2}, Lcom/sec/epdg/IPSecAdapter;->mapIwlanSettingToIPsecConnection(Lcom/sec/epdg/IWlanApnSetting;Ljava/lang/String;Ljava/lang/String;I)Lcom/ipsec/client/IPsecConnection;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 505
    :goto_1
    if-nez v2, :cond_1

    .line 506
    const-string v7, "[IPSECADAPTER]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConnectRequestRecv(): ipsecconn is null, so posting ERROR event for cid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object v7, Lcom/sec/epdg/IPSecAdapter;->mOemHandler:Landroid/os/Handler;

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 509
    .restart local v5    # "msg":Landroid/os/Message;
    iput v11, v5, Landroid/os/Message;->what:I

    .line 510
    iput p2, v5, Landroid/os/Message;->arg1:I

    .line 511
    new-instance v7, Lcom/sec/epdg/IWlanConnectResult;

    sget-object v8, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v8, v10}, Lcom/sec/epdg/IPSecAdapter;->getIWlanErrorFromIpsecError(Lcom/ipsec/client/IPsecError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v8

    invoke-direct {v7, p2, v12, v8}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 513
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 501
    .end local v5    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 502
    .local v1, "e":Ljava/text/ParseException;
    const-string v7, "[IPSECADAPTER]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConnectRequestRecv(): ParseException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 516
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_1
    new-instance v0, Lcom/ipsec/client/IPsecEventData;

    invoke-direct {v0}, Lcom/ipsec/client/IPsecEventData;-><init>()V

    .line 517
    .local v0, "data":Lcom/ipsec/client/IPsecEventData;
    sget-object v7, Lcom/sec/epdg/IPSecAdapter;->mIPsecClient:Lcom/ipsec/client/IPsecClient;

    invoke-virtual {v7, v2, v0}, Lcom/ipsec/client/IPsecClient;->connect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;)Lcom/ipsec/client/IPsecError;

    move-result-object v6

    .line 519
    .local v6, "result":Lcom/ipsec/client/IPsecError;
    sget-object v7, Lcom/sec/epdg/IPSecAdapter;->mOemHandler:Landroid/os/Handler;

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 520
    .restart local v5    # "msg":Landroid/os/Message;
    iput p2, v5, Landroid/os/Message;->arg1:I

    .line 521
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v6, v7, :cond_2

    .line 522
    invoke-direct {p0, p2, v2}, Lcom/sec/epdg/IPSecAdapter;->addIPsecConnectionDb(ILcom/ipsec/client/IPsecConnection;)V

    .line 523
    invoke-direct {p0, p2}, Lcom/sec/epdg/IPSecAdapter;->getConnectionInformation(I)Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    move-result-object v4

    .line 524
    .local v4, "lp":Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 525
    const/16 v7, 0x2d

    iput v7, v5, Landroid/os/Message;->what:I

    .line 539
    .end local v4    # "lp":Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    :goto_2
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 541
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTelstra()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 542
    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getEvent()Lcom/ipsec/client/IPsecEvent;

    move-result-object v7

    invoke-direct {p0, v7, v0}, Lcom/sec/epdg/IPSecAdapter;->showToastOnIPsecSetupFail(Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V

    goto/16 :goto_0

    .line 527
    :cond_2
    const-string v7, "[IPSECADAPTER]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event received: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getEvent()Lcom/ipsec/client/IPsecEvent;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getEvent()Lcom/ipsec/client/IPsecEvent;

    move-result-object v7

    if-nez v7, :cond_3

    .line 529
    iput v11, v5, Landroid/os/Message;->what:I

    .line 530
    new-instance v7, Lcom/sec/epdg/IWlanConnectResult;

    invoke-direct {p0, v6, v10}, Lcom/sec/epdg/IPSecAdapter;->getIWlanErrorFromIpsecError(Lcom/ipsec/client/IPsecError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v8

    invoke-direct {v7, p2, v12, v8}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    .line 533
    :cond_3
    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getEvent()Lcom/ipsec/client/IPsecEvent;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/epdg/IPSecAdapter;->getIWlanEventbyIPSecEvent(Lcom/ipsec/client/IPsecEvent;)I

    move-result v7

    iput v7, v5, Landroid/os/Message;->what:I

    .line 534
    new-instance v7, Lcom/sec/epdg/IWlanConnectResult;

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getConnection()Lcom/ipsec/client/IPsecConnection;

    move-result-object v8

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getIPsecError()Lcom/ipsec/client/IPsecError;

    move-result-object v9

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getIkeErrorValue()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/sec/epdg/IPSecAdapter;->getIWlanErrorFromIpsecError(Lcom/ipsec/client/IPsecError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v9

    invoke-direct {v7, p2, v8, v9}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    .line 544
    :cond_4
    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getEvent()Lcom/ipsec/client/IPsecEvent;

    move-result-object v7

    invoke-direct {p0, v7, v0}, Lcom/sec/epdg/IPSecAdapter;->showToastOnConnectionStatusChanged(Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V

    goto/16 :goto_0
.end method

.method private onDisconnectRequestRecv(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    .line 642
    iget-boolean v2, p0, Lcom/sec/epdg/IPSecAdapter;->mbStarted:Z

    if-nez v2, :cond_0

    .line 643
    const-string v2, "[IPSECADAPTER]"

    const-string v3, "IPSecService is not connected yet"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    sget-object v2, Lcom/sec/epdg/IPSecAdapter;->mOemHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 645
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v1, Landroid/os/Message;->what:I

    .line 646
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 647
    new-instance v2, Lcom/sec/epdg/IWlanConnectResult;

    const/4 v3, 0x0

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/sec/epdg/IPSecAdapter;->getIWlanErrorFromIpsecError(Lcom/ipsec/client/IPsecError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 649
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 661
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter;->getIpSecConnectionbyCid(I)Lcom/ipsec/client/IPsecConnection;

    move-result-object v0

    .line 654
    .local v0, "conn":Lcom/ipsec/client/IPsecConnection;
    if-eqz v0, :cond_1

    .line 656
    sget-object v2, Lcom/sec/epdg/IPSecAdapter;->mIPsecClient:Lcom/ipsec/client/IPsecClient;

    invoke-virtual {v2, v0}, Lcom/ipsec/client/IPsecClient;->disconnect(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecError;

    goto :goto_0

    .line 658
    :cond_1
    const-string v2, "[IPSECADAPTER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect: Error Cannot find ipsec conn obj : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onIpSecAdapterConnectionStatusChanged(Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;)V
    .locals 8
    .param p1, "eventInfo"    # Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;

    .prologue
    .line 1867
    iget-object v2, p1, Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;->event:Lcom/ipsec/client/IPsecEvent;

    .line 1868
    .local v2, "event":Lcom/ipsec/client/IPsecEvent;
    iget-object v1, p1, Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;->data:Lcom/ipsec/client/IPsecEventData;

    .line 1869
    .local v1, "data":Lcom/ipsec/client/IPsecEventData;
    const-string v4, "[IPSECADAPTER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onIpSecAdapterConnectionStatusChanged received :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    invoke-virtual {v1}, Lcom/ipsec/client/IPsecEventData;->getConnection()Lcom/ipsec/client/IPsecConnection;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/epdg/IPSecAdapter;->getCidfromConnDb(Lcom/ipsec/client/IPsecConnection;)I

    move-result v0

    .line 1872
    .local v0, "cid":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 1873
    const-string v4, "[IPSECADAPTER]"

    const-string v5, "Spurious Connection event no matching entity in connection Db so no action taken"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    :cond_0
    :goto_0
    return-void

    .line 1876
    :cond_1
    const-string v4, "[IPSECADAPTER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event received for context ID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTelstra()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1880
    invoke-direct {p0, v2, v1}, Lcom/sec/epdg/IPSecAdapter;->showToastOnIPsecSetupFail(Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V

    .line 1884
    :goto_1
    sget-object v4, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_ACTIVE:Lcom/ipsec/client/IPsecEvent;

    if-ne v2, v4, :cond_3

    .line 1886
    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapter;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapter;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1887
    const-string v4, "[IPSECADAPTER]"

    const-string v5, "checkConnection wake lock release : IPSEC_EVENT_CONNECTION_ACTIVE"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapter;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1882
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/sec/epdg/IPSecAdapter;->showToastOnConnectionStatusChanged(Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V

    goto :goto_1

    .line 1892
    :cond_3
    sget-object v4, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne v2, v4, :cond_4

    .line 1893
    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapter;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapter;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1894
    const-string v4, "[IPSECADAPTER]"

    const-string v5, "checkConnection wake lock release : IPSEC_EVENT_PEER_DISCONNECTED"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapter;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1898
    :cond_4
    sget-object v4, Lcom/sec/epdg/IPSecAdapter;->mOemHandler:Landroid/os/Handler;

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 1899
    .local v3, "msg":Landroid/os/Message;
    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 1900
    invoke-direct {p0, v2}, Lcom/sec/epdg/IPSecAdapter;->getIWlanEventbyIPSecEvent(Lcom/ipsec/client/IPsecEvent;)I

    move-result v4

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1904
    invoke-virtual {v1}, Lcom/ipsec/client/IPsecEventData;->getIPsecError()Lcom/ipsec/client/IPsecError;

    move-result-object v4

    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-eq v4, v5, :cond_5

    .line 1905
    new-instance v4, Lcom/sec/epdg/IWlanConnectResult;

    invoke-virtual {v1}, Lcom/ipsec/client/IPsecEventData;->getConnection()Lcom/ipsec/client/IPsecConnection;

    move-result-object v5

    invoke-virtual {v1}, Lcom/ipsec/client/IPsecEventData;->getIPsecError()Lcom/ipsec/client/IPsecError;

    move-result-object v6

    invoke-virtual {v1}, Lcom/ipsec/client/IPsecEventData;->getIkeErrorValue()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/sec/epdg/IPSecAdapter;->getIWlanErrorFromIpsecError(Lcom/ipsec/client/IPsecError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1915
    :goto_2
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1909
    :cond_5
    sget-object v4, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne v2, v4, :cond_6

    .line 1910
    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecAdapter;->getConnectionInformation(I)Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    .line 1912
    :cond_6
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2
.end method

.method private onIpSecAdapterServiceStatusChanged(Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;)V
    .locals 6
    .param p1, "status"    # Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;

    .prologue
    const/4 v5, 0x0

    .line 1415
    iget-object v1, p1, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;->error:Lcom/ipsec/client/IPsecError;

    .line 1416
    .local v1, "error":Lcom/ipsec/client/IPsecError;
    iget-object v0, p1, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;->data:Lcom/ipsec/client/IPsecEventData;

    .line 1418
    .local v0, "data":Lcom/ipsec/client/IPsecEventData;
    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    if-ne v1, v2, :cond_1

    .line 1420
    if-eqz v0, :cond_0

    .line 1421
    const-string v2, "[IPSECADAPTER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIpSecAdapterServiceStatusChanged() Service Changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    :goto_0
    iput-boolean v5, p0, Lcom/sec/epdg/IPSecAdapter;->mbStarted:Z

    .line 1450
    :goto_1
    return-void

    .line 1424
    :cond_0
    const-string v2, "[IPSECADAPTER]"

    const-string v3, "onIpSecAdapterServiceStatusChanged() Service ChangedIPSEC_REMOTE_SERVICE_NOT_CONNECTED"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1428
    :cond_1
    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-eq v1, v2, :cond_3

    .line 1430
    if-eqz v0, :cond_2

    .line 1431
    const-string v2, "[IPSECADAPTER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIpSecAdapterServiceStatusChanged() Service Changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    :goto_2
    iput-boolean v5, p0, Lcom/sec/epdg/IPSecAdapter;->mbStarted:Z

    goto :goto_1

    .line 1434
    :cond_2
    const-string v2, "[IPSECADAPTER]"

    const-string v3, "onIpSecAdapterServiceStatusChanged() Service ChangedService start up failed. "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1440
    :cond_3
    if-eqz v0, :cond_4

    .line 1441
    const-string v2, "[IPSECADAPTER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIpSecAdapterServiceStatusChanged() Service Changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecEventData;->getError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    :goto_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/epdg/IPSecAdapter;->mbStarted:Z

    goto :goto_1

    .line 1444
    :cond_4
    const-string v2, "[IPSECADAPTER]"

    const-string v3, "onIpSecAdapterServiceStatusChanged() Service ChangedService started"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private onSendKeepalive(I)V
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 684
    iget-boolean v1, p0, Lcom/sec/epdg/IPSecAdapter;->mbStarted:Z

    if-nez v1, :cond_0

    .line 685
    const-string v1, "[IPSECADAPTER]"

    const-string v2, "IPSecService is not connected yet"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :goto_0
    return-void

    .line 689
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter;->getIpSecConnectionbyCid(I)Lcom/ipsec/client/IPsecConnection;

    move-result-object v0

    .line 690
    .local v0, "conn":Lcom/ipsec/client/IPsecConnection;
    if-eqz v0, :cond_1

    .line 691
    const-string v1, "[IPSECADAPTER]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeepalive cid ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    sget-object v1, Lcom/sec/epdg/IPSecAdapter;->mIPsecClient:Lcom/ipsec/client/IPsecClient;

    invoke-virtual {v1, v0}, Lcom/ipsec/client/IPsecClient;->sendKeepalive(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecError;

    goto :goto_0

    .line 694
    :cond_1
    const-string v1, "[IPSECADAPTER]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendKeepalive: Error Cannot find ipsec conn obj : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setIkeEAPTypeValue(Lcom/sec/epdg/IWlanEnum$IkeEapType;)Lcom/ipsec/client/IPsecConnection$EapMethod;
    .locals 3
    .param p1, "eapType"    # Lcom/sec/epdg/IWlanEnum$IkeEapType;

    .prologue
    .line 1256
    const-string v0, "[IPSECADAPTER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIWlanEncryptType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$2;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEapType:[I

    invoke-virtual {p1}, Lcom/sec/epdg/IWlanEnum$IkeEapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1267
    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_AKA:Lcom/ipsec/client/IPsecConnection$EapMethod;

    :goto_0
    return-object v0

    .line 1259
    :pswitch_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_MD5_CHALLENGE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    goto :goto_0

    .line 1261
    :pswitch_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_SIM:Lcom/ipsec/client/IPsecConnection$EapMethod;

    goto :goto_0

    .line 1263
    :pswitch_2
    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_AKA:Lcom/ipsec/client/IPsecConnection$EapMethod;

    goto :goto_0

    .line 1265
    :pswitch_3
    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_MSCHAPV2:Lcom/ipsec/client/IPsecConnection$EapMethod;

    goto :goto_0

    .line 1257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showToastOnConnectionStatusChanged(Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V
    .locals 6
    .param p1, "event"    # Lcom/ipsec/client/IPsecEvent;
    .param p2, "data"    # Lcom/ipsec/client/IPsecEventData;

    .prologue
    .line 549
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 550
    .local v1, "status":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 551
    .local v2, "toasttext":Ljava/lang/String;
    const/4 v0, 0x0

    .line 552
    .local v0, "destroyConnection":Z
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_2

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nConnection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ipsec/client/IPsecEventData;->getConnection()Lcom/ipsec/client/IPsecConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    const-string v3, "[IPSECADAPTER]"

    const-string v4, "Received Connected event"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v2, "IPSEC_EVENT_CONNECTED"

    .line 602
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 603
    const-string v3, "[IPSECADAPTER]"

    const-string v4, "IPSecConnection is eligible for removal from DB"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_1
    const-string v3, "[IPSECADAPTER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void

    .line 557
    :cond_2
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_3

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setup failed IKE error value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ipsec/client/IPsecEventData;->getIkeErrorValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    const/4 v0, 0x1

    .line 561
    const-string v2, "IPSEC_EVENT_CONNECTION_SETUP_FAILURE"

    goto :goto_0

    .line 563
    :cond_3
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_4

    .line 564
    const-string v3, "Ipsec connection is disconnected"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    const/4 v0, 0x1

    .line 566
    const-string v2, "IPSEC_EVENT_DISCONNECTED"

    goto :goto_0

    .line 568
    :cond_4
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_5

    .line 569
    const-string v3, "Ipsec connection is disconnected by peer"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    const/4 v0, 0x1

    .line 571
    const-string v2, "IPSEC_EVENT_PEER_DISCONNECTED"

    goto :goto_0

    .line 573
    :cond_5
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_ACTIVE:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_6

    .line 574
    const-string v3, "Ipsec connection is active"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    const-string v2, "IPSEC_EVENT_CONNECTION_ACTIVE"

    goto :goto_0

    .line 577
    :cond_6
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_RESET:Lcom/ipsec/client/IPsecEvent;

    if-eq p1, v3, :cond_7

    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    if-eq p1, v3, :cond_7

    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_b

    .line 586
    :cond_7
    const-string v3, "IPsec connection is disconnected by peer"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    const/4 v0, 0x1

    .line 588
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_RESET:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_8

    .line 589
    const-string v2, "IPSEC_EVENT_CONNECTION_RESET"

    goto/16 :goto_0

    .line 590
    :cond_8
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTING:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_9

    .line 591
    const-string v2, "IPSEC_EVENT_DISCONNECTING"

    goto/16 :goto_0

    .line 592
    :cond_9
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_a

    .line 593
    const-string v2, "IPSEC_EVENT_ERROR"

    goto/16 :goto_0

    .line 594
    :cond_a
    sget-object v3, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v3, :cond_0

    .line 595
    const-string v2, "IPSEC_EVENT_PEER_DISCONNECTED"

    goto/16 :goto_0

    .line 597
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n Event received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    const/4 v0, 0x1

    .line 599
    const-string v2, "IPSEC_EVENT_UNKNOWN"

    goto/16 :goto_0
.end method

.method private showToastOnIPsecSetupFail(Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V
    .locals 8
    .param p1, "event"    # Lcom/ipsec/client/IPsecEvent;
    .param p2, "data"    # Lcom/ipsec/client/IPsecEventData;

    .prologue
    const/4 v2, 0x0

    .line 620
    sget-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v0, :cond_1

    .line 621
    iput v2, p0, Lcom/sec/epdg/IPSecAdapter;->mToastCounter:I

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    sget-object v0, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    if-ne p1, v0, :cond_0

    .line 623
    iget v0, p0, Lcom/sec/epdg/IPSecAdapter;->mToastCounter:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 628
    iget v0, p0, Lcom/sec/epdg/IPSecAdapter;->mToastCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/epdg/IPSecAdapter;->mToastCounter:I

    .line 629
    const-string v7, "Fail to connect to VoWiFi"

    .line 630
    .local v7, "toasttext":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 632
    .local v6, "toastIPsec":Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 633
    new-instance v0, Lcom/sec/epdg/IPSecAdapter$1;

    const-wide/16 v2, 0x2328

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/epdg/IPSecAdapter$1;-><init>(Lcom/sec/epdg/IPSecAdapter;JJLandroid/widget/Toast;)V

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecAdapter$1;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method private static startService()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "Starting IPSec Service"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/sec/epdg/IPSecAdapter;->mIPsecClient:Lcom/ipsec/client/IPsecClient;

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecClient;->startService()V

    .line 220
    return-void
.end method

.method private stopService()V
    .locals 4

    .prologue
    .line 224
    sget-object v1, Lcom/sec/epdg/IPSecAdapter;->mIPsecClient:Lcom/ipsec/client/IPsecClient;

    invoke-virtual {v1}, Lcom/ipsec/client/IPsecClient;->stopService()Lcom/ipsec/client/IPsecError;

    move-result-object v0

    .line 225
    .local v0, "result":Lcom/ipsec/client/IPsecError;
    const-string v1, "[IPSECADAPTER]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping IPSec Service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method


# virtual methods
.method public handleWifiStatusChangedIPsec(Z)V
    .locals 2
    .param p1, "isWifiConnected"    # Z

    .prologue
    .line 612
    if-nez p1, :cond_0

    .line 613
    const-string v0, "[IPSECADAPTER]"

    const-string v1, "WiFi is disconnected. Reset toast counter for Telstra"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/IPSecAdapter;->mToastCounter:I

    .line 616
    :cond_0
    return-void
.end method

.method public onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V
    .locals 6
    .param p1, "arg0"    # Lcom/ipsec/client/IPsecError;
    .param p2, "arg1"    # Lcom/ipsec/client/IPsecEventData;

    .prologue
    .line 1930
    const-string v4, "[IPSECADAPTER]"

    const-string v5, "onServiceStatusChanged()"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    move-object v1, p1

    .line 1932
    .local v1, "event":Lcom/ipsec/client/IPsecError;
    move-object v0, p2

    .line 1934
    .local v0, "data":Lcom/ipsec/client/IPsecEventData;
    const-string v4, "[IPSECADAPTER]"

    const-string v5, "onServiceStatusChanged()"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    new-instance v3, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;-><init>(Lcom/sec/epdg/IPSecAdapter$1;)V

    .line 1936
    .local v3, "status":Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;
    iput-object v1, v3, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;->error:Lcom/ipsec/client/IPsecError;

    .line 1937
    iput-object v0, v3, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;->data:Lcom/ipsec/client/IPsecEventData;

    .line 1938
    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapter;->mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1939
    .local v2, "msg":Landroid/os/Message;
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1940
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 1941
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1942
    return-void
.end method

.method public onUpdate(Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V
    .locals 4
    .param p1, "arg0"    # Lcom/ipsec/client/IPsecEvent;
    .param p2, "arg1"    # Lcom/ipsec/client/IPsecEventData;

    .prologue
    .line 1955
    const-string v2, "[IPSECADAPTER]"

    const-string v3, "onUpdate()"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    new-instance v0, Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;-><init>(Lcom/sec/epdg/IPSecAdapter$1;)V

    .line 1957
    .local v0, "eventInfo":Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;
    iput-object p1, v0, Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;->event:Lcom/ipsec/client/IPsecEvent;

    .line 1958
    iput-object p2, v0, Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;->data:Lcom/ipsec/client/IPsecEventData;

    .line 1959
    iget-object v2, p0, Lcom/sec/epdg/IPSecAdapter;->mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1960
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1961
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1962
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1964
    return-void
.end method

.method public postCheckConnectionMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapter;->mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 193
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 194
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 195
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 196
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 198
    return-void
.end method

.method public postConnectMessage(IILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "ipv4addr"    # Ljava/lang/String;
    .param p5, "ipv6addr"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;-><init>(Lcom/sec/epdg/IPSecAdapter$1;)V

    .line 171
    .local v0, "info":Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    check-cast p3, Lcom/sec/epdg/IWlanApnSetting;

    .end local p3    # "obj":Ljava/lang/Object;
    # invokes: Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->setIWlanSettingInfo(Lcom/sec/epdg/IWlanApnSetting;)V
    invoke-static {v0, p3}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->access$100(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Lcom/sec/epdg/IWlanApnSetting;)V

    .line 172
    # invokes: Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->setHandoverIpv4Addr(Ljava/lang/String;)V
    invoke-static {v0, p4}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->access$200(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Ljava/lang/String;)V

    .line 173
    # invokes: Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->setHandoverIpv6Addr(Ljava/lang/String;)V
    invoke-static {v0, p5}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->access$300(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/sec/epdg/IPSecAdapter;->mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 175
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 176
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 177
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 178
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 180
    return-void
.end method

.method public postDisconnectMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapter;->mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 185
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 186
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 187
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 189
    return-void
.end method

.method public postSendKeepAliveMessage(I)V
    .locals 2
    .param p1, "arg1"    # I

    .prologue
    .line 201
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapter;->mHandler:Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 202
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 203
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 204
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    return-void
.end method
