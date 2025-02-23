.class public Landroid/net/PacProxySelector;
.super Ljava/net/ProxySelector;
.source "PacProxySelector.java"


# static fields
.field private static final PROXY:Ljava/lang/String; = "PROXY "

.field public static final PROXY_SERVICE:Ljava/lang/String; = "com.android.net.IProxyService"

.field private static final SOCKS:Ljava/lang/String; = "SOCKS "

.field private static final TAG:Ljava/lang/String; = "PacProxySelector"


# instance fields
.field private final mDefaultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyService:Lcom/android/net/IProxyService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    const-string v0, "com.android.net.IProxyService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object v0

    iput-object v0, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    iget-object v0, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v0, :cond_0

    const-string v0, "PacProxySelector"

    const-string v1, "PacManager: no proxy service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/Proxy;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/net/PacProxySelector;->mDefaultList:Ljava/util/List;

    return-void
.end method

.method private static parseResponse(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "response"    # Ljava/lang/String;
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
    const-string v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "split":[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .local v7, "trimmed":Ljava/lang/String;
    const-string v8, "DIRECT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v8, "PROXY "

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    const-string v9, "PROXY "

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/PacProxySelector;->proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v3

    .local v3, "proxy":Ljava/net/Proxy;
    if-eqz v3, :cond_0

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "proxy":Ljava/net/Proxy;
    :cond_2
    const-string v8, "SOCKS "

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const-string v9, "SOCKS "

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/PacProxySelector;->proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v3

    .restart local v3    # "proxy":Ljava/net/Proxy;
    if-eqz v3, :cond_0

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "proxy":Ljava/net/Proxy;
    .end local v5    # "s":Ljava/lang/String;
    .end local v7    # "trimmed":Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v4
.end method

.method private static proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;
    .locals 7
    .param p0, "type"    # Ljava/net/Proxy$Type;
    .param p1, "hostPortString"    # Ljava/lang/String;

    .prologue
    :try_start_0
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "hostPort":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .local v1, "host":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "port":I
    new-instance v4, Ljava/net/Proxy;

    invoke-static {v1, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "hostPort":[Ljava/lang/String;
    .end local v3    # "port":I
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v4, "PacProxySelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse proxy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .param p3, "failure"    # Ljava/io/IOException;

    .prologue
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 11
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v1, :cond_0

    const-string v1, "com.android.net.IProxyService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    :cond_0
    iget-object v1, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v1, :cond_1

    const-string v1, "PacProxySelector"

    const-string/jumbo v2, "select: no proxy service return NO_PROXY"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/Proxy;

    const/4 v2, 0x0

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v9, 0x0

    .local v9, "response":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "http"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v4

    const-string v5, "/"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local p1    # "uri":Ljava/net/URI;
    .local v0, "uri":Ljava/net/URI;
    move-object p1, v0

    .end local v0    # "uri":Ljava/net/URI;
    .restart local p1    # "uri":Ljava/net/URI;
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .local v10, "urlString":Ljava/lang/String;
    :goto_1
    :try_start_1
    iget-object v1, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v10}, Lcom/android/net/IProxyService;->resolvePacFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    :goto_2
    if-nez v9, :cond_3

    iget-object v1, p0, Landroid/net/PacProxySelector;->mDefaultList:Ljava/util/List;

    goto :goto_0

    .end local v10    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/net/URISyntaxException;
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "urlString":Ljava/lang/String;
    goto :goto_1

    .end local v8    # "e":Ljava/net/URISyntaxException;
    .end local v10    # "urlString":Ljava/lang/String;
    :catch_1
    move-exception v8

    .local v8, "e":Ljava/net/MalformedURLException;
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "urlString":Ljava/lang/String;
    goto :goto_1

    .end local v8    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "PacProxySelector"

    const-string v2, "Error resolving PAC File"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {v9}, Landroid/net/PacProxySelector;->parseResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
