.class public final Landroid/net/DnsPinger;
.super Landroid/os/Handler;
.source "DnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DnsPinger$1;,
        Landroid/net/DnsPinger$DnsResult;,
        Landroid/net/DnsPinger$DnsArg;,
        Landroid/net/DnsPinger$ActivePing;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_ALL_PINGS:I = 0x50003

.field private static final ACTION_LISTEN_FOR_RESPONSE:I = 0x50002

.field private static final ACTION_PING_DNS:I = 0x50001

.field private static final ACTION_PING_DNS_SPECIFIC:I = 0x50004

.field private static final BASE:I = 0x50000

.field public static final CACHED_RESULT:I = 0x1

.field private static final DBG:Z

.field public static final DNS_PING_RESULT:I = 0x50000

.field public static final DNS_PING_RESULT_SPECIFIC:I = 0x50005

.field private static final DNS_PORT:I = 0x35

.field private static final DNS_RESPONSE_BUFFER_SIZE:I = 0x200

.field private static MostRecentDnsResultMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/DnsPinger$DnsResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_INTERNET:I = -0x3

.field public static final PRIVATE_IP_ADDRESS:I = 0x2

.field private static final RECEIVE_POLL_INTERVAL_MS:I = 0xc8

.field public static final REQUESTED_URL_ALREADY_IP_ADDRESS:I = 0x3

.field private static final SMARTCM_DBG:Z = false

.field public static final SOCKET_EXCEPTION:I = -0x2

.field private static final SOCKET_TIMEOUT_MS:I = 0x1

.field public static final TIMEOUT:I = -0x1

.field private static final sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field DnsResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/DnsPinger$DnsResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private TAG:Ljava/lang/String;

.field final lock:Ljava/lang/Object;

