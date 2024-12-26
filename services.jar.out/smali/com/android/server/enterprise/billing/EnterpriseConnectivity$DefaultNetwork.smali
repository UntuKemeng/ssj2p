.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
.super Ljava/lang/Object;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultNetwork"
.end annotation


# instance fields
.field private mActiveNetwork:I

.field private mCellularLinkProperties:Landroid/net/LinkProperties;

.field private mCellularRequest:Landroid/net/NetworkRequest;

.field private mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

.field private mWifiLinkProperties:Landroid/net/LinkProperties;

.field private mWifiRequest:Landroid/net/NetworkRequest;

.field private mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
    .param p2, "x1"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    return-void
.end method

.method private handleConnected(J)Z
    .locals 5
    .param p1, "transportType"    # J

    .prologue
    const/4 v0, 0x1

    .line 604
    const-wide/16 v2, 0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isValidLink(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v1, v2, :cond_1

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network WiFi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 609
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 621
    :goto_0
    return v0

    .line 612
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isValidLink(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v1, v2, :cond_1

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network Cellular: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 617
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    goto :goto_0

    .line 621
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleDisconnected(J)Z
    .locals 5
    .param p1, "transportType"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 583
    const-wide/16 v2, 0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v1, v2, :cond_1

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network WiFi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 587
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 588
    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    .line 600
    :goto_0
    return v0

    .line 591
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v1, v2, :cond_1

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network Cellular: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 595
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 596
    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 600
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidLink(Landroid/net/LinkProperties;)Z
    .locals 1
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 648
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->hasIPv6Address(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DefaultNetworkInit(Landroid/net/IConnectivityManager;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;)V
    .locals 7
    .param p1, "connSvc"    # Landroid/net/IConnectivityManager;
    .param p2, "h"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    .prologue
    .line 503
    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    .line 504
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    .line 505
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    .line 506
    invoke-interface {p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 507
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 508
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iput v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    .line 510
    :cond_0
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 511
    if-eqz v2, :cond_1

    .line 512
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    :goto_0
    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 515
    :cond_1
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 516
    if-eqz v2, :cond_2

    .line 517
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    :goto_1
    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 520
    :cond_2
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 521
    .local v0, "cellularCap":Landroid/net/NetworkCapabilities;
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 522
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 523
    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 524
    .local v3, "wifiCap":Landroid/net/NetworkCapabilities;
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 525
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 526
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-interface {p1, v0, v4, v5}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    .line 528
    const-string v4, "EntConnectivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "celullar request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-interface {p1, v3, v4, v5}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    .line 531
    const-string v4, "EntConnectivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifi request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v0    # "cellularCap":Landroid/net/NetworkCapabilities;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "wifiCap":Landroid/net/NetworkCapabilities;
    :goto_2
    return-void

    .line 512
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_3
    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    goto/16 :goto_0

    .line 517
    :cond_4
    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 532
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 533
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in ConnectivityService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public isMobileActive()Z
    .locals 2

    .prologue
    .line 643
    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidRequest(I)Z
    .locals 4
    .param p1, "reqId"    # I

    .prologue
    const/4 v1, 0x0

    .line 539
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v2, :cond_1

    .line 540
    :cond_0
    const/4 v1, 0x1

    .line 547
    :cond_1
    :goto_0
    return v1

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "EntConnectivity"

    const-string/jumbo v3, "mCellularRequest or mWifiRequest is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isWifiActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 638
    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActiveNetworkChanged(ILandroid/net/LinkProperties;)V
    .locals 2
    .param p1, "activeNetwork"    # I
    .param p2, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 625
    iput p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 627
    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 628
    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    .line 632
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActiveNetworkChanged: link properties set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 635
    :cond_1
    return-void

    .line 629
    :cond_2
    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    if-nez v0, :cond_0

    .line 630
    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    goto :goto_0
.end method

.method public onNetworkChanged(Landroid/os/Bundle;I)Z
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "notifyType"    # I

    .prologue
    const/4 v1, 0x0

    .line 551
    const-class v4, Landroid/net/NetworkRequest;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    .line 552
    .local v0, "req":Landroid/net/NetworkRequest;
    if-nez v0, :cond_1

    .line 579
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 555
    :cond_1
    const-wide/16 v2, -0x1

    .line 556
    .local v2, "transportType":J
    iget v4, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    if-ne v4, v5, :cond_4

    .line 557
    const-wide/16 v2, 0x0

    .line 561
    :cond_2
    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 577
    :cond_3
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->handleConnected(J)Z

    move-result v1

    goto :goto_0

    .line 558
    :cond_4
    iget v4, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    if-ne v4, v5, :cond_2

    .line 559
    const-wide/16 v2, 0x1

    goto :goto_1

    .line 570
    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->handleDisconnected(J)Z

    move-result v1

    goto :goto_0

    .line 572
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isMobileActive()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
