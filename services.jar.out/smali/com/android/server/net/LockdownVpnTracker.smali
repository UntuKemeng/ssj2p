.class public Lcom/android/server/net/LockdownVpnTracker;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"


# static fields
.field private static final ACTION_LOCKDOWN_RESET:Ljava/lang/String; = "com.android.server.action.LOCKDOWN_RESET"

.field private static final ACTION_VPN_SETTINGS:Ljava/lang/String; = "android.net.vpn.SETTINGS"

.field private static final CC_PROPERTY:Ljava/lang/String; = "security.mdpp"

.field private static final CC_PROPERTY_ENABLED_VALUE:Ljava/lang/String; = "Enabled"

.field private static final CC_PROPERTY_ENFORCING_VALUE:Ljava/lang/String; = "Enforcing"

.field private static final EXTRA_PICK_LOCKDOWN:Ljava/lang/String; = "android.net.vpn.PICK_LOCKDOWN"

.field private static final MAX_ERROR_COUNT:I = 0x4

.field private static final ROOT_UID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LockdownVpnTracker"


# instance fields
.field private mAcceptedEgressIface:Ljava/lang/String;

.field private mAcceptedIface:Ljava/lang/String;

.field private mAcceptedSourceAddr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mAlwaysOnConnected:Z

.field mCcModePropertyValue:Ljava/lang/String;

.field private mChkThread:Ljava/lang/Thread;

.field private final mConfigIntent:Landroid/app/PendingIntent;

.field private final mConnService:Lcom/android/server/ConnectivityService;

.field private final mContext:Landroid/content/Context;

.field private mErrorCount:I

.field private final mNetService:Landroid/os/INetworkManagementService;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private final mResetIntent:Landroid/app/PendingIntent;

.field private mResetReceiver:Landroid/content/BroadcastReceiver;

.field private final mStateLock:Ljava/lang/Object;

.field private final mVpn:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netService"    # Landroid/os/INetworkManagementService;
    .param p3, "connService"    # Lcom/android/server/ConnectivityService;
    .param p4, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .param p5, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    .line 104
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mChkThread:Ljava/lang/Thread;

    .line 105
    iput-boolean v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mAlwaysOnConnected:Z

    .line 107
    const-string/jumbo v2, "security.mdpp"

    const-string v3, "Disabled"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mCcModePropertyValue:Ljava/lang/String;

    .line 140
    new-instance v2, Lcom/android/server/net/LockdownVpnTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/net/LockdownVpnTracker$1;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 126
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    .line 127
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    .line 128
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 129
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.vpn.SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "configIntent":Landroid/content/Intent;
    const-string v2, "android.net.vpn.PICK_LOCKDOWN"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "resetIntent":Landroid/content/Intent;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    .line 138
    return-void
.end method

