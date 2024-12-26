.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
.super Ljava/lang/Object;
.source "KnoxVpnProcessManager.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "KnoxVpnProcessManager"

.field private static volatile instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

.field private static mActivityManagerNative:Landroid/app/IActivityManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field private mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field protected mProcessObserver:Landroid/app/IProcessObserver$Stub;

.field private mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 26
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    .line 33
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 35
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mActivityManagerNative:Landroid/app/IActivityManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 30
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 31
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 32
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 37
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 58
    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 4
    .param p1, "engine"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    .line 29
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 30
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 31
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 32
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 37
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;)V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 62
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 65
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 66
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 67
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 69
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mActivityManagerNative:Landroid/app/IActivityManager;

    .line 70
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mActivityManagerNative:Landroid/app/IActivityManager;

    if-eqz v1, :cond_1

    .line 71
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "KnoxVpnProcessManager"

    const-string/jumbo v2, "mActivityManagerNative not null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mActivityManagerNative:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->getProcessObserver()Landroid/app/IProcessObserver$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxVpnProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->onApplicationStart(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->onApplicationStop(II)V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
    .locals 2
    .param p0, "engine"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 83
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 92
    :goto_0
    monitor-exit v1

    return-object v0

    .line 88
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 92
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized onApplicationStart(II)V
    .locals 13
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v11, 0x1

    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 135
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v10, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForUid(I)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "profileName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v10, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "packageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v10, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v8

    .line 112
    .local v8, "type":I
    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    if-ne v8, v11, :cond_0

    .line 115
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v10, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .line 116
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v6, :cond_0

    .line 119
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const v11, 0x186a0

    div-int v11, p2, v11

    invoke-virtual {v10, v11, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    move-result-object v9

    .line 120
    .local v9, "vpnPackageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    if-nez v9, :cond_4

    .line 121
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v10, :cond_2

    const-string v10, "KnoxVpnProcessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onApplicationStart : No Package Info object for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Checking UID."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 123
    .local v2, "packageMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 124
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 125
    .local v4, "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v10

    if-ne v10, p2, :cond_3

    .line 126
    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v3, v10, v11

    goto :goto_1

    .line 130
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;>;"
    .end local v4    # "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_4
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v10, :cond_5

    const-string v10, "KnoxVpnProcessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onApplicationStart : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_5
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v10, :cond_6

    const-string v10, "KnoxVpnProcessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onApplicationStart : profileName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / getVpnConnectionType(profileName)  : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_6
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const v12, 0x186a0

    div-int v12, p2, v12

    invoke-virtual {v11, v12, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 134
    .local v1, "iResult":I
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "KnoxVpnProcessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onApplicationStart : start a vpn : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 104
    .end local v1    # "iResult":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "vpnPackageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method private declared-synchronized onApplicationStop(II)V
    .locals 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    .line 192
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "profileName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v6

    .line 148
    .local v6, "type":I
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    .line 152
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    .line 153
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v4, :cond_2

    .line 154
    const-string v8, "KnoxVpnProcessManager"

    const-string/jumbo v9, "profileEntry is null!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v6    # "type":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 158
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v5    # "profileName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_2
    :try_start_2
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v8, :cond_3

    const-string v8, "KnoxVpnProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onApplicationStop : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v8, :cond_4

    const-string v8, "KnoxVpnProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onApplicationStop : profileName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / getVpnConnectionType(profileName)  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    move-result v2

    .line 163
    .local v2, "isExistRunningApps":Z
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "KnoxVpnProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onApplicationStop : isExistRunningApps : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :cond_5
    if-nez v2, :cond_0

    .line 167
    :try_start_3
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v7

    .line 168
    .local v7, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v7, :cond_6

    .line 169
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "KnoxVpnProcessManager"

    const-string/jumbo v9, "onApplicationStop : stopping vpn connection : Service is not started"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 188
    .end local v7    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "KnoxVpnProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stopping vpn connection : Failure at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 172
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_6
    :try_start_5
    invoke-interface {v7, v5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "currentState":I
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v8, :cond_7

    const-string v8, "KnoxVpnProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The current state of the vpn profile before calling stop connection for application on on-demand mode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_7
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 179
    :pswitch_0
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateBlockingRules(Ljava/lang/String;)V

    .line 180
    invoke-interface {v7, v5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 183
    :pswitch_1
    invoke-interface {v7, v5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getProcessObserver()Landroid/app/IProcessObserver$Stub;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    return-object v0
.end method

.method protected processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z
    .locals 11
    .param p1, "profileEntry"    # Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 199
    .local v8, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 200
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 201
    .local v5, "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 202
    .local v6, "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 204
    .local v4, "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 205
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 209
    .local v3, "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 217
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v4    # "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 219
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    :goto_2
    const/4 v7, 0x0

    :goto_3
    return v7

    .line 212
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v6    # "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface {v6, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 214
    invoke-interface {v6}, Ljava/util/Set;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-lez v7, :cond_2

    .line 215
    const/4 v7, 0x1

    .line 219
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method
