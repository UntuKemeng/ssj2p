.class public Lcom/android/server/connectivity/PacManager;
.super Ljava/lang/Object;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PAC_REFRESH:Ljava/lang/String; = "android.net.proxy.PAC_REFRESH"

.field private static final DEFAULT_DELAYS:Ljava/lang/String; = "8 32 120 14400 43200"

.field private static final DELAY_1:I = 0x0

.field private static final DELAY_4:I = 0x3

.field private static final DELAY_LONG:I = 0x4

.field public static final KEY_PROXY:Ljava/lang/String; = "keyProxy"

.field private static final MAX_PAC_SIZE:J = 0x1312d00L

.field public static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field public static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field public static final PAC_SERVICE_NAME:Ljava/lang/String; = "com.android.net.IProxyService"

.field public static final PROXY_PACKAGE:Ljava/lang/String; = "com.android.proxyhandler"

.field public static final PROXY_SERVICE:Ljava/lang/String; = "com.android.proxyhandler.ProxyService"

.field private static final TAG:Ljava/lang/String; = "PacManager"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectivityHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentDelay:I

.field private mCurrentPac:Ljava/lang/String;

.field private mEnterpriseProxyMessage:I

.field private mEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

.field private mHasDownloaded:Z

.field private mHasSentBroadcast:Z

.field private mIsEnterpriseProxy:Z

.field private mLastPort:I

.field private final mNetThread:Landroid/os/HandlerThread;

.field private final mNetThreadHandler:Landroid/os/Handler;

.field private mOldProxy:Landroid/net/ProxyInfo;

.field private mPacDownloader:Ljava/lang/Runnable;

.field private mPacRefreshIntent:Landroid/app/PendingIntent;

.field private mPacUrl:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mProxyLock"
    .end annotation
.end field

.field private mProxyConnection:Landroid/content/ServiceConnection;

.field private final mProxyLock:Ljava/lang/Object;

.field private mProxyMessage:I

.field private mProxyService:Lcom/android/net/IProxyService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mProxyLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "proxyMessage"    # I

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Lcom/android/server/connectivity/PacManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$1;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "android.pacmanager"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThread:Landroid/os/HandlerThread;

    .line 157
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    .line 159
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 160
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mNetThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    .line 164
    new-instance v0, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacManager;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    iput-object p2, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    .line 167
    iput p3, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "proxyMessage"    # I
    .param p4, "enterpriseProxyMessage"    # I

    .prologue
    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 173
    iput p4, p0, Lcom/android/server/connectivity/PacManager;->mEnterpriseProxyMessage:I

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/PacManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Lcom/android/net/IProxyService;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/PacManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/PacManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/connectivity/PacManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    return p1
.end method