.method private LazyHandleStateChangedLocked()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 398
    iget-object v10, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v10}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 399
    .local v3, "egressInfo":Landroid/net/NetworkInfo;
    iget-object v10, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v10}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 401
    .local v4, "egressProp":Landroid/net/LinkProperties;
    iget-object v10, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v10}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 402
    .local v7, "vpnInfo":Landroid/net/NetworkInfo;
    iget-object v10, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v10}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v6

    .line 405
    .local v6, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v3, :cond_0

    sget-object v10, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_0
    move v1, v9

    .line 407
    .local v1, "egressDisconnected":Z
    :goto_0
    if-eqz v4, :cond_1

    iget-object v10, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    move v0, v9

    .line 410
    .local v0, "egressChanged":Z
    :cond_2
    if-nez v3, :cond_7

    move-object v5, v8

    .line 412
    .local v5, "egressTypeName":Ljava/lang/String;
    :goto_1
    if-nez v4, :cond_8

    move-object v2, v8

    .line 414
    .local v2, "egressIface":Ljava/lang/String;
    :goto_2
    const-string v9, "LockdownVpnTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleStateChanged: egress="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    .line 418
    :cond_3
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    .line 419
    iput-object v8, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 420
    iget-object v8, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v8}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 422
    :cond_4
    if-eqz v1, :cond_9

    .line 423
    iget-object v8, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v8}, Lcom/android/server/connectivity/Vpn;->hideNotificationForLockdown()V

    .line 468
    :cond_5
    :goto_3
    return-void

    .end local v0    # "egressChanged":Z
    .end local v1    # "egressDisconnected":Z
    .end local v2    # "egressIface":Ljava/lang/String;
    .end local v5    # "egressTypeName":Ljava/lang/String;
    :cond_6
    move v1, v0

    .line 405
    goto :goto_0

    .line 410
    .restart local v0    # "egressChanged":Z
    .restart local v1    # "egressDisconnected":Z
    :cond_7
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-static {v9}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 412
    .restart local v5    # "egressTypeName":Ljava/lang/String;
    :cond_8
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 427
    .restart local v2    # "egressIface":Ljava/lang/String;
    :cond_9
    iget-boolean v8, p0, Lcom/android/server/net/LockdownVpnTracker;->mAlwaysOnConnected:Z

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_a

    if-eqz v6, :cond_a

    .line 428
    const-string v8, "LockdownVpnTracker"

    const-string v9, "LazyHandleStateChangedLocked(): Always-on VPN already connected."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 432
    :cond_a
    iget-object v8, p0, Lcom/android/server/net/LockdownVpnTracker;->mChkThread:Ljava/lang/Thread;

    if-eqz v8, :cond_b

    .line 433
    iget-object v8, p0, Lcom/android/server/net/LockdownVpnTracker;->mChkThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 434
    const-string v8, "LockdownVpnTracker"

    const-string v9, "LazyHandleStateChangedLocked(): Thread is still alive. Thread Bye Bye."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 438
    :cond_b
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/net/LockdownVpnTracker$2;

    invoke-direct {v9, p0}, Lcom/android/server/net/LockdownVpnTracker$2;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v8, p0, Lcom/android/server/net/LockdownVpnTracker;->mChkThread:Ljava/lang/Thread;

    .line 465
    const-string v8, "LockdownVpnTracker"

    const-string v9, "Start thread for LazyHandleStateChangedLocked()"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v8, p0, Lcom/android/server/net/LockdownVpnTracker;->mChkThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/server/net/LockdownVpnTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->isIPv6Network()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/net/LockdownVpnTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->isClat4Activated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/LockdownVpnTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mAlwaysOnConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/net/LockdownVpnTracker;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/LockdownVpnTracker;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mChkThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private clearSourceRulesLocked()V
    .locals 7

    .prologue
    .line 362
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 364
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    .line 366
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 367
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 368
    .local v0, "addr":Landroid/net/LinkAddress;
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/server/net/LockdownVpnTracker;->setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    .end local v0    # "addr":Landroid/net/LinkAddress;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Problem setting firewall rules"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 371
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 372
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x0

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 374
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private handleStateChangedLocked()V
    .locals 15

    .prologue
    .line 153
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v11}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 154
    .local v3, "egressInfo":Landroid/net/NetworkInfo;
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v11}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 156
    .local v4, "egressProp":Landroid/net/LinkProperties;
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v11}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 157
    .local v10, "vpnInfo":Landroid/net/NetworkInfo;
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v11}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v9

    .line 159
    .local v9, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mAlwaysOnConnected:Z

    .line 161
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 162
    .local v5, "egressType":I
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v11, v12, :cond_0

    .line 163
    invoke-static {v5}, Lcom/android/server/EventLogTags;->writeLockdownVpnError(I)V

    .line 166
    :cond_0
    iget v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    const/4 v12, 0x4

    if-le v11, v12, :cond_2

    .line 167
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const v12, 0x1040450

    const v13, 0x1080aa7

    invoke-virtual {v11, v12, v13}, Lcom/android/server/connectivity/Vpn;->showNotificationForLockdown(II)V

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v11

    if-nez v11, :cond_5

    .line 170
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-virtual {v11}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()I

    move-result v1

    .line 171
    .local v1, "checkProfile":I
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    if-nez v1, :cond_3

    .line 172
    const-string v11, "LockdownVpnTracker"

    const-string v12, "Active network connected; starting VPN"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {v5}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnecting(I)V

    .line 174
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const v12, 0x104044e

    const v13, 0x1080aa7

    invoke-virtual {v11, v12, v13}, Lcom/android/server/connectivity/Vpn;->showNotificationForLockdown(II)V

    .line 176
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 180
    :try_start_0
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    iget-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v4}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V

    .line 181
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mAlwaysOnConnected:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/IllegalStateException;
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 184
    const-string v11, "LockdownVpnTracker"

    const-string v12, "Failed to start VPN"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const v12, 0x1040450

    const v13, 0x1080aa7

    invoke-virtual {v11, v12, v13}, Lcom/android/server/connectivity/Vpn;->showNotificationForLockdown(II)V

    goto :goto_0

    .line 187
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    const/4 v11, 0x1

    if-ne v1, v11, :cond_4

    .line 188
    const-string v11, "LockdownVpnTracker"

    const-string v12, "Invalid VPN profile; requires IP-based server and DNS"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const v12, 0x1040450

    const v13, 0x1080aa7

    invoke-virtual {v11, v12, v13}, Lcom/android/server/connectivity/Vpn;->showNotificationForLockdown(II)V

    goto :goto_0

    .line 191
    :cond_4
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    const/4 v11, 0x2

    if-ne v1, v11, :cond_1

    .line 192
    const-string v11, "LockdownVpnTracker"

    const-string v12, "Invalid VPN profile; requires username and password"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const v12, 0x10407fe

    const v13, 0x1080aa7

    invoke-virtual {v11, v12, v13}, Lcom/android/server/connectivity/Vpn;->showNotificationForLockdown(II)V

    goto/16 :goto_0

    .line 196
    .end local v1    # "checkProfile":I
    :cond_5
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v9, :cond_1

    .line 197
    iget-object v7, v9, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 198
    .local v7, "iface":Ljava/lang/String;
    iget-object v8, v9, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 200
    .local v8, "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    invoke-static {v7, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 205
    :cond_6
    const-string v11, "LockdownVpnTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VPN connected using iface="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", sourceAddr="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {v5}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnected(I)V

    .line 208
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const v12, 0x104044f

    const v13, 0x1080aa6

    invoke-virtual {v11, v12, v13}, Lcom/android/server/connectivity/Vpn;->showNotificationForLockdown(II)V

    .line 209
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mAlwaysOnConnected:Z

    .line 212
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    .line 214
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/4 v12, 0x1

    invoke-interface {v11, v7, v12}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 215
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 216
    .local v0, "addr":Landroid/net/LinkAddress;
    const/4 v11, 0x1

    invoke-direct {p0, v0, v11}, Lcom/android/server/net/LockdownVpnTracker;->setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 225
    .end local v0    # "addr":Landroid/net/LinkAddress;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    .line 226
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Problem setting firewall rules"

    invoke-direct {v11, v12, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 219
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_2
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-interface {v11, v12, v13, v14}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 220
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/4 v12, 0x0

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v13

    const/4 v14, 0x1

    invoke-interface {v11, v12, v13, v14}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 222
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 223
    iput-object v7, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    .line 224
    iput-object v8, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 229
    iget-object v11, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {p0, v3}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0
.end method

.method private hideNotification()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method private initLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 240
    const-string v5, "LockdownVpnTracker"

    const-string/jumbo v6, "initLocked()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v5, v7}, Lcom/android/server/connectivity/Vpn;->setEnableLockdownVpn(Z)V

    .line 243
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v5, v9}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 245
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 246
    .local v4, "resetFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 250
    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v7, 0x1f4

    const/4 v8, 0x1

    invoke-interface {v5, v6, v7, v8}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 251
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v7, 0x1194

    const/4 v8, 0x1

    invoke-interface {v5, v6, v7, v8}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 252
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v7, 0x6a5

    const/4 v8, 0x1

    invoke-interface {v5, v6, v7, v8}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 254
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mCcModePropertyValue:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mCcModePropertyValue:Ljava/lang/String;

    const-string v6, "Enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mCcModePropertyValue:Ljava/lang/String;

    const-string v6, "Enforcing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 258
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v2, v5, v6

    .line 259
    .local v2, "ocspServerIp":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v3, v5, v6

    .line 260
    .local v3, "ocspServerPort":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {v5, v2, v6, v7}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 265
    .end local v2    # "ocspServerIp":Ljava/lang/String;
    .end local v3    # "ocspServerPort":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/net/LockdownVpnTracker;->clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "clatIpv6addr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/16 v6, 0x1f4

    const/4 v7, 0x1

    invoke-interface {v5, v0, v6, v7}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 267
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/16 v6, 0x1194

    const/4 v7, 0x1

    invoke-interface {v5, v0, v6, v7}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 268
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/16 v6, 0x6a5

    const/4 v7, 0x1

    invoke-interface {v5, v0, v6, v7}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 269
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const-string/jumbo v6, "fe80::/64"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 270
    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const-string v6, "2000::/4"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    iput-boolean v9, p0, Lcom/android/server/net/LockdownVpnTracker;->mAlwaysOnConnected:Z

    .line 276
    iget-object v6, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 277
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->LazyHandleStateChangedLocked()V

    .line 278
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    return-void

    .line 271
    .end local v0    # "clatIpv6addr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Problem setting firewall rules"

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 278
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "clatIpv6addr":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method private isClat4Activated()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 516
    const/4 v1, 0x0

    .line 517
    .local v1, "hasIpAddr":Z
    :try_start_0
    const-string v6, "clat4"

    invoke-static {v6}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 518
    .local v4, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 519
    .local v3, "inetAddress":Ljava/net/InetAddress;
    const/4 v1, 0x1

    .line 520
    goto :goto_0

    .line 521
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    if-nez v1, :cond_1

    .line 522
    const-string v6, "LockdownVpnTracker"

    const-string/jumbo v7, "isClat4Activated(): false"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    return v5

    .line 525
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    const-string v6, "LockdownVpnTracker"

    const-string/jumbo v7, "isClat4Activated(): true"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    const/4 v5, 0x1

    goto :goto_1

    .line 528
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LockdownVpnTracker"

    const-string/jumbo v7, "isClat4Activated(): no clat4 interface"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isEnabled()Z
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 111
    .local v0, "keystore":Landroid/security/KeyStore;
    if-nez v0, :cond_0

    .line 113
    const-string v1, "LockdownVpnTracker"

    const-string/jumbo v2, "keystore is null !"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v1, 0x0

    .line 119
    :goto_0
    return v1

    .line 118
    :cond_0
    const-string v1, "LockdownVpnTracker"

    const-string v2, "Call LockDown isEnabled Function"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isIPv6Network()I
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 472
    const/4 v7, 0x0

    .line 473
    .local v7, "ret":I
    :try_start_0
    iget-object v9, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 474
    .local v2, "egressInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 477
    .local v1, "egressDisconnected":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 478
    const-string v9, "LockdownVpnTracker"

    const-string v10, "egressDisconnected is TRUE in isIPv6Network"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v7, 0x0

    .line 510
    .end local v1    # "egressDisconnected":Z
    .end local v2    # "egressInfo":Landroid/net/NetworkInfo;
    .end local v7    # "ret":I
    :cond_1
    :goto_1
    return v7

    .restart local v2    # "egressInfo":Landroid/net/NetworkInfo;
    .restart local v7    # "ret":I
    :cond_2
    move v1, v8

    .line 474
    goto :goto_0

    .line 483
    .restart local v1    # "egressDisconnected":Z
    :cond_3
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 484
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 485
    .local v6, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 486
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 487
    .local v5, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "wlan"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 488
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_5

    instance-of v9, v5, Ljava/net/Inet4Address;

    if-eqz v9, :cond_5

    .line 489
    const-string v9, "LockdownVpnTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IPv4 addr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v7, 0x4

    .line 491
    goto :goto_1

    .line 494
    :cond_6
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "rmnet"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 495
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_7

    instance-of v9, v5, Ljava/net/Inet6Address;

    if-eqz v9, :cond_7

    .line 496
    const-string v9, "LockdownVpnTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IPv6 addr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v7, 0x6

    goto/16 :goto_2

    .line 499
    :cond_7
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_5

    instance-of v9, v5, Ljava/net/Inet4Address;

    if-eqz v9, :cond_5

    .line 500
    const-string v9, "LockdownVpnTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IPv4 addr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    const/4 v7, 0x4

    .line 502
    goto/16 :goto_1

    .line 508
    .end local v1    # "egressDisconnected":Z
    .end local v2    # "egressInfo":Landroid/net/NetworkInfo;
    .end local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v4    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    .end local v6    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "LockdownVpnTracker"

    const-string v10, "Exception : isIPv6Network()"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 510
    goto/16 :goto_1
