.class public Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
.super Ljava/lang/Thread;
.source "EnterpriseProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;,
        Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;,
        Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;,
        Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;,
        Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;
    }
.end annotation


# static fields
.field private static final CONNECT:Ljava/lang/String; = "CONNECT"

.field private static final DBG:Z = true

.field private static final HEADER_CONNECTION:Ljava/lang/String; = "connection"

.field private static final HEADER_PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field private static final HTTP_OK:Ljava/lang/String; = "HTTP/1.1 200 OK\n"

.field private static final MEMORY_RAM_PERCENTAGE:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "EnterpriseProxyServer"

.field private static final sAuthPriorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/proxy/auth/AuthenticationState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

.field private static sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field private static sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sProxyInfoCache:Landroid/net/ProxyInfo;


# instance fields
.field private mCacheCleanerTimer:Ljava/util/Timer;

.field private mCallback:Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;

.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

.field public mIsRunning:Z

.field private mPort:I

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Basic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NTLM"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthPriorities:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCacheCleanerTimer:Ljava/util/Timer;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EnterpriseProxyHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mHandler:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->initCaches()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getRequiredAuthenticationType(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getConnectivityManagerService()Lcom/android/server/ConnectivityService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/ProxyInfo;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .locals 0
    .param p0, "x0"    # Landroid/net/ProxyInfo;

    .prologue
    sput-object p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    .param p1, "x1"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->onCredentialsReceived(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;)V

    return-void
.end method

.method public static buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "requestLine"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "HEAD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    if-le v1, v2, :cond_0

    aget-object v1, p0, v3

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->convertUrlForAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    if-le v1, v2, :cond_1

    aget-object v1, p0, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Connection: keep-alive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Proxy-Connection: keep-alive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->convertUrlForAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    aget-object v1, p0, v3

    goto :goto_1
.end method