.field private mActivePings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/DnsPinger$ActivePing;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionType:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDefaultDns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDnsQuery:[B

.field private mEventCounter:I

.field mLp:Landroid/net/LinkProperties;

.field private final mTarget:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "TAG"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "target"    # Landroid/os/Handler;
    .param p5, "connectionType"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    iput-object v1, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    iput-object p2, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    iput p5, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-static {p5}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid connectionType in constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/net/DnsPinger;->getDefaultDns()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/DnsPinger;->mEventCounter:I

    return-void
.end method

.method private getCurrentLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultDns()Ljava/net/InetAddress;
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_dns_server"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "dns":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "getDefaultDns::malformed default dns address"

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isDnsResponsePrivateAddress(Ljava/lang/String;)Z
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v10, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v7, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .local v5, "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v11, 0x0

    aget-byte v7, v7, v11

    and-int/lit16 v1, v7, 0xff

    .local v1, "ipByte1st":I
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v11, 0x1

    aget-byte v7, v7, v11

    and-int/lit16 v2, v7, 0xff

    .local v2, "ipByte2nd":I
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v11, 0x2

    aget-byte v7, v7, v11

    and-int/lit16 v3, v7, 0xff

    .local v3, "ipByte3rd":I
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v11, 0x3

    aget-byte v7, v7, v11

    and-int/lit16 v4, v7, 0xff

    .local v4, "ipByte4th":I
    const/16 v7, 0xa

    if-eq v1, v7, :cond_2

    const/16 v7, 0xc0

    if-ne v1, v7, :cond_0

    const/16 v7, 0xa8

    if-eq v2, v7, :cond_2

    :cond_0
    const/16 v7, 0xac

    if-ne v1, v7, :cond_1

    const/16 v7, 0x10

    if-lt v2, v7, :cond_1

    const/16 v7, 0x1f

    if-le v2, v7, :cond_2

    :cond_1
    if-ne v1, v8, :cond_4

    const/16 v7, 0x21

    if-ne v2, v7, :cond_4

    const/16 v7, 0xcb

    if-ne v3, v7, :cond_4

    const/16 v7, 0x27

    if-ne v4, v7, :cond_4

    :cond_2
    sget-boolean v7, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " - Dns Response with Private Network IP Address !!! - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_3
    monitor-exit v10

    move v7, v8

    .end local v0    # "i":I
    .end local v1    # "ipByte1st":I
    .end local v2    # "ipByte2nd":I
    .end local v3    # "ipByte3rd":I
    .end local v4    # "ipByte4th":I
    .end local v6    # "size":I
    :goto_1
    return v7

    .restart local v0    # "i":I
    .restart local v1    # "ipByte1st":I
    .restart local v2    # "ipByte2nd":I
    .restart local v3    # "ipByte3rd":I
    .restart local v4    # "ipByte4th":I
    .restart local v6    # "size":I
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v1    # "ipByte1st":I
    .end local v2    # "ipByte2nd":I
    .end local v3    # "ipByte3rd":I
    .end local v4    # "ipByte4th":I
    .end local v6    # "size":I
    :cond_5
    monitor-exit v10

    move v7, v9

    goto :goto_1

    .end local v5    # "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :catchall_0
    move-exception v7

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendResponse(III)V
    .locals 3
    .param p1, "internalId"    # I
    .param p2, "externalId"    # I
    .param p3, "responseVal"    # I

    .prologue
    sget-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Responding to packet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " externalId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and val "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v2, 0x50005

    const/4 v0, 0x0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {p0, v2, p1, p3, v0}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const/high16 v1, 0x50000

    invoke-virtual {p0, v1, p1, p3}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendResponse(IIILjava/lang/String;)V
    .locals 8
    .param p1, "internalId"    # I
    .param p2, "externalId"    # I
    .param p3, "responseVal"    # I
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Responding to packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " externalId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " val "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .local v1, "resultIp":Ljava/net/InetAddress;
    iget-object v3, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    :try_start_0
    sget-object v2, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DnsPinger$DnsResult;

    .local v0, "res":Landroid/net/DnsPinger$DnsResult;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending most recent DNS result, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", expired "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Landroid/net/DnsPinger$DnsResult;->ttl:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " msec ago."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .end local v0    # "res":Landroid/net/DnsPinger$DnsResult;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v3, 0x50005

    invoke-virtual {p0, v3, p1, p3, v1}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    iget-object v2, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const/high16 v3, 0x50000

    invoke-virtual {p0, v3, p1, p3}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendResponse(IIILjava/lang/String;II)V
    .locals 6
    .param p1, "internalId"    # I
    .param p2, "externalId"    # I
    .param p3, "responseVal"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "delay"    # I

    .prologue
    sget-boolean v1, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responding to packet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " externalId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and val "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPECIFIC DNS PING: url - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseVal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/DnsPinger$DnsResult;

    iget-object v0, v1, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .local v0, "resultIp":Ljava/net/InetAddress;
    iget-object v1, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v3, 0x50005

    invoke-virtual {p0, v3, p1, p3, v0}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, p6

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v2

    .end local v0    # "resultIp":Ljava/net/InetAddress;
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateDnsDB([BILjava/lang/String;)V
    .locals 30
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .param p3, "reqUrl"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .local v6, "currTime":J
    const/4 v4, 0x0

    .local v4, "currPos":I
    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    add-int v19, v26, v27

    .local v19, "packetId":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    add-int v8, v26, v27

    .local v8, "flag":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    add-int v18, v26, v27

    .local v18, "numOfQuestion":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    add-int v16, v26, v27

    .local v16, "numOfAnswerRR":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    add-int v17, v26, v27

    .local v17, "numOfAthorityRR":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    add-int v15, v26, v27

    .local v15, "numOfAdditionalRR":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .local v25, "url":Ljava/lang/StringBuilder;
    :goto_0
    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    if-eqz v26, :cond_1

    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1
    aget-byte v26, p1, v4

    move/from16 v0, v26

    if-gt v9, v0, :cond_0

    const-string v26, "%c"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    add-int v29, v4, v9

    aget-byte v29, p1, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    const/16 v26, 0x2e

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v26, p1, v4

    add-int v4, v4, v26

    goto :goto_0

    .end local v9    # "i":I
    :cond_1
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    :cond_2
    add-int/lit8 v4, v4, 0x4

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, "dbgShowResult":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v9, v0, :cond_3

    add-int/lit8 v26, v4, 0xc

    const/16 v27, 0x200

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    add-int v24, v26, v27

    .local v24, "rrType":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    add-int v20, v26, v27

    .local v20, "rrClass":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x18

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x10

    add-int v26, v26, v27

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    add-int v26, v26, v27

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    add-int v23, v26, v27

    .local v23, "rrTtl":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v27, p1, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    add-int v22, v26, v27

    .local v22, "rrLength":I
    add-int v26, v4, v22

    const/16 v27, 0x200

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_6

    .end local v20    # "rrClass":I
    .end local v22    # "rrLength":I
    .end local v23    # "rrTtl":I
    .end local v24    # "rrType":I
    :cond_3
    sget-boolean v26, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v26, :cond_4

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DNS Result - "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/net/DnsPinger;->isDnsResponsePrivateAddress(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_a

    sget-object v26, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v20    # "rrClass":I
    .restart local v22    # "rrLength":I
    .restart local v23    # "rrTtl":I
    .restart local v24    # "rrType":I
    :cond_6
    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .local v11, "ipString":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v26, 0x2e

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v26, 0x2e

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v26, 0x2e

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Landroid/net/DnsPinger$DnsResult;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v26

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v28, v28, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/net/DnsPinger$DnsResult;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;J)V

    .local v13, "mDnsResult":Landroid/net/DnsPinger$DnsResult;
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v26, "["

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v26, "] "

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v11    # "ipString":Ljava/lang/StringBuilder;
    .end local v13    # "mDnsResult":Landroid/net/DnsPinger$DnsResult;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_8
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .local v21, "rrData":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    move/from16 v0, v22

    if-ge v12, v0, :cond_7

    const/16 v26, 0x5b

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v26, "%02X"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    add-int/lit8 v4, v4, 0x1

    aget-byte v29, p1, v4

    invoke-static/range {v29 .. v29}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v26, 0x5d

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .end local v12    # "j":I
    .end local v20    # "rrClass":I
    .end local v21    # "rrData":Ljava/lang/StringBuilder;
    .end local v22    # "rrLength":I
    .end local v23    # "rrTtl":I
    .end local v24    # "rrType":I
    :cond_9
    const/4 v9, 0x0

    :goto_5
    :try_start_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v9, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_a
    sget-boolean v26, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v26, :cond_b

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Hashmap DnsResultMap contains "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->size()I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " entries, url: "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " - "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " IPs"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_b
    monitor-exit v27

    return-void

    :catchall_0
    move-exception v26

    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v26
.end method

.method private updateDnsQuery(Ljava/lang/String;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x2e

    const/4 v11, 0x5

    const/16 v10, 0xc

    const/4 v9, 0x0

    new-array v1, v10, [B

    fill-array-data v1, :array_0

    .local v1, "header":[B
    new-array v7, v11, [B

    fill-array-data v7, :array_1

    .local v7, "trailer":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "blockSize":B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "mid":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .local v5, "middle":[B
    move v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    aget-byte v8, v5, v2

    if-ne v8, v12, :cond_0

    aput-byte v0, v5, v2

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v0, 0x1

    int-to-byte v0, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v3, 0x12

    new-array v6, v8, [B

    .local v6, "query":[B
    invoke-static {v1, v9, v6, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v8, v3, 0x1

    invoke-static {v5, v9, v6, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v8, v3, 0xd

    invoke-static {v7, v9, v6, v8, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    iput-object v8, p0, Landroid/net/DnsPinger;->mDnsQuery:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method private updateDnsResultMap(Ljava/lang/String;)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    iget-object v10, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .local v7, "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "currTime":J
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "size":I
    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-object v9, v9, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    const/4 v11, 0x0

    aget-byte v9, v9, v11

    and-int/lit16 v3, v9, 0xff

    .local v3, "ipByte1st":I
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-object v9, v9, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    const/4 v11, 0x1

    aget-byte v9, v9, v11

    and-int/lit16 v4, v9, 0xff

    .local v4, "ipByte2nd":I
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-object v9, v9, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    const/4 v11, 0x2

    aget-byte v9, v9, v11

    and-int/lit16 v5, v9, 0xff

    .local v5, "ipByte3rd":I
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-object v9, v9, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    const/4 v11, 0x3

    aget-byte v9, v9, v11

    and-int/lit16 v6, v9, 0xff

    .local v6, "ipByte4th":I
    const/16 v9, 0xa

    if-eq v3, v9, :cond_2

    const/16 v9, 0xc0

    if-ne v3, v9, :cond_0

    const/16 v9, 0xa8

    if-eq v4, v9, :cond_2

    :cond_0
    const/16 v9, 0xac

    if-ne v3, v9, :cond_1

    const/16 v9, 0x10

    if-lt v4, v9, :cond_1

    const/16 v9, 0x1f

    if-le v4, v9, :cond_2

    :cond_1
    const/4 v9, 0x1

    if-ne v3, v9, :cond_4

    const/16 v9, 0x21

    if-ne v4, v9, :cond_4

    const/16 v9, 0xcb

    if-ne v5, v9, :cond_4

    const/16 v9, 0x27

    if-ne v6, v9, :cond_4

    :cond_2
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-wide v12, v9, Landroid/net/DnsPinger$DnsResult;->ttl:J

    cmp-long v9, v0, v12

    if-lez v9, :cond_3

    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "currTime":J
    .end local v2    # "i":I
    .end local v3    # "ipByte1st":I
    .end local v4    # "ipByte2nd":I
    .end local v5    # "ipByte3rd":I
    .end local v6    # "ipByte4th":I
    .end local v7    # "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    .end local v8    # "size":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v0    # "currTime":J
    .restart local v7    # "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :cond_5
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public cancelPings()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const v0, 0x50003

    invoke-virtual {p0, v0}, Landroid/net/DnsPinger;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDnsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .local v0, "curLinkProps":Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurLinkProperties:: LP for type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .local v1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "getDns::LinkProps has null dns - returning default"

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/net/DnsPinger$DnsArg;

    .local v14, "dnsArg":Landroid/net/DnsPinger$DnsArg;
    iget v2, v14, Landroid/net/DnsPinger$DnsArg;->seq:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v2, v3, :cond_0

    :try_start_0
    new-instance v21, Landroid/net/DnsPinger$ActivePing;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/net/DnsPinger$ActivePing;-><init>(Landroid/net/DnsPinger;Landroid/net/DnsPinger$1;)V

    .local v21, "newActivePing":Landroid/net/DnsPinger$ActivePing;
    iget-object v13, v14, Landroid/net/DnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    .local v13, "dnsAddress":Ljava/net/InetAddress;
    iget-object v2, v14, Landroid/net/DnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->updateDnsQuery(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/net/DnsPinger$ActivePing;->internalId:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/net/DnsPinger$ActivePing;->timeout:I

    iget-object v2, v14, Landroid/net/DnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    move-object/from16 v0, v21

    iput-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-direct/range {p0 .. p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x50001

    if-ne v2, v3, :cond_2

    sget-object v2, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    move-object/from16 v0, v21

    iput-short v2, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mDnsQuery:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .local v11, "buf":[B
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iget-short v3, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v11, v2

    const/4 v2, 0x1

    move-object/from16 v0, v21

    iget-short v3, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v3, v3

    aput-byte v3, v11, v2

    new-instance v22, Ljava/net/DatagramPacket;

    array-length v2, v11

    const/16 v3, 0x35

    move-object/from16 v0, v22

    invoke-direct {v0, v11, v2, v13, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .local v22, "packet":Ljava/net/DatagramPacket;
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending a ping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    iget v3, v0, Landroid/net/DnsPinger$ActivePing;->internalId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with packetId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    iget-short v3, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/DnsPinger;->mEventCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/DnsPinger;->mEventCounter:I

    const v2, 0x50002

    move-object/from16 v0, p0

    iget v3, v0, Landroid/net/DnsPinger;->mEventCounter:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .end local v11    # "buf":[B
    .end local v13    # "dnsAddress":Ljava/net/InetAddress;
    .end local v21    # "newActivePing":Landroid/net/DnsPinger$ActivePing;
    .end local v22    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v15

    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x50001

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, -0x270e

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto/16 :goto_0

    .end local v15    # "e":Ljava/io/IOException;
    .restart local v13    # "dnsAddress":Ljava/net/InetAddress;
    .restart local v21    # "newActivePing":Landroid/net/DnsPinger$ActivePing;
    :catch_1
    move-exception v15

    .local v15, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDnsPing::Error binding to socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v15    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v2, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    move-object/from16 v0, v21

    iput-short v2, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .end local v13    # "dnsAddress":Ljava/net/InetAddress;
    .end local v21    # "newActivePing":Landroid/net/DnsPinger$ActivePing;
    .local v15, "e":Ljava/io/IOException;
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, -0x270f

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto/16 :goto_0

    .end local v14    # "dnsArg":Landroid/net/DnsPinger$DnsArg;
    .end local v15    # "e":Ljava/io/IOException;
    :pswitch_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/net/DnsPinger;->mEventCounter:I

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_4
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/DnsPinger$ActivePing;

    .local v12, "curPing":Landroid/net/DnsPinger$ActivePing;
    const/16 v2, 0x200

    :try_start_4
    new-array v0, v2, [B

    move-object/from16 v24, v0

    .local v24, "responseBuf":[B
    new-instance v23, Ljava/net/DatagramPacket;

    const/16 v2, 0x200

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .local v23, "replyPacket":Ljava/net/DatagramPacket;
    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    const/16 v18, 0x0

    .local v18, "isUsableResponse":Z
    const/4 v2, 0x0

    aget-byte v2, v24, v2

    iget-short v3, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    aget-byte v2, v24, v2

    iget-short v3, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v3, v3

    if-ne v2, v3, :cond_7

    const/16 v18, 0x1

    :cond_5
    :goto_4
    if-eqz v18, :cond_d

    const/4 v2, 0x3

    aget-byte v2, v24, v2

    and-int/lit8 v2, v2, 0xf

    if-nez v2, :cond_a

    const/4 v2, 0x6

    aget-byte v2, v24, v2

    if-nez v2, :cond_6

    const/4 v2, 0x7

    aget-byte v2, v24, v2

    if-eqz v2, :cond_a

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v12, Landroid/net/DnsPinger$ActivePing;->start:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual/range {v23 .. v23}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    iget-object v4, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->updateDnsDB([BILjava/lang/String;)V

    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->isDnsResponsePrivateAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto :goto_3

    .end local v18    # "isUsableResponse":Z
    .end local v23    # "replyPacket":Ljava/net/DatagramPacket;
    .end local v24    # "responseBuf":[B
    :catch_2
    move-exception v2

    goto :goto_3

    .restart local v18    # "isUsableResponse":Z
    .restart local v23    # "replyPacket":Ljava/net/DatagramPacket;
    .restart local v24    # "responseBuf":[B
    :cond_7
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_8

    const-string/jumbo v2, "response ID doesn\'t match with query ID."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/DnsPinger$ActivePing;

    .local v10, "activePingForIdCheck":Landroid/net/DnsPinger$ActivePing;
    const/4 v2, 0x0

    aget-byte v2, v24, v2

    iget-short v3, v10, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    aget-byte v2, v24, v2

    iget-short v3, v10, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v3, v3

    if-ne v2, v3, :cond_9

    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    iget-object v3, v10, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "response ID didn\'t match, but DNS response is usable."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    const/16 v18, 0x1

    goto/16 :goto_4

    .end local v10    # "activePingForIdCheck":Landroid/net/DnsPinger$ActivePing;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_a
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "Reply code is not 0(No Error) or Answer Record Count is 0"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    :cond_b
    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    .end local v18    # "isUsableResponse":Z
    .end local v23    # "replyPacket":Ljava/net/DatagramPacket;
    .end local v24    # "responseBuf":[B
    :catch_3
    move-exception v15

    .local v15, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DnsPinger.pingDns got socket exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_c
    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto/16 :goto_3

    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v18    # "isUsableResponse":Z
    .restart local v23    # "replyPacket":Ljava/net/DatagramPacket;
    .restart local v24    # "responseBuf":[B
    :cond_d
    :try_start_5
    const-string/jumbo v2, "response ID didn\'t match, ignoring packet"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .end local v12    # "curPing":Landroid/net/DnsPinger$ActivePing;
    .end local v18    # "isUsableResponse":Z
    .end local v23    # "replyPacket":Ljava/net/DatagramPacket;
    .end local v24    # "responseBuf":[B
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/DnsPinger$ActivePing;>;"
    :cond_f
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/DnsPinger$ActivePing;

    .restart local v12    # "curPing":Landroid/net/DnsPinger$ActivePing;
    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    if-eqz v2, :cond_13

    iget-short v2, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    iget-object v3, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    if-eqz v20, :cond_10

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-lez v2, :cond_10

    :try_start_7
    iget v3, v12, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v4, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    sget-object v7, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    iget-object v8, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/net/DnsPinger;->sendResponse(IIILjava/lang/String;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    :try_start_8
    monitor-exit v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :goto_7
    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .restart local v20    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :cond_10
    :try_start_9
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There are no results about "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget v2, v12, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v3, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto :goto_6

    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :catchall_0
    move-exception v2

    monitor-exit v25
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v2

    :cond_12
    iget v2, v12, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v3, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    iget-object v4, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto :goto_7

    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v12, Landroid/net/DnsPinger$ActivePing;->start:J

    iget v6, v12, Landroid/net/DnsPinger$ActivePing;->timeout:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_f

    iget v2, v12, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v3, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    const/4 v4, -0x1

    iget-object v5, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/net/DnsPinger;->sendResponse(IIILjava/lang/String;)V

    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_5

    .end local v12    # "curPing":Landroid/net/DnsPinger$ActivePing;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x50002

    move-object/from16 v0, p0

    iget v3, v0, Landroid/net/DnsPinger;->mEventCounter:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/DnsPinger$ActivePing;>;"
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$ActivePing;

    .local v9, "activePing":Landroid/net/DnsPinger$ActivePing;
    iget-object v2, v9, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    goto :goto_8

    .end local v9    # "activePing":Landroid/net/DnsPinger$ActivePing;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .end local v16    # "i$":Ljava/util/Iterator;
    .restart local v12    # "curPing":Landroid/net/DnsPinger$ActivePing;
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/DnsPinger$ActivePing;>;"
    .restart local v20    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :catch_4
    move-exception v2

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x50001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public pingDnsAsync(Ljava/net/InetAddress;II)I
    .locals 5
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "delay"    # I

    .prologue
    sget-object v1, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .local v0, "id":I
    const-string/jumbo v1, "www.google.com"

    invoke-direct {p0, v1}, Landroid/net/DnsPinger;->updateDnsResultMap(Ljava/lang/String;)V

    const v1, 0x50001

    new-instance v2, Landroid/net/DnsPinger$DnsArg;

    iget-object v3, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const-string/jumbo v4, "www.google.com"

    invoke-direct {v2, p0, p1, v3, v4}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    invoke-virtual {p0, v1, v0, p2, v2}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0
.end method

.method public pingDnsAsyncSpecific(Ljava/net/InetAddress;IILjava/lang/String;)I
    .locals 14
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "delay"    # I
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    sget-object v2, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .local v3, "id":I
    :try_start_0
    invoke-static/range {p4 .. p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .local v9, "addr":Ljava/net/InetAddress;
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL is already an IP address. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v4, 0x50005

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v3, v5, v9}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v12, 0x32

    invoke-virtual {v2, v4, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "addr":Ljava/net/InetAddress;
    :goto_0
    return v3

    :catch_0
    move-exception v2

    iget-object v11, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    iget-object v2, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS Result Hashmap - NO HIT!!! SENDING DNS QUERY!  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_1
    const v2, 0x50004

    new-instance v4, Landroid/net/DnsPinger$DnsArg;

    iget-object v5, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    move-object/from16 v0, p4

    invoke-direct {v4, p0, p1, v5, v0}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {p0, v2, v3, v0, v4}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move/from16 v0, p3

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    :try_start_2
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->updateDnsResultMap(Ljava/lang/String;)V

    const/4 v10, 0x0

    .local v10, "numOfResults":I
    iget-object v2, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    :cond_3
    if-nez v10, :cond_5

    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS Result Hashmap - HIT!!! BUT NO RESULTS   ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_4
    const v2, 0x50004

    new-instance v4, Landroid/net/DnsPinger$DnsArg;

    iget-object v5, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    move-object/from16 v0, p4

    invoke-direct {v4, p0, p1, v5, v0}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {p0, v2, v3, v0, v4}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move/from16 v0, p3

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_5
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS Result Hashmap - HIT!!! USE PREVIOUS RESULT   ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_6
    sget-object v2, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v2, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .local v7, "index":I
    const/16 v4, -0x2b67

    const/4 v5, 0x1

    const/16 v8, 0x32

    move-object v2, p0

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Landroid/net/DnsPinger;->sendResponse(IIILjava/lang/String;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public pingDnsAsyncSpecificForce(Ljava/net/InetAddress;IILjava/lang/String;)I
    .locals 4
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "delay"    # I
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    sget-object v1, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .local v0, "id":I
    const v1, 0x50004

    new-instance v2, Landroid/net/DnsPinger$DnsArg;

    iget-object v3, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, p0, p1, v3, p4}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    invoke-virtual {p0, v1, v0, p2, v2}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0
.end method

.method public setCurrentLinkProperties(Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentLinkProperties: lp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    return-void
.end method