.end method

.method private setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    .locals 2
    .param p1, "address"    # Landroid/net/LinkAddress;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "addrString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0, p2}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 387
    return-void
.end method

.method private showNotification(II)V
    .locals 0
    .param p1, "titleRes"    # I
    .param p2, "iconRes"    # I

    .prologue
    .line 569
    return-void
.end method

.method private shutdownLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 300
    const-string v4, "LockdownVpnTracker"

    const-string/jumbo v5, "shutdownLocked()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mChkThread:Ljava/lang/Thread;

    if-eqz v4, :cond_0

    .line 304
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mChkThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    const-string v4, "LockdownVpnTracker"

    const-string v5, "Thread must be exit in shutdownLocked()."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mChkThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 314
    iput v8, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 316
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 318
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v6, 0x1f4

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 319
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v6, 0x1194

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 320
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v6, 0x6a5

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 322
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mCcModePropertyValue:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mCcModePropertyValue:Ljava/lang/String;

    const-string v5, "Enabled"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mCcModePropertyValue:Ljava/lang/String;

    const-string v5, "Enforcing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    :cond_1
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 326
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v2, v4, v5

    .line 327
    .local v2, "ocspServerIp":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v4, v5

    .line 328
    .local v3, "ocspServerPort":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v4, v2, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 333
    .end local v2    # "ocspServerIp":Ljava/lang/String;
    .end local v3    # "ocspServerPort":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/net/LockdownVpnTracker;->clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "clatIpv6addr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/16 v5, 0x1f4

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 335
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/16 v5, 0x1194

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 336
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/16 v5, 0x6a5

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 337
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const-string/jumbo v5, "fe80::/64"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 338
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const-string v5, "2000::/4"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    .line 343
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->hideNotificationForLockdown()V

    .line 345
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 346
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4, v9}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 347
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4, v8}, Lcom/android/server/connectivity/Vpn;->setEnableLockdownVpn(Z)V

    .line 348
    return-void

    .line 309
    .end local v0    # "clatIpv6addr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "LockdownVpnTracker"

    const-string v5, "Problem stopping mChkThread"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 340
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Problem setting firewall rules"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 5
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 546
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 548
    .local v1, "vpnInfo":Landroid/net/NetworkInfo;
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 549
    .end local p1    # "info":Landroid/net/NetworkInfo;
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 551
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "vpnInfo":Landroid/net/NetworkInfo;
    .restart local p1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return-object p1
.end method

.method public clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 282
    const-string v0, "64:ff9b::"

    .line 283
    .local v0, "clatIpv6addr":Ljava/lang/String;
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "octets":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_1
    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 236
    monitor-exit v1

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onNetworkInfoChanged()V
    .locals 2

    .prologue
    .line 390
    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "onNetworkInfoChanged()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->LazyHandleStateChangedLocked()V

    .line 393
    monitor-exit v1

    .line 394
    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onVpnStateChanged(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 536
    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "onVpnStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    .line 538
    iget v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 541
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 542
    monitor-exit v1

    .line 543
    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 351
    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 355
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 356
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 357
    monitor-exit v1

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 296
    monitor-exit v1

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
