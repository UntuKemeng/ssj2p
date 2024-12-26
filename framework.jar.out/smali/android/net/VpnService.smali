.class public Landroid/net/VpnService;
.super Landroid/app/Service;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnService$1;,
        Landroid/net/VpnService$Builder;,
        Landroid/net/VpnService$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final KNOXVPN_CONTAINER_ENABLED:I = 0x2

.field private static KNOXVPN_FEATURE:I = 0x0

.field private static final KNOXVPN_MDM_ENABLED:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"

.field private static final SYSTEM_VPN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VpnService"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 132
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/net/VpnService;->DBG:Z

    .line 136
    const/4 v0, -0x1

    sput v0, Landroid/net/VpnService;->KNOXVPN_FEATURE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 474
    return-void
.end method

.method static synthetic access$100(Ljava/net/InetAddress;I)V
    .locals 0
    .param p0, "x0"    # Ljava/net/InetAddress;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-static {p0, p1}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static synthetic access$200()Landroid/net/IConnectivityManager;
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method private static check(Ljava/net/InetAddress;I)V
    .locals 2
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    .prologue
    .line 452
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_2

    .line 456
    if-ltz p1, :cond_1

    const/16 v0, 0x20

    if-le p1, v0, :cond_5

    .line 457
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad prefixLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_2
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_4

    .line 460
    if-ltz p1, :cond_3

    const/16 v0, 0x80

    if-le p1, v0, :cond_5

    .line 461
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad prefixLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_5
    return-void
.end method

.method private static getKnoxVpnFeature()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x2

    sput v0, Landroid/net/VpnService;->KNOXVPN_FEATURE:I

    .line 144
    sget v0, Landroid/net/VpnService;->KNOXVPN_FEATURE:I

    return v0
.end method

.method private static getService()Landroid/net/IConnectivityManager;
    .locals 1

    .prologue
    .line 153
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static prepare(Landroid/content/Context;)Landroid/content/Intent;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 181
    invoke-static {}, Landroid/net/VpnService;->getKnoxVpnFeature()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_3

    .line 183
    instance-of v8, p0, Lcom/sec/vpn/knox/GenericVpnContext;

    if-eqz v8, :cond_2

    .line 184
    const-string v8, "VpnService"

    const-string/jumbo v9, "prepare function with generic vpn context is called for knox vpn profile"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p0

    .line 185
    check-cast v3, Lcom/sec/vpn/knox/GenericVpnContext;

    .line 186
    .local v3, "knoxVPNContext":Lcom/sec/vpn/knox/GenericVpnContext;
    invoke-virtual {v3}, Lcom/sec/vpn/knox/GenericVpnContext;->getVPNProfile()Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "profile":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sec/vpn/knox/GenericVpnContext;->getVPNState()Z

    move-result v1

    .line 188
    .local v1, "isConnecting":Z
    invoke-virtual {v3}, Lcom/sec/vpn/knox/GenericVpnContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sec/vpn/knox/GenericVpnContext;->isMetaEnabled()Z

    move-result v2

    .line 190
    .local v2, "isMetaEnabled":Z
    const/4 v6, 0x0

    .line 192
    .local v6, "profileType":I
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/net/IConnectivityManager;->knoxVpnProfileType(Ljava/lang/String;)I

    move-result v6

    .line 193
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v8

    invoke-interface {v8, v4, v5, v1, v2}, Landroid/net/IConnectivityManager;->prepareEnterpriseVpnExt(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 222
    .end local v1    # "isConnecting":Z
    .end local v2    # "isMetaEnabled":Z
    .end local v3    # "knoxVPNContext":Lcom/sec/vpn/knox/GenericVpnContext;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "profile":Ljava/lang/String;
    .end local v6    # "profileType":I
    :cond_0
    :goto_0
    return-object v7

    .line 196
    .restart local v1    # "isConnecting":Z
    .restart local v2    # "isMetaEnabled":Z
    .restart local v3    # "knoxVPNContext":Lcom/sec/vpn/knox/GenericVpnContext;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "profile":Ljava/lang/String;
    .restart local v6    # "profileType":I
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "VpnService"

    const-string v9, "Exception occured while trying to prepare knox vpn profile"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v7

    goto :goto_0

    .line 202
    .end local v1    # "isConnecting":Z
    .end local v2    # "isMetaEnabled":Z
    .end local v3    # "knoxVPNContext":Lcom/sec/vpn/knox/GenericVpnContext;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "profile":Ljava/lang/String;
    .end local v6    # "profileType":I
    :cond_2
    const-string v8, "VpnService"

    const-string/jumbo v9, "prepare function with android vpn context is called for non knox vpn profile"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :try_start_1
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-interface {v8, v9, v10, v11}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-nez v8, :cond_0

    .line 210
    :goto_1
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v7

    goto :goto_0

    .line 207
    :catch_1
    move-exception v0

    .line 208
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v7, "VpnService"

    const-string v8, "Exception occured while trying to prepare non knox vpn profile"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 216
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-interface {v8, v9, v10, v11}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    if-nez v8, :cond_0

    .line 222
    :goto_2
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v7

    goto :goto_0

    .line 219
    :catch_2
    move-exception v7

    goto :goto_2
.end method

.method public static prepareAndAuthorize(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 240
    .local v0, "cm":Landroid/net/IConnectivityManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 244
    .local v2, "userId":I
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 247
    :cond_0
    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v2    # "userId":I
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public addAddress(Ljava/net/InetAddress;I)Z
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .prologue
    .line 325
    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    .line 327
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->addVpnAddress(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 413
    if-eqz p1, :cond_0

    const-string v0, "android.net.VpnService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    new-instance v0, Landroid/net/VpnService$Callback;

    invoke-direct {v0, p0, v1}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;Landroid/net/VpnService$1;)V

    .line 416
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public onRevoke()V
    .locals 0

    .prologue
    .line 431
    invoke-virtual {p0}, Landroid/net/VpnService;->stopSelf()V

    .line 432
    return-void
.end method

.method public protect(I)Z
    .locals 4
    .param p1, "socket"    # I

    .prologue
    .line 269
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 270
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->getChainingEnabledForProfile(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    invoke-static {p1}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z

    move-result v1

    .line 280
    :goto_0
    return v1

    .line 273
    :cond_0
    sget-boolean v1, Landroid/net/VpnService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "VpnService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "protect is not going to be called for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 277
    :cond_2
    invoke-static {p1}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public protect(Ljava/net/DatagramSocket;)Z
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 302
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public protect(Ljava/net/Socket;)Z
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 291
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public removeAddress(Ljava/net/InetAddress;I)Z
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .prologue
    .line 355
    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    .line 357
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->removeVpnAddress(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setUnderlyingNetworks([Landroid/net/Network;)Z
    .locals 2
    .param p1, "networks"    # [Landroid/net/Network;

    .prologue
    .line 397
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
