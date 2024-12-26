.class Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;
.super Ljava/lang/Object;
.source "EnterpriseProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyConnection"
.end annotation


# instance fields
.field private authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

.field private clientConnection:Ljava/net/Socket;

.field private credentials:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;)V
    .locals 1
    .param p2, "authState"    # Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
    .param p3, "credentials"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p2, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    .line 297
    invoke-virtual {p2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getSource()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    .line 298
    iput-object p3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    .param p2, "x1"    # Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;

    .prologue
    .line 284
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;)V
    .locals 0
    .param p2, "connection"    # Ljava/net/Socket;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p2, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    .line 292
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    .param p2, "x1"    # Ljava/net/Socket;
    .param p3, "x2"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;)V

    return-void
.end method

.method private convertStringUrl(Ljava/lang/String;)Ljava/net/URI;
    .locals 6
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 770
    const/4 v1, 0x0

    .line 772
    .local v1, "url":Ljava/net/URI;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "url":Ljava/net/URI;
    .local v2, "url":Ljava/net/URI;
    move-object v1, v2

    .line 777
    .end local v2    # "url":Ljava/net/URI;
    .restart local v1    # "url":Ljava/net/URI;
    :goto_0
    return-object v1

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v3, "EnterpriseProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private discoverProxyAuthenticator(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .locals 2
    .param p1, "proxyString"    # Ljava/lang/String;
    .param p2, "requestLine"    # [Ljava/lang/String;

    .prologue
    .line 564
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    if-eqz v1, :cond_1

    .line 566
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v1}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxyAuthenticator()Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v0

    .line 577
    .local v0, "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    :cond_0
    :goto_0
    return-object v0

    .line 568
    .end local v0    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    :cond_1
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    .line 569
    .restart local v0    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    if-nez v0, :cond_0

    .line 572
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # invokes: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getRequiredAuthenticationType(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    invoke-static {v1, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$100(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v0

    .line 573
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private filterAndForwardRequestHeaders(Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 2
    .param p1, "src"    # Ljava/net/Socket;
    .param p2, "dst"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->shouldRemoveHeaderLine(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 712
    invoke-static {p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 714
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 715
    return-void
.end method

.method private getAbsolutePathFromAbsoluteURI(Ljava/net/URI;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 644
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, "rawPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v3

    .line 646
    .local v3, "rawQuery":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "rawFragment":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    .local v0, "absolutePath":Ljava/lang/StringBuilder;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 650
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    :goto_0
    if-eqz v3, :cond_0

    .line 655
    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_0
    if-eqz v1, :cond_1

    .line 658
    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 652
    :cond_2
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getExternalProxy()Landroid/net/ProxyInfo;
    .locals 2

    .prologue
    .line 512
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$500()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;
    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$600(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->retrieveEnterpriseProxy(Z)Landroid/net/ProxyInfo;

    move-result-object v0

    # setter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;
    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$502(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    .line 515
    :cond_0
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$500()Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method private getExternalProxyList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 471
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    if-nez v4, :cond_3

    .line 472
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # invokes: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getConnectivityManagerService()Lcom/android/server/ConnectivityService;
    invoke-static {v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$400(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getExternalProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 475
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->convertStringUrl(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 477
    .local v3, "uri":Ljava/net/URI;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 479
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 481
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 482
    const-string v4, "EnterpriseProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is on proxy exclusion list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v3    # "uri":Ljava/net/URI;
    :cond_0
    :goto_0
    return-object v0

    .line 486
    .restart local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v3    # "uri":Ljava/net/URI;
    :cond_1
    const-string v4, "EnterpriseProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieved external proxy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v4, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v7

    invoke-static {v6, v7}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    :cond_2
    new-instance v2, Landroid/net/PacProxySelector;

    invoke-direct {v2}, Landroid/net/PacProxySelector;-><init>()V

    .line 493
    .local v2, "selector":Ljava/net/ProxySelector;
    invoke-virtual {v2, v3}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 499
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v2    # "selector":Ljava/net/ProxySelector;
    .end local v3    # "uri":Ljava/net/URI;
    :cond_3
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v4}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getProxyString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 3
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 781
    const-string v0, ""

    .line 782
    .local v0, "proxyString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    :cond_0
    return-object v0
.end method

.method private isClientConnectionAlive()Z
    .locals 4

    .prologue
    .line 744
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 745
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v3}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 746
    .local v0, "proxy":Ljava/net/Proxy;
    if-eqz v0, :cond_1

    .line 747
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getProxyString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, "proxyString":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$800()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 750
    .local v2, "stateCacheList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/proxy/auth/AuthenticationState;>;"
    if-eqz v2, :cond_1

    .line 751
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 754
    .end local v1    # "proxyString":Ljava/lang/String;
    .end local v2    # "stateCacheList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/proxy/auth/AuthenticationState;>;"
    :cond_1
    const/4 v3, 0x0

    .line 756
    .end local v0    # "proxy":Ljava/net/Proxy;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "nonProxyHosts"    # Ljava/lang/String;

    .prologue
    .line 527
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 528
    :cond_0
    const/4 v4, 0x0

    .line 550
    :goto_0
    return v4

    .line 531
    :cond_1
    if-eqz p2, :cond_2

    const-string v4, ","

    const-string/jumbo v5, "|"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 534
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .local v3, "patternBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 536
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 537
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 545
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 539
    :sswitch_0
    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 542
    :sswitch_1
    const-string v4, ".*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 549
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 537
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method private readProxyCredentialsIfNeeded(Ljava/lang/String;)V
    .locals 4
    .param p1, "proxyString"    # Ljava/lang/String;

    .prologue
    .line 588
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 589
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # invokes: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getConnectivityManagerService()Lcom/android/server/ConnectivityService;
    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$400(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 594
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "splitProxy":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;
    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$600(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ConnectivityService;->retrieveProxyCredentials(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    .line 599
    .end local v0    # "splitProxy":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private saveAuthCache(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "authState"    # Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    .prologue
    .line 760
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$800()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 761
    .local v0, "authList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/proxy/auth/AuthenticationState;>;"
    if-nez v0, :cond_0

    .line 762
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 765
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$800()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    return-void
.end method

.method private sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/net/Socket;
    .param p2, "dst"    # Ljava/net/Socket;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/net/URI;
    .param p5, "httpVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->sendRequestLineWithPath(Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    .line 689
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->filterAndForwardRequestHeaders(Ljava/net/Socket;Ljava/net/Socket;)V

    .line 694
    const-string v0, "Connection: close"

    invoke-static {p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 697
    const-string v0, ""

    invoke-static {p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method private sendRequestLineWithPath(Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .locals 5
    .param p1, "server"    # Ljava/net/Socket;
    .param p2, "requestType"    # Ljava/lang/String;
    .param p3, "absoluteUri"    # Ljava/net/URI;
    .param p4, "httpVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getAbsolutePathFromAbsoluteURI(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "absolutePath":Ljava/lang/String;
    const-string v2, "%s %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "outgoingRequestLine":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method private shouldRemoveHeaderLine(Ljava/lang/String;)Z
    .locals 7
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 724
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 725
    .local v6, "colIndex":I
    const/4 v3, -0x1

    if-eq v6, v3, :cond_1

    .line 726
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "headerName":Ljava/lang/String;
    const-string v3, "connection"

    const-string v4, "connection"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "proxy-connection"

    const-string/jumbo v4, "proxy-connection"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 734
    .end local v0    # "headerName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private skipToRequestBody(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 672
    return-void
.end method

.method private startCredentialsDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "proxyString"    # Ljava/lang/String;

    .prologue
    .line 607
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 608
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 610
    const-string v1, "com.samsung.android.mdm"

    const-string v2, "com.samsung.android.mdm.EnterpriseProxyAuthDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string/jumbo v1, "proxy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$700(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 614
    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 304
    const/16 v23, 0x0

    .line 305
    .local v23, "requestLine":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    if-eqz v3, :cond_2

    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->isClientConnectionAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    :goto_0
    return-void

    .line 309
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v3}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getRequestLine()Ljava/lang/String;

    move-result-object v23

    .line 314
    :goto_1
    const-string v3, " "

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 315
    .local v25, "splitLine":[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v3, v0

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    .end local v25    # "splitLine":[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 450
    .local v11, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Problem Proxying "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 455
    :catch_1
    move-exception v3

    goto :goto_0

    .line 311
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    .line 320
    .restart local v25    # "splitLine":[Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    aget-object v6, v25, v3

    .line 321
    .local v6, "requestType":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v27, v25, v3

    .line 322
    .local v27, "urlString":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v8, v25, v3

    .line 324
    .local v8, "httpVersion":Ljava/lang/String;
    const/4 v7, 0x0

    .line 328
    .local v7, "url":Ljava/net/URI;
    const-string v3, "CONNECT"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 329
    const-string v3, ":"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 330
    .local v13, "hostPortSplit":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v12, v13, v3

    .line 332
    .local v12, "host":Ljava/lang/String;
    array-length v3, v13

    const/4 v4, 0x2

    if-ge v3, v4, :cond_7

    .line 333
    const/16 v19, 0x1bb

    .line 342
    .local v19, "port":I
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 357
    .end local v13    # "hostPortSplit":[Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getExternalProxyList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 359
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    const/4 v5, 0x0

    .line 360
    .local v5, "server":Ljava/net/Socket;
    const/4 v9, 0x0

    .line 361
    .local v9, "authHeader":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    move-object/from16 v24, v5

    .end local v5    # "server":Ljava/net/Socket;
    .local v24, "server":Ljava/net/Socket;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/net/Proxy;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 363
    .local v20, "proxy":Ljava/net/Proxy;
    :try_start_3
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 364
    const-string v3, "EnterpriseProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Sending traffic to proxy "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/net/Proxy;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual/range {v20 .. v20}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v15

    check-cast v15, Ljava/net/InetSocketAddress;

    .line 368
    .local v15, "inetSocketAddress":Ljava/net/InetSocketAddress;
    new-instance v5, Ljava/net/Socket;

    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-direct {v5, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 370
    .end local v24    # "server":Ljava/net/Socket;
    .restart local v5    # "server":Ljava/net/Socket;
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getProxyString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v22

    .line 374
    .local v22, "proxyString":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .local v10, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->discoverProxyAuthenticator(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v21

    .line 380
    .local v21, "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    if-eqz v21, :cond_4

    invoke-interface/range {v21 .. v21}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->isCredentialRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->readProxyCredentialsIfNeeded(Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-interface {v0, v3, v5, v1}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 387
    const-string v3, "\r\n"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 424
    .end local v10    # "builder":Ljava/lang/StringBuilder;
    .end local v15    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v21    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .end local v22    # "proxyString":Ljava/lang/String;
    :goto_6
    if-eqz v5, :cond_d

    .line 428
    .end local v20    # "proxy":Ljava/net/Proxy;
    :goto_7
    :try_start_5
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 429
    new-instance v5, Ljava/net/Socket;

    .end local v5    # "server":Ljava/net/Socket;
    move/from16 v0, v19

    invoke-direct {v5, v12, v0}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 430
    .restart local v5    # "server":Ljava/net/Socket;
    const-string v3, "CONNECT"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->skipToRequestBody(Ljava/net/Socket;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    const-string v4, "HTTP/1.1 200 OK\n"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 441
    :cond_5
    :goto_8
    if-eqz v5, :cond_1

    .line 444
    const-string v3, "CONNECT"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 445
    const/4 v9, 0x0

    .line 447
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-static {v3, v5, v9}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 336
    .end local v5    # "server":Ljava/net/Socket;
    .end local v9    # "authHeader":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v19    # "port":I
    .restart local v13    # "hostPortSplit":[Ljava/lang/String;
    :cond_7
    const/4 v3, 0x1

    :try_start_6
    aget-object v3, v13, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result v19

    .restart local v19    # "port":I
    goto/16 :goto_3

    .line 337
    .end local v19    # "port":I
    :catch_2
    move-exception v18

    .line 338
    .local v18, "nfe":Ljava/lang/NumberFormatException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 345
    .end local v12    # "host":Ljava/lang/String;
    .end local v13    # "hostPortSplit":[Ljava/lang/String;
    .end local v18    # "nfe":Ljava/lang/NumberFormatException;
    :cond_8
    :try_start_8
    new-instance v26, Ljava/net/URI;

    invoke-direct/range {v26 .. v27}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 346
    .end local v7    # "url":Ljava/net/URI;
    .local v26, "url":Ljava/net/URI;
    :try_start_9
    invoke-virtual/range {v26 .. v26}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v12

    .line 347
    .restart local v12    # "host":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/net/URI;->getPort()I
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result v19

    .line 348
    .restart local v19    # "port":I
    if-gez v19, :cond_9

    .line 349
    const/16 v19, 0x50

    :cond_9
    move-object/from16 v7, v26

    .line 354
    .end local v26    # "url":Ljava/net/URI;
    .restart local v7    # "url":Ljava/net/URI;
    goto/16 :goto_4

    .line 351
    .end local v12    # "host":Ljava/lang/String;
    .end local v19    # "port":I
    :catch_3
    move-exception v11

    .line 352
    .local v11, "e":Ljava/net/URISyntaxException;
    :goto_9
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 394
    .end local v11    # "e":Ljava/net/URISyntaxException;
    .restart local v5    # "server":Ljava/net/Socket;
    .restart local v9    # "authHeader":Ljava/lang/String;
    .restart local v10    # "builder":Ljava/lang/StringBuilder;
    .restart local v12    # "host":Ljava/lang/String;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v15    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .restart local v19    # "port":I
    .restart local v20    # "proxy":Ljava/net/Proxy;
    .restart local v21    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v22    # "proxyString":Ljava/lang/String;
    :cond_a
    :try_start_b
    new-instance v3, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;-><init>(Ljava/net/Socket;Ljava/net/Proxy;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->saveAuthCache(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;)V

    .line 396
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->startCredentialsDialog(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 420
    .end local v10    # "builder":Ljava/lang/StringBuilder;
    .end local v15    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v21    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .end local v22    # "proxyString":Ljava/lang/String;
    :catch_4
    move-exception v16

    .line 421
    .local v16, "ioe":Ljava/io/IOException;
    :goto_a
    :try_start_c
    const-string v3, "EnterpriseProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unable to connect to proxy "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_6

    .line 407
    .end local v5    # "server":Ljava/net/Socket;
    .end local v16    # "ioe":Ljava/io/IOException;
    .restart local v24    # "server":Ljava/net/Socket;
    :cond_b
    :try_start_d
    const-string v3, "EnterpriseProxyServer"

    const-string v4, "Direct proxy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v5, Ljava/net/Socket;

    move/from16 v0, v19

    invoke-direct {v5, v12, v0}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 410
    .end local v24    # "server":Ljava/net/Socket;
    .restart local v5    # "server":Ljava/net/Socket;
    :try_start_e
    const-string v3, "CONNECT"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->skipToRequestBody(Ljava/net/Socket;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    const-string v4, "HTTP/1.1 200 OK\n"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 416
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_6

    :cond_d
    move-object/from16 v24, v5

    .line 427
    .end local v5    # "server":Ljava/net/Socket;
    .restart local v24    # "server":Ljava/net/Socket;
    goto/16 :goto_5

    .line 436
    .end local v20    # "proxy":Ljava/net/Proxy;
    .end local v24    # "server":Ljava/net/Socket;
    .restart local v5    # "server":Ljava/net/Socket;
    :cond_e
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_8

    .line 420
    .end local v5    # "server":Ljava/net/Socket;
    .restart local v20    # "proxy":Ljava/net/Proxy;
    .restart local v24    # "server":Ljava/net/Socket;
    :catch_5
    move-exception v16

    move-object/from16 v5, v24

    .end local v24    # "server":Ljava/net/Socket;
    .restart local v5    # "server":Ljava/net/Socket;
    goto :goto_a

    .line 351
    .end local v5    # "server":Ljava/net/Socket;
    .end local v7    # "url":Ljava/net/URI;
    .end local v9    # "authHeader":Ljava/lang/String;
    .end local v12    # "host":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v19    # "port":I
    .end local v20    # "proxy":Ljava/net/Proxy;
    .restart local v26    # "url":Ljava/net/URI;
    :catch_6
    move-exception v11

    move-object/from16 v7, v26

    .end local v26    # "url":Ljava/net/URI;
    .restart local v7    # "url":Ljava/net/URI;
    goto/16 :goto_9

    .restart local v9    # "authHeader":Ljava/lang/String;
    .restart local v12    # "host":Ljava/lang/String;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .restart local v19    # "port":I
    .restart local v24    # "server":Ljava/net/Socket;
    :cond_f
    move-object/from16 v5, v24

    .end local v24    # "server":Ljava/net/Socket;
    .restart local v5    # "server":Ljava/net/Socket;
    goto/16 :goto_7
.end method
