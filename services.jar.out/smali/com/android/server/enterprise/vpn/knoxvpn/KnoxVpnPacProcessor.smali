.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
.super Ljava/lang/Object;
.source "KnoxVpnPacProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DOWNLOAD_STATUS_FAILURE:I = 0x1

.field private static final DOWNLOAD_STATUS_RETRY:I = 0x2

.field private static final DOWNLOAD_STATUS_SUCCESS:I = 0x0

.field private static final FINAL_RETRY_ATTEMPT:I = 0xa

.field private static final INITIAL_RETRY_ATTEMPT:I = 0x0

.field private static final INVALID_FD:I = -0x1

.field private static final INVALID_PORT:I = -0x1

.field private static final PAC_IDENTIFIER:Ljava/lang/String; = "function"

.field private static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field private static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field private static final TAG:Ljava/lang/String; = "KnoxVpnPacProcessor"

.field private static mContext:Landroid/content/Context;

.field private static mDownloadStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mDownloadUrlThread:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;",
            ">;"
        }
    .end annotation
.end field

.field private static mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field private static mProxyService:Lcom/android/net/IProxyService;

.field private static mRetryAttempt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 82
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    .line 83
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    .line 88
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    .line 90
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 97
    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic access$002(Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;
    .locals 0
    .param p0, "x0"    # Lcom/android/net/IProxyService;

    .prologue
    .line 70
    sput-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private checkIfRetryNeeded(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 547
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 548
    .local v1, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 549
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 550
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 551
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading the pac url failed, going to retry for the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 556
    :goto_0
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    .line 575
    .end local v1    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_0
    :goto_1
    return-void

    .line 557
    .restart local v1    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 558
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading the pac url failed even after the final retry attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removeDownloadThreadDetails(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 572
    .end local v1    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured while retry attempt to download pac file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 562
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_2
    :try_start_3
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading the pac url failed for the first time, start the retry process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    goto :goto_1

    .line 567
    :cond_3
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vpn profile is in unknown state, resetting the retry-Status to default value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 555
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method private closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "in"    # Ljava/io/BufferedReader;
    .param p3, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 531
    if-eqz p1, :cond_0

    .line 532
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 534
    :cond_0
    if-eqz p3, :cond_1

    .line 535
    invoke-virtual {p3}, Ljava/io/PrintStream;->close()V

    .line 537
    :cond_1
    if-eqz p2, :cond_2

    .line 538
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :cond_2
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, "IOException occured while trying to close the socket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 35
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 377
    monitor-enter p1

    .line 378
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacUrlDownloadStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    :goto_0
    return-void

    .line 379
    :cond_0
    const/16 v16, 0x0

    .line 380
    .local v16, "out":Ljava/io/PrintStream;
    const/4 v10, 0x0

    .line 381
    .local v10, "in":Ljava/io/BufferedReader;
    const/16 v25, 0x0

    .line 382
    .local v25, "socket":Ljava/net/Socket;
    const/16 v22, 0x0

    .line 383
    .local v22, "resolvedHostName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 386
    .local v12, "inet4Address":Ljava/lang/String;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Landroid/system/GaiException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v30

    .line 387
    .local v30, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v30, :cond_1

    .line 524
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    monitor-exit p1

    goto :goto_0

    .line 526
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v12    # "inet4Address":Ljava/lang/String;
    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v22    # "resolvedHostName":Ljava/lang/String;
    .end local v25    # "socket":Ljava/net/Socket;
    .end local v30    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catchall_0
    move-exception v32

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v32

    .line 388
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "inet4Address":Ljava/lang/String;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v22    # "resolvedHostName":Ljava/lang/String;
    .restart local v25    # "socket":Ljava/net/Socket;
    .restart local v30    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getMarkForInterface(Ljava/lang/String;)I

    move-result v13

    .line 389
    .local v13, "isKnoxNetId":I
    if-eqz p5, :cond_4

    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v13, v0, :cond_4

    .line 390
    sget-boolean v32, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v32, :cond_2

    const-string v32, "KnoxVpnPacProcessor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "The host name to resolve is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_2
    new-instance v8, Landroid/system/StructAddrinfo;

    invoke-direct {v8}, Landroid/system/StructAddrinfo;-><init>()V

    .line 392
    .local v8, "hints":Landroid/system/StructAddrinfo;
    sget v32, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    move/from16 v0, v32

    iput v0, v8, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 393
    sget v32, Landroid/system/OsConstants;->AF_UNSPEC:I

    move/from16 v0, v32

    iput v0, v8, Landroid/system/StructAddrinfo;->ai_family:I

    .line 394
    sget v32, Landroid/system/OsConstants;->SOCK_STREAM:I

    move/from16 v0, v32

    iput v0, v8, Landroid/system/StructAddrinfo;->ai_socktype:I

    .line 395
    sget-object v32, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v8, v13}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v27

    .line 396
    .local v27, "socketAddresses":[Ljava/net/InetAddress;
    if-eqz v27, :cond_4

    .line 397
    move-object/from16 v5, v27

    .local v5, "arr$":[Ljava/net/InetAddress;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v14, :cond_4

    aget-object v4, v5, v9

    .line 398
    .local v4, "add":Ljava/net/InetAddress;
    instance-of v0, v4, Ljava/net/Inet4Address;

    move/from16 v32, v0

    if-eqz v32, :cond_5

    .line 399
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    .line 400
    sget-boolean v32, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v32, :cond_3

    const-string v32, "KnoxVpnPacProcessor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "The resolved host address is a ipv4 address "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_3
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v12

    .line 402
    const-string v32, "KnoxVpnPacProcessor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "The inet4Address of the interface is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v4    # "add":Ljava/net/InetAddress;
    .end local v5    # "arr$":[Ljava/net/InetAddress;
    .end local v8    # "hints":Landroid/system/StructAddrinfo;
    .end local v9    # "i$":I
    .end local v14    # "len$":I
    .end local v27    # "socketAddresses":[Ljava/net/InetAddress;
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .local v18, "pacBuilder":Ljava/lang/StringBuilder;
    new-instance v26, Ljava/net/Socket;

    invoke-direct/range {v26 .. v26}, Ljava/net/Socket;-><init>()V
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/system/GaiException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 411
    .end local v25    # "socket":Ljava/net/Socket;
    .local v26, "socket":Ljava/net/Socket;
    :try_start_4
    new-instance v32, Ljava/net/InetSocketAddress;

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v0, v12, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 412
    invoke-virtual/range {v26 .. v26}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v28

    .line 413
    .local v28, "socketFd":Ljava/io/FileDescriptor;
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_6

    .line 414
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnType()I

    move-result v32

    invoke-virtual/range {v28 .. v28}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindSocketToInterfaceWrapper(IIILjava/lang/String;)V

    .line 419
    const/16 v32, 0x2710

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 421
    if-eqz v22, :cond_7

    .line 422
    new-instance v32, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v33, 0x2710

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 426
    invoke-virtual/range {v26 .. v26}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    .line 427
    .local v21, "readFromServer":Ljava/io/InputStream;
    invoke-virtual/range {v26 .. v26}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v31

    .line 428
    .local v31, "writeToServer":Ljava/io/OutputStream;
    new-instance v17, Ljava/io/PrintStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Landroid/system/GaiException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 429
    .end local v16    # "out":Ljava/io/PrintStream;
    .local v17, "out":Ljava/io/PrintStream;
    :try_start_5
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v32, Ljava/io/InputStreamReader;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v32

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_1d
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1b
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_15
    .catch Landroid/system/GaiException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 431
    .end local v10    # "in":Ljava/io/BufferedReader;
    .local v11, "in":Ljava/io/BufferedReader;
    :try_start_6
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "GET "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " HTTP/1.1\r"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Host: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\r"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    const-string v32, "Connection: close\r"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 434
    const-string v32, "\r"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintStream;->flush()V

    .line 436
    const/16 v29, 0x0

    .line 437
    .local v29, "startReading":Z
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 438
    .local v15, "line":Ljava/lang/String;
    :goto_2
    if-eqz v15, :cond_b

    .line 439
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 440
    const/16 v29, 0x1

    .line 441
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Landroid/system/GaiException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v15

    .line 442
    goto :goto_2

    .line 397
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v17    # "out":Ljava/io/PrintStream;
    .end local v18    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v21    # "readFromServer":Ljava/io/InputStream;
    .end local v26    # "socket":Ljava/net/Socket;
    .end local v28    # "socketFd":Ljava/io/FileDescriptor;
    .end local v29    # "startReading":Z
    .end local v31    # "writeToServer":Ljava/io/OutputStream;
    .restart local v4    # "add":Ljava/net/InetAddress;
    .restart local v5    # "arr$":[Ljava/net/InetAddress;
    .restart local v8    # "hints":Landroid/system/StructAddrinfo;
    .restart local v9    # "i$":I
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "len$":I
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v25    # "socket":Ljava/net/Socket;
    .restart local v27    # "socketAddresses":[Ljava/net/InetAddress;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 416
    .end local v4    # "add":Ljava/net/InetAddress;
    .end local v5    # "arr$":[Ljava/net/InetAddress;
    .end local v8    # "hints":Landroid/system/StructAddrinfo;
    .end local v9    # "i$":I
    .end local v14    # "len$":I
    .end local v25    # "socket":Ljava/net/Socket;
    .end local v27    # "socketAddresses":[Ljava/net/InetAddress;
    .restart local v18    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v28    # "socketFd":Ljava/io/FileDescriptor;
    :cond_6
    :try_start_7
    new-instance v32, Ljava/net/SocketException;

    invoke-direct/range {v32 .. v32}, Ljava/net/SocketException;-><init>()V

    throw v32
    :try_end_7
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_7 .. :try_end_7} :catch_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_14
    .catch Landroid/system/GaiException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 483
    .end local v28    # "socketFd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v6

    move-object/from16 v25, v26

    .line 484
    .end local v13    # "isKnoxNetId":I
    .end local v18    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v26    # "socket":Ljava/net/Socket;
    .end local v30    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v6, "e":Ljava/net/ConnectException;
    .restart local v25    # "socket":Ljava/net/Socket;
    :goto_3
    :try_start_8
    const-string v32, "KnoxVpnPacProcessor"

    const-string v33, "ConnectException occured while trying to download the pac url"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 486
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 524
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 526
    .end local v6    # "e":Ljava/net/ConnectException;
    :goto_4
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 424
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v13    # "isKnoxNetId":I
    .restart local v18    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v28    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v30    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_7
    :try_start_a
    new-instance v32, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v32 .. v32}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v32
    :try_end_a
    .catch Ljava/net/ConnectException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_a .. :try_end_a} :catch_18
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_14
    .catch Landroid/system/GaiException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 488
    .end local v28    # "socketFd":Ljava/io/FileDescriptor;
    :catch_1
    move-exception v6

    move-object/from16 v25, v26

    .line 489
    .end local v13    # "isKnoxNetId":I
    .end local v18    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v26    # "socket":Ljava/net/Socket;
    .end local v30    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v6, "e":Ljava/net/SocketException;
    .restart local v25    # "socket":Ljava/net/Socket;
    :goto_5
    :try_start_b
    const-string v32, "KnoxVpnPacProcessor"

    const-string v33, "SocketException occured while trying to download the pac url"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 491
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 524
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4

    .line 444
    .end local v6    # "e":Ljava/net/SocketException;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "isKnoxNetId":I
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v18    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "readFromServer":Ljava/io/InputStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v28    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v29    # "startReading":Z
    .restart local v30    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v31    # "writeToServer":Ljava/io/OutputStream;
    :cond_8
    if-eqz v29, :cond_a

    .line 445
    :try_start_d
    sget-boolean v32, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v32, :cond_9

    const-string v32, "KnoxVpnPacProcessor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "The pac line printed is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_9
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v32, "\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 452
    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 453
    .local v19, "pacContent":Ljava/lang/String;
    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_f

    .line 454
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I
    :try_end_d
    .catch Ljava/net/ConnectException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_16
    .catch Landroid/system/GaiException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-result v20

    .line 455
    .local v20, "pacContentLength":I
    const/16 v24, 0x0

    .line 457
    .local v24, "savePacScript":Z
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/android/net/IProxyService;->setPacFileForKnoxProfile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_16
    .catch Landroid/system/GaiException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-result v24

    .line 464
    :goto_6
    if-eqz v24, :cond_e

    .line 465
    :try_start_f
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 467
    const-string v32, "KnoxVpnPacProcessor"

    const-string v33, "The pac file has been downloaded successfully,cancelling further retry attempts"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removeDownloadThreadDetails(Ljava/lang/String;)V

    .line 471
    if-eqz v30, :cond_d

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_d

    .line 472
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v32

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-interface {v0, v13, v1, v2}, Lcom/android/net/IProxyService;->setMiscValueForPacProfile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v23

    .line 473
    .local v23, "saveMiscValue":Z
    const-string v32, "KnoxVpnPacProcessor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "The Misc value for the pac file has been set successfully "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/net/ConnectException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_16
    .catch Landroid/system/GaiException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 524
    .end local v20    # "pacContentLength":I
    .end local v23    # "saveMiscValue":Z
    .end local v24    # "savePacScript":Z
    :cond_d
    :goto_7
    :try_start_10
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v11, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .line 525
    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto/16 :goto_4

    .line 458
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v20    # "pacContentLength":I
    .restart local v24    # "savePacScript":Z
    .restart local v26    # "socket":Ljava/net/Socket;
    :catch_2
    move-exception v6

    .line 459
    .local v6, "e":Ljava/lang/NullPointerException;
    :try_start_11
    const-string v32, "KnoxVpnPacProcessor"

    const-string v33, "Exception occured due to the pac service not intialized"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v11, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 461
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 483
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v15    # "line":Ljava/lang/String;
    .end local v19    # "pacContent":Ljava/lang/String;
    .end local v20    # "pacContentLength":I
    .end local v24    # "savePacScript":Z
    .end local v29    # "startReading":Z
    :catch_3
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto/16 :goto_3

    .line 476
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v19    # "pacContent":Ljava/lang/String;
    .restart local v20    # "pacContentLength":I
    .restart local v24    # "savePacScript":Z
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v29    # "startReading":Z
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v11, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 477
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V

    goto :goto_7

    .line 488
    .end local v15    # "line":Ljava/lang/String;
    .end local v19    # "pacContent":Ljava/lang/String;
    .end local v20    # "pacContentLength":I
    .end local v24    # "savePacScript":Z
    .end local v29    # "startReading":Z
    :catch_4
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto/16 :goto_5

    .line 481
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v19    # "pacContent":Ljava/lang/String;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v29    # "startReading":Z
    :cond_f
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/net/ConnectException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Landroid/system/GaiException; {:try_start_11 .. :try_end_11} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_7

    .line 493
    .end local v15    # "line":Ljava/lang/String;
    .end local v19    # "pacContent":Ljava/lang/String;
    .end local v29    # "startReading":Z
    :catch_5
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .line 494
    .end local v13    # "isKnoxNetId":I
    .end local v17    # "out":Ljava/io/PrintStream;
    .end local v18    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v21    # "readFromServer":Ljava/io/InputStream;
    .end local v28    # "socketFd":Ljava/io/FileDescriptor;
    .end local v30    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v31    # "writeToServer":Ljava/io/OutputStream;
    .local v6, "e":Ljava/nio/channels/ClosedByInterruptException;
    .restart local v16    # "out":Ljava/io/PrintStream;
    :goto_8
    :try_start_12
    const-string v32, "KnoxVpnPacProcessor"

    const-string v33, "Downloading the pac url failed due to Interruption, close the existing connections"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 496
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 524
    :try_start_13
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_4

    .line 497
    .end local v6    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :catch_6
    move-exception v6

    .line 498
    .local v6, "e":Ljava/io/IOException;
    :goto_9
    :try_start_14
    const-string v32, "KnoxVpnPacProcessor"

    const-string v33, "IOException occured while trying to download the pac url "

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 500
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 524
    :try_start_15
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_4

    .line 502
    .end local v6    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 503
    .local v6, "e":Landroid/system/GaiException;
    :goto_a
    :try_start_16
    const-string v32, "KnoxVpnPacProcessor"

    const-string v33, "GaiException occured while trying to download the pac url "

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 505
    const-wide/16 v32, 0x1388

    :try_start_17
    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 512
    :try_start_18
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 513
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 524
    :try_start_19
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_4

    .line 506
    :catch_8
    move-exception v7

    .line 507
    .local v7, "e1":Ljava/lang/InterruptedException;
    :try_start_1a
    const-string v32, "KnoxVpnPacProcessor"

    const-string v33, "Got Interruption while trying to resolve the domain name "

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 509
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 524
    :try_start_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_0

    .line 515
    .end local v6    # "e":Landroid/system/GaiException;
    .end local v7    # "e1":Ljava/lang/InterruptedException;
    :catch_9
    move-exception v6

    .line 516
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :goto_b
    :try_start_1c
    const-string v32, "KnoxVpnPacProcessor"

    const-string v33, "cannot find the dns server to resolve the pac url"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 518
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 524
    :try_start_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_4

    .line 519
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v6

    .line 520
    .local v6, "e":Ljava/lang/Exception;
    :goto_c
    :try_start_1e
    const-string v32, "KnoxVpnPacProcessor"

    const-string v33, "Exception occured while trying to pac url "

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 522
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 524
    :try_start_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    goto/16 :goto_4

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v32

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    throw v32
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v13    # "isKnoxNetId":I
    .restart local v18    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v30    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catchall_2
    move-exception v32

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    goto :goto_d

    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v21    # "readFromServer":Ljava/io/InputStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v28    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v31    # "writeToServer":Ljava/io/OutputStream;
    :catchall_3
    move-exception v32

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto :goto_d

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    :catchall_4
    move-exception v32

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto :goto_d

    .line 519
    .end local v21    # "readFromServer":Ljava/io/InputStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .end local v28    # "socketFd":Ljava/io/FileDescriptor;
    .end local v31    # "writeToServer":Ljava/io/OutputStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    :catch_b
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    goto :goto_c

    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v21    # "readFromServer":Ljava/io/InputStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v28    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v31    # "writeToServer":Ljava/io/OutputStream;
    :catch_c
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto :goto_c

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    :catch_d
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto :goto_c

    .line 515
    .end local v21    # "readFromServer":Ljava/io/InputStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .end local v28    # "socketFd":Ljava/io/FileDescriptor;
    .end local v31    # "writeToServer":Ljava/io/OutputStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    :catch_e
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    goto/16 :goto_b

    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v21    # "readFromServer":Ljava/io/InputStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v28    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v31    # "writeToServer":Ljava/io/OutputStream;
    :catch_f
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto/16 :goto_b

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    :catch_10
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto/16 :goto_b

    .line 502
    .end local v21    # "readFromServer":Ljava/io/InputStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .end local v28    # "socketFd":Ljava/io/FileDescriptor;
    .end local v31    # "writeToServer":Ljava/io/OutputStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    :catch_11
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    goto/16 :goto_a

    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v21    # "readFromServer":Ljava/io/InputStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v28    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v31    # "writeToServer":Ljava/io/OutputStream;
    :catch_12
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto/16 :goto_a

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    :catch_13
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto/16 :goto_a

    .line 497
    .end local v21    # "readFromServer":Ljava/io/InputStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .end local v28    # "socketFd":Ljava/io/FileDescriptor;
    .end local v31    # "writeToServer":Ljava/io/OutputStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    :catch_14
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    goto/16 :goto_9

    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v21    # "readFromServer":Ljava/io/InputStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v28    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v31    # "writeToServer":Ljava/io/OutputStream;
    :catch_15
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto/16 :goto_9

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    :catch_16
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto/16 :goto_9

    .line 493
    .end local v13    # "isKnoxNetId":I
    .end local v18    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v21    # "readFromServer":Ljava/io/InputStream;
    .end local v28    # "socketFd":Ljava/io/FileDescriptor;
    .end local v30    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v31    # "writeToServer":Ljava/io/OutputStream;
    :catch_17
    move-exception v6

    goto/16 :goto_8

    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v13    # "isKnoxNetId":I
    .restart local v18    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v30    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_18
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    goto/16 :goto_8

    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v21    # "readFromServer":Ljava/io/InputStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v28    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v31    # "writeToServer":Ljava/io/OutputStream;
    :catch_19
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto/16 :goto_8

    .line 488
    .end local v13    # "isKnoxNetId":I
    .end local v18    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v21    # "readFromServer":Ljava/io/InputStream;
    .end local v28    # "socketFd":Ljava/io/FileDescriptor;
    .end local v30    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v31    # "writeToServer":Ljava/io/OutputStream;
    :catch_1a
    move-exception v6

    goto/16 :goto_5

    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v13    # "isKnoxNetId":I
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v18    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "readFromServer":Ljava/io/InputStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v28    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v30    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v31    # "writeToServer":Ljava/io/OutputStream;
    :catch_1b
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto/16 :goto_5

    .line 483
    .end local v13    # "isKnoxNetId":I
    .end local v18    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v21    # "readFromServer":Ljava/io/InputStream;
    .end local v28    # "socketFd":Ljava/io/FileDescriptor;
    .end local v30    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v31    # "writeToServer":Ljava/io/OutputStream;
    :catch_1c
    move-exception v6

    goto/16 :goto_3

    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v25    # "socket":Ljava/net/Socket;
    .restart local v13    # "isKnoxNetId":I
    .restart local v17    # "out":Ljava/io/PrintStream;
    .restart local v18    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "readFromServer":Ljava/io/InputStream;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v28    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v30    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v31    # "writeToServer":Ljava/io/OutputStream;
    :catch_1d
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "socket":Ljava/net/Socket;
    .restart local v25    # "socket":Ljava/net/Socket;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/PrintStream;
    .restart local v16    # "out":Ljava/io/PrintStream;
    goto/16 :goto_3
.end method

.method private extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "pacUrl"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 318
    const/4 v8, 0x0

    .line 319
    .local v8, "protocol":Ljava/lang/String;
    const/4 v5, -0x1

    .line 322
    .local v5, "port":I
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 323
    .local v9, "urlToDownload":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "hostname":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    .line 326
    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v5

    .line 327
    const/4 v1, -0x1

    if-ne v5, v1, :cond_0

    .line 328
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPortFromProtocol(Ljava/lang/String;)I

    move-result v5

    .line 331
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 332
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The current status of the download thread of the profile "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->interrupt()V

    .line 336
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_2
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    .local v0, "downloadUrlThread":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->start()V

    .line 340
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 355
    .end local v0    # "downloadUrlThread":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;
    .end local v3    # "hostname":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v9    # "urlToDownload":Ljava/net/URL;
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v7

    .line 343
    .local v7, "e":Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, "error occured while trying to download the pac file due to unknow url format, remove and create the profile again"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    .end local v7    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v7

    .line 346
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, "error occured while trying to download the pac file due to unknown port number"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 349
    .local v7, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, "error occured while trying to download the pac file due to some values being not intialized successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v7

    .line 352
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, "error occured while trying to download the pac file after the vpn connection is established"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static declared-synchronized getCurrentRetryStatus()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    .line 176
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getDownloadStatus()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    .line 169
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getDownloadThread()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    .line 183
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 162
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMarkForInterface(Ljava/lang/String;)I
    .locals 3
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 627
    const/4 v0, -0x1

    .line 628
    .local v0, "knoxNetworkMark":I
    if-nez p1, :cond_0

    move v1, v0

    .line 636
    .end local v0    # "knoxNetworkMark":I
    .local v1, "knoxNetworkMark":I
    :goto_0
    return v1

    .line 631
    .end local v1    # "knoxNetworkMark":I
    .restart local v0    # "knoxNetworkMark":I
    :cond_0
    const-string/jumbo v2, "ipsec"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 632
    const/16 v0, 0x64

    :cond_1
    :goto_1
    move v1, v0

    .line 636
    .end local v0    # "knoxNetworkMark":I
    .restart local v1    # "knoxNetworkMark":I
    goto :goto_0

    .line 633
    .end local v1    # "knoxNetworkMark":I
    .restart local v0    # "knoxNetworkMark":I
    :cond_2
    const-string/jumbo v2, "tun"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 634
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x65

    goto :goto_1
.end method

.method private declared-synchronized getPacBinder()Lcom/android/net/IProxyService;
    .locals 1

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPacUrlDownloadStatus(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 299
    .local v1, "isScriptDownloaded":Z
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 300
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 313
    :cond_0
    :goto_0
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check to see if the pac url has been downloaded successfully "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return v1

    .line 303
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "error occured while trying to get download status pac file due to some values being not intialized successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, " error occured while trying to get download status pac file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getPortFromProtocol(Ljava/lang/String;)I
    .locals 4
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "port":I
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 370
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 359
    :sswitch_0
    const-string/jumbo v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "ftp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "https"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 361
    :pswitch_0
    const/16 v0, 0x50

    .line 372
    :goto_1
    const-string v1, "KnoxVpnPacProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The pac file is going to be downloaded from the remote port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return v0

    .line 364
    :pswitch_1
    const/16 v0, 0x15

    .line 365
    goto :goto_1

    .line 367
    :pswitch_2
    const/16 v0, 0x1bb

    .line 368
    goto :goto_1

    .line 359
    :sswitch_data_0
    .sparse-switch
        0x18d62 -> :sswitch_1
        0x310888 -> :sswitch_0
        0x5f008eb -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeDownloadThreadDetails(Ljava/lang/String;)V
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 578
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_0
    return-void
.end method

.method private startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V
    .locals 12
    .param p1, "vpnEntry"    # Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .prologue
    const/4 v11, 0x1

    .line 584
    const/4 v1, 0x0

    .line 586
    .local v1, "profileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v1

    .line 587
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 588
    .local v5, "interfaceName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Ljava/lang/String;

    move-result-object v7

    .line 589
    .local v7, "pacUrl":Ljava/lang/String;
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 590
    .local v9, "urlToDownload":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "hostname":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    .line 593
    .local v8, "protocol":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 594
    .local v4, "port":I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 595
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPortFromProtocol(Ljava/lang/String;)I

    move-result v4

    .line 597
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    .line 598
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v10, 0x2

    if-ne v0, v10, :cond_1

    move-object v0, p0

    .line 599
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 615
    .end local v2    # "hostname":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v5    # "interfaceName":Ljava/lang/String;
    .end local v7    # "pacUrl":Ljava/lang/String;
    .end local v8    # "protocol":Ljava/lang/String;
    .end local v9    # "urlToDownload":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v6

    .line 603
    .local v6, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v0, "KnoxVpnPacProcessor"

    const-string/jumbo v10, "retry attempt: Some profile values are not intialized when trying to download the pac url"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v6

    .line 606
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v0, "KnoxVpnPacProcessor"

    const-string/jumbo v10, "retry attempt: Invalid port value is defined when trying to download the pac url"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 608
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 609
    .local v6, "e":Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v0, "KnoxVpnPacProcessor"

    const-string/jumbo v10, "retry attempt: error occured while trying to download the pac file due to unknow url format"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 611
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :catch_3
    move-exception v6

    .line 612
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v0, "KnoxVpnPacProcessor"

    const-string/jumbo v10, "retry attempt: error occured while trying to download the pac file"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized bindPacService()V
    .locals 4

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 137
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "No context for binding"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;

    if-eqz v2, :cond_1

    .line 141
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "Already binded to pac service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 144
    :cond_1
    :try_start_2
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)V

    .line 145
    .local v1, "pacConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.pacprocessor"

    const-string v3, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected bindSocketToInterfaceWrapper(IIILjava/lang/String;)V
    .locals 5
    .param p1, "mark"    # I
    .param p2, "vpnType"    # I
    .param p3, "fd"    # I
    .param p4, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 619
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->jnibindSocketToInterface(IIILjava/lang/String;)I

    move-result v0

    .line 620
    .local v0, "bindResult":I
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindResult value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .end local v0    # "bindResult":I
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v1

    .line 622
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "Exception occured while trying to bind the socket to the interface "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native jnibindSocketToInterface(IIILjava/lang/String;)I
.end method

.method protected makeProxyRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v5, 0x0

    .line 278
    .local v5, "proxyAddress":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-char v1, v0, v3

    .line 280
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x2e

    if-eq v1, v6, :cond_1

    const/16 v6, 0x2d

    if-eq v1, v6, :cond_1

    .line 281
    new-instance v6, Landroid/os/RemoteException;

    const-string v7, "Invalid host was passed"

    invoke-direct {v6, v7}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 286
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_0
    move-exception v2

    .line 287
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v6, "KnoxVpnPacProcessor"

    const-string v7, "error occured while trying to retrieve the proxy config due to some values being not intialized successfully"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_1
    return-object v5

    .line 279
    .restart local v0    # "arr$":[C
    .restart local v1    # "c":C
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "c":C
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Lcom/android/net/IProxyService;->resolvePacFileForKnoxProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 285
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "KnoxVpnPacProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The given url "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is going to go through the proxy "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 288
    .end local v0    # "arr$":[C
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_1
    move-exception v2

    .line 289
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "KnoxVpnPacProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid host was passed for pac resolution "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 290
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnPacProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error occured while trying to to retrieve the proxy config for the profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected setCurrentProxyScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "pacurl"    # Ljava/lang/String;

    .prologue
    .line 243
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 244
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, "The pac service has not been intialized while trying to set the proxy script, trying to bind again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindPacService()V

    .line 273
    :goto_0
    :pswitch_0
    return-void

    .line 248
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 249
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 256
    :pswitch_1
    const-string v1, "KnoxVpnPacProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to download the pac url for the profile after the interface is up for the profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, "error occured while trying to get current status pac file due to some values being not intialized successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 270
    :catch_1
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, " error occured while trying to get current status pac file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setMiscValueForPacProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "interfaceAddress"    # Ljava/lang/String;

    .prologue
    .line 233
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getMarkForInterface(Ljava/lang/String;)I

    move-result v2

    .line 234
    .local v2, "netId":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v3

    invoke-interface {v3, v2, p1, p3}, Lcom/android/net/IProxyService;->setMiscValueForPacProfile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 235
    .local v1, "isMiscValueSet":Z
    const-string v3, "KnoxVpnPacProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking if the Misc value has been set for the knox pac profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v1    # "isMiscValueSet":Z
    .end local v2    # "netId":I
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxVpnPacProcessor"

    const-string v4, "Exception occurred while trying to set the misc value for the pac profile "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected startPacSupport(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 195
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/net/IProxyService;->startPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v1

    .line 196
    .local v1, "startPacSupport":Z
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPacSupport return value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    .end local v1    # "startPacSupport":Z
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "error occured while trying to start the pac support due to some values being not intialized successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindPacService()V

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " error occured while trying to start the pac script for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected stopPacSupport(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 207
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/net/IProxyService;->stopPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v1

    .line 208
    .local v1, "removePacSupport":Z
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check to see if the pac support is removed for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 210
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    .line 215
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    .line 220
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    .end local v1    # "removePacSupport":Z
    :cond_2
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "error occured while trying to remove the pac support due to some values being not intialized successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " error occured while trying to remove the pac script for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