.method private checkCredentialsReceived(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)Z
    .locals 7
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "stateCache"    # Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
    .param p3, "callback"    # Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    .prologue
    invoke-virtual {p2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxyAuthenticator()Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v2

    .local v2, "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    const/4 v0, -0x1

    .local v0, "authenticationState":I
    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getRequestLine()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "splitLine":[Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-interface {v2, p1, v4, v3}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I

    move-result v0

    const-string v4, "EnterpriseProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCredentialsReceived: authentication status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3, v0}, Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;->onAuthenticationResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "splitLine":[Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    .restart local v3    # "splitLine":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "EnterpriseProxyServer"

    const-string v5, "Failed talking with proxy credentials callback"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "splitLine":[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static convertUrlForAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    const-string/jumbo v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static getAvailableMemory()J
    .locals 4

    .prologue
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .local v0, "ams":Lcom/android/server/am/ActivityManagerService;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .local v1, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v2
.end method

.method private getConnectivityManagerService()Lcom/android/server/ConnectivityService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    return-object v0
.end method

.method public static getLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLine(Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "diffEmptyLine"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLine(Ljava/io/InputStream;ZI)Ljava/lang/String;
    .locals 13
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "diffEmptyLine"    # Z
    .param p2, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "byteBuffer":I
    if-gez v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    const-string v5, ""

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getAvailableMemory()J

    move-result-wide v10

    long-to-float v9, v10

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v10

    float-to-long v6, v9

    .local v6, "maxLineSize":J
    const/4 v9, -0x1

    if-eq p2, v9, :cond_5

    move v4, v5

    .local v4, "checkContentLength":Z
    :goto_1
    const-wide/16 v2, 0x2

    .local v2, "bytesRead":J
    :cond_2
    const/16 v9, 0xd

    if-eq v1, v9, :cond_3

    int-to-char v9, v1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v4, :cond_6

    mul-int/lit8 v9, p2, 0x2

    int-to-long v10, v9

    cmp-long v9, v2, v10

    if-ltz v9, :cond_6

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .end local v2    # "bytesRead":J
    .end local v4    # "checkContentLength":Z
    :cond_5
    move v4, v8

    goto :goto_1

    .restart local v2    # "bytesRead":J
    .restart local v4    # "checkContentLength":Z
    :cond_6
    cmp-long v9, v2, v6

    if-lez v9, :cond_7

    const-string v9, "EnterpriseProxyServer"

    const-string v10, "Read more bytes (%d) than the maximum supported (%d) for a single line"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v5

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    const/16 v9, 0xa

    if-eq v1, v9, :cond_4

    if-gez v1, :cond_2

    goto :goto_2
.end method

.method private getRequiredAuthenticationType(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .locals 18
    .param p1, "proxyString"    # Ljava/lang/String;
    .param p2, "requestLine"    # [Ljava/lang/String;

    .prologue
    new-instance v9, Lcom/android/server/enterprise/proxy/auth/NoCredentialsAuthenticator;

    invoke-direct {v9}, Lcom/android/server/enterprise/proxy/auth/NoCredentialsAuthenticator;-><init>()V

    .local v9, "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    const/4 v8, 0x0

    .local v8, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "authType":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "authTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "authenticationRequired":Z
    const-string v14, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .local v12, "splitProxy":[Ljava/lang/String;
    new-instance v11, Ljava/net/Socket;

    const/4 v14, 0x0

    aget-object v14, v12, v14

    const/4 v15, 0x1

    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-direct {v11, v14, v15}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v11, "server":Ljava/net/Socket;
    const/4 v15, 0x0

    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .local v6, "is":Ljava/io/InputStream;
    :cond_0
    invoke-static {v6}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    if-eqz v3, :cond_1

    const-string v14, "Proxy-Authenticate:"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x1

    aget-object v14, v14, v16

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    const-string v14, "HTTP/1."

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x1

    aget-object v14, v14, v16

    const-string v16, "407"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v14

    if-gtz v14, :cond_0

    if-eqz v11, :cond_3

    if-eqz v15, :cond_4

    :try_start_2
    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_0
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    move-object v10, v9

    .end local v9    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .local v10, "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    :goto_1
    :try_start_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "item":Ljava/lang/String;
    if-eqz v7, :cond_7

    const-string v14, "NTLM"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->hasPriority(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)Z

    move-result v14

    if-eqz v14, :cond_7

    new-instance v9, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;

    invoke-direct {v9}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v10    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v9    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    :goto_2
    move-object v10, v9

    .end local v9    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v10    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    goto :goto_1

    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "item":Ljava/lang/String;
    .end local v10    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v9    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    :catch_0
    move-exception v13

    .local v13, "x2":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v15, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .end local v2    # "authTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "authenticationRequired":Z
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v11    # "server":Ljava/net/Socket;
    .end local v12    # "splitProxy":[Ljava/lang/String;
    .end local v13    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    :goto_3
    const-string v14, "EnterpriseProxyServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getRequiredAuthenticationType IOException "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    const-string v15, "EnterpriseProxyServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Returning authType "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v9, :cond_9

    invoke-interface {v9}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->getType()Ljava/lang/String;

    move-result-object v14

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " for "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    .restart local v2    # "authTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "authenticationRequired":Z
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v11    # "server":Ljava/net/Socket;
    .restart local v12    # "splitProxy":[Ljava/lang/String;
    :cond_4
    :try_start_6
    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .end local v6    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v14

    :try_start_7
    throw v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v15

    move-object/from16 v17, v15

    move-object v15, v14

    move-object/from16 v14, v17

    :goto_6
    if-eqz v11, :cond_5

    if-eqz v15, :cond_6

    :try_start_8
    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_5
    :goto_7
    :try_start_9
    throw v14

    :catch_3
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v15, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_7

    .end local v9    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "item":Ljava/lang/String;
    .restart local v10    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    :cond_7
    if-eqz v7, :cond_a

    :try_start_a
    const-string v14, "Basic"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->hasPriority(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)Z

    move-result v14

    if-eqz v14, :cond_a

    new-instance v9, Lcom/android/server/enterprise/proxy/auth/basic/BasicAuthenticator;

    invoke-direct {v9}, Lcom/android/server/enterprise/proxy/auth/basic/BasicAuthenticator;-><init>()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .end local v10    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v9    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    goto/16 :goto_2

    .end local v7    # "item":Ljava/lang/String;
    .end local v9    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v10    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    :cond_8
    move-object v9, v10

    .end local v10    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v9    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    goto :goto_4

    .end local v2    # "authTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "authenticationRequired":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v11    # "server":Ljava/net/Socket;
    .end local v12    # "splitProxy":[Ljava/lang/String;
    :cond_9
    const-string/jumbo v14, "null"

    goto :goto_5

    .end local v9    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v2    # "authTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "authenticationRequired":Z
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v10    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v11    # "server":Ljava/net/Socket;
    .restart local v12    # "splitProxy":[Ljava/lang/String;
    :catch_4
    move-exception v4

    move-object v9, v10

    .end local v10    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v9    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    goto/16 :goto_3

    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v14

    goto :goto_6

    .end local v9    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "item":Ljava/lang/String;
    .restart local v10    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    :cond_a
    move-object v9, v10

    .end local v10    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v9    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    goto/16 :goto_2
.end method

.method private hasPriority(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)Z
    .locals 3
    .param p1, "newAuth"    # Ljava/lang/String;
    .param p2, "current"    # Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    .prologue
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->getType()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentAuth":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthPriorities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthPriorities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .end local v0    # "currentAuth":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .restart local v0    # "currentAuth":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initCaches()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_2
    return-void
.end method

.method private onCredentialsReceived(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;)V
    .locals 12
    .param p1, "info"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;

    .prologue
    invoke-virtual {p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->getCallback()Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    move-result-object v1

    .local v1, "callback":Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v10, "result"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .local v7, "result":I
    const-string/jumbo v10, "proxy"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "proxyString":Ljava/lang/String;
    const-string v10, "credentials"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "credentials":Ljava/lang/String;
    sget-object v10, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .local v9, "stateCacheList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/proxy/auth/AuthenticationState;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    if-nez v7, :cond_3

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-direct {p0, v3, v10, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->checkCredentialsReceived(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "EnterpriseProxyServer"

    const-string/jumbo v11, "onCredentialsReceived: retrying proxy connection"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    .local v8, "stateCache":Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
    new-instance v5, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;

    const/4 v10, 0x0

    invoke-direct {v5, p0, v8, v3, v10}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;)V

    .local v5, "parser":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;
    iget-object v10, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v10, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .end local v5    # "parser":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;
    .end local v8    # "stateCache":Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
    :cond_2
    sget-object v10, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v10, -0x2

    if-ne v7, v10, :cond_0

    const-string v10, "EnterpriseProxyServer"

    const-string/jumbo v11, "onCredentialsReceived: canceling dialog"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    .restart local v8    # "stateCache":Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
    invoke-virtual {v8}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getSource()Ljava/net/Socket;

    move-result-object v2

    .local v2, "clientConnection":Ljava/net/Socket;
    if-eqz v2, :cond_4

    :try_start_0
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v10

    goto :goto_2

    .end local v2    # "clientConnection":Ljava/net/Socket;
    .end local v8    # "stateCache":Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
    :cond_5
    sget-object v10, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static sendLine(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public static sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized clearCaches()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->clearCaches(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearCaches(Z)V
    .locals 2
    .param p1, "clearCredentials"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseProxyServer"

    const-string v1, "Clearing caches"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I

    return v0
.end method

.method public isBound()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCredentialsReceived(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mHandler:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mHandler:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mHandler:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    :try_start_0
    new-instance v4, Ljava/net/ServerSocket;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->setPort(I)V

    const-string v4, "EnterpriseProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Waiting clients to connect. Port: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .local v3, "socket":Ljava/net/Socket;
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;)V

    .local v2, "parser":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v2    # "parser":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;
    .end local v3    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/net/SocketException;
    const-string v4, "EnterpriseProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start proxy server "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    :goto_1
    iput-boolean v7, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    return-void

    .restart local v3    # "socket":Ljava/net/Socket;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v3    # "socket":Ljava/net/Socket;
    :catch_2
    move-exception v1

    .local v1, "e1":Ljava/io/IOException;
    const-string v4, "EnterpriseProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start proxy server "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized setCallback(Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I

    invoke-interface {p1, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;->setProxyPort(I)V

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCallback:Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCallback:Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCallback:Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;

    invoke-interface {v0, p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;->setProxyPort(I)V

    :cond_0
    iput p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startServer()V
    .locals 8

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseProxyServer"

    const-string v1, "Calling startServer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    if-nez v0, :cond_0

    const-string v0, "EnterpriseProxyServer"

    const-string v1, "Enterprise Proxy server not running, starting it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCacheCleanerTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopServer()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseProxyServer"

    const-string v2, "Calling stopServer()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCacheCleanerTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCacheCleanerTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