.method static synthetic access$200(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/server/connectivity/PacManager;->get(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScript(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/PacManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->sendProxyIfNeeded()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->longSchedule()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->reschedule()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    return-object v0
.end method

.method private bind()V
    .locals 4

    .prologue
    const v3, 0x40000005    # 2.0000012f

    .line 335
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 336
    const-string v1, "PacManager"

    const-string v2, "No context for binding"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_0
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x0

    .line 340
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 341
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 342
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.pacprocessor"

    const-string v2, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mIsEnterpriseProxy:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 348
    :cond_2
    new-instance v1, Lcom/android/server/connectivity/PacManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$2;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 380
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 388
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mIsEnterpriseProxy:Z

    if-eqz v1, :cond_4

    .line 389
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 390
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-virtual {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->startServer()V

    .line 391
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    new-instance v2, Lcom/android/server/connectivity/PacManager$3;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/PacManager$3;-><init>(Lcom/android/server/connectivity/PacManager;)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->setCallback(Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;)V

    goto :goto_0

    .line 385
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    goto :goto_1

    .line 416
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 417
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.proxyhandler"

    const-string v2, "com.android.proxyhandler.ProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    new-instance v1, Lcom/android/server/connectivity/PacManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$4;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 451
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method private static get(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "pacUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0x1312d00

    .line 253
    new-instance v5, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 254
    .local v5, "url":Ljava/net/URL;
    sget-object v7, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v5, v7}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v6

    .line 255
    .local v6, "urlConnection":Ljava/net/URLConnection;
    const/16 v7, 0xbb8

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 256
    const/16 v7, 0xfa0

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 257
    const-wide/16 v2, -0x1

    .line 259
    .local v2, "contentLength":J
    :try_start_0
    const-string v7, "Content-Length"

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 263
    :goto_0
    cmp-long v7, v2, v10

    if-lez v7, :cond_0

    .line 264
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PAC too big: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 266
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 267
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 269
    .local v0, "buffer":[B
    :cond_1
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "count":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    .line 270
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 271
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    int-to-long v8, v7

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 272
    new-instance v7, Ljava/io/IOException;

    const-string v8, "PAC too big"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 275
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 260
    .end local v0    # "buffer":[B
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "count":I
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private getDownloadDelay(I)J
    .locals 4
    .param p1, "delayIndex"    # I

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getPacChangeDelay()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "list":[Ljava/lang/String;
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 309
    aget-object v1, v0, p1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 311
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getNextDelay(I)I
    .locals 1
    .param p1, "currentDelay"    # I

    .prologue
    const/4 v0, 0x3

    .line 279
    add-int/lit8 p1, p1, 0x1

    if-le p1, v0, :cond_0

    move p1, v0

    .line 282
    .end local p1    # "currentDelay":I
    :cond_0
    return p1
.end method

.method private getPacChangeDelay()Ljava/lang/String;
    .locals 5

    .prologue
    .line 296
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 299
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "conn.pac_change_delay"

    const-string v4, "8 32 120 14400 43200"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "defaultDelay":Ljava/lang/String;
    const-string/jumbo v3, "pac_change_delay"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "val":Ljava/lang/String;
    if-nez v2, :cond_0

    .end local v1    # "defaultDelay":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "defaultDelay":Ljava/lang/String;
    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method private longSchedule()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 287
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    .line 288
    return-void
.end method

.method private reschedule()V
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->getNextDelay(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 292
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    .line 293
    return-void
.end method

.method private sendPacBroadcast(Landroid/net/ProxyInfo;)V
    .locals 4
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 513
    iget-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mIsEnterpriseProxy:Z

    if-eqz v1, :cond_0

    .line 514
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/net/ProxyInfo;->setEnterpriseProxy(I)V

    .line 516
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 517
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "newProxy"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 518
    const-string/jumbo v1, "oldProxy"

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mOldProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 520
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/server/connectivity/PacManager;->mEnterpriseProxyMessage:I

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 524
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private declared-synchronized sendProxyIfNeeded()V
    .locals 3

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 534
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 530
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Landroid/net/ProxyInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    invoke-direct {v0, v1, v2}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->sendPacBroadcast(Landroid/net/ProxyInfo;)V

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setCurrentProxyScript(Ljava/lang/String;)Z
    .locals 3
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v1, :cond_0

    .line 322
    const-string v1, "PacManager"

    const-string/jumbo v2, "setCurrentProxyScript: no proxy service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v1, 0x0

    .line 331
    :goto_0
    return v1

    .line 326
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v1, p1}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    .line 327
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PacManager"

    const-string v2, "Unable to set PAC file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setDownloadIn(I)V
    .locals 8
    .param p1, "delayIndex"    # I

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->getDownloadDelay(I)J

    move-result-wide v0

    .line 316
    .local v0, "delay":J
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 317
    .local v2, "timeTillTrigger":J
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v4

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 318
    return-void
.end method

.method private unbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 456
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 458
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 462
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 464
    :cond_1
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    .line 465
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    .line 466
    return-void
.end method

.method private unbind(ZZ)V
    .locals 5
    .param p1, "keepPacOn"    # Z
    .param p2, "keepEnterpriseOn"    # Z

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 470
    if-nez p1, :cond_2

    .line 474
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    if-eqz v1, :cond_0

    .line 476
    const-string v1, "PacManager"

    const-string/jumbo v2, "unbind - Trying to stop PAC service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v1}, Lcom/android/net/IProxyService;->stopPacSystem()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 483
    const-string v1, "PacManager"

    const-string/jumbo v2, "unbind - unbind mConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 485
    iput-object v4, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 487
    :cond_1
    iput-object v4, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    .line 490
    :cond_2
    :goto_0
    if-eqz p2, :cond_6

    .line 493
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_3

    .line 494
    const-string v1, "PacManager"

    const-string/jumbo v2, "unbind - unbind mProxyConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 496
    iput-object v4, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 497
    iput v3, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    .line 509
    :cond_3
    :goto_1
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PacManager"

    const-string v2, "Failed to stop PAC service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_4

    .line 483
    const-string v1, "PacManager"

    const-string/jumbo v2, "unbind - unbind mConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 485
    iput-object v4, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 487
    :cond_4
    iput-object v4, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    goto :goto_0

    .line 482
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_5

    .line 483
    const-string v2, "PacManager"

    const-string/jumbo v3, "unbind - unbind mConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 485
    iput-object v4, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 487
    :cond_5
    iput-object v4, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    throw v1

    .line 502
    :cond_6
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    if-eqz v1, :cond_3

    .line 503
    const-string v1, "PacManager"

    const-string/jumbo v2, "unbind - unbind mEnterpriseProxyServer.stopServer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-virtual {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->stopServer()V

    .line 505
    iput-object v4, p0, Lcom/android/server/connectivity/PacManager;->mEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 506
    iput v3, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z
    .locals 6
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 195
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getEnterpriseProxy()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/connectivity/PacManager;->mIsEnterpriseProxy:Z

    .line 198
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/connectivity/PacManager;->mIsEnterpriseProxy:Z

    if-eqz v3, :cond_4

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    if-lez v3, :cond_2

    .line 201
    const-string/jumbo v3, "localhost"

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-ne v3, v4, :cond_2

    .line 243
    :goto_1
    monitor-exit p0

    return v1

    :cond_1
    move v3, v1

    .line 195
    goto :goto_0

    .line 210
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    :try_start_2
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    :cond_3
    iget-boolean v4, p0, Lcom/android/server/connectivity/PacManager;->mIsEnterpriseProxy:Z

    invoke-direct {p0, v1, v4}, Lcom/android/server/connectivity/PacManager;->unbind(ZZ)V

    .line 213
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mOldProxy:Landroid/net/ProxyInfo;

    .line 215
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 216
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    const/4 v1, 0x0

    :try_start_3
    iput v1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 218
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    .line 219
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    .line 220
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 221
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->bind()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v1, v2

    .line 222
    goto :goto_1

    .line 216
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 195
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 224
    :cond_4
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 225
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 226
    :try_start_7
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 227
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    .line 228
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_5

    .line 230
    :try_start_8
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v3}, Lcom/android/net/IProxyService;->stopPacSystem()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 234
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    .line 240
    :cond_5
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/connectivity/PacManager;->unbind(ZZ)V

    .line 242
    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_b
    const-string v3, "PacManager"

    const-string v4, "Failed to stop PAC service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 234
    :try_start_c
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    goto :goto_2

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_3
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
.end method
