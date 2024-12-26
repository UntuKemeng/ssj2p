.class public Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
.super Ljava/lang/Object;
.source "VpnProfileInfo.java"


# instance fields
.field private volatile activateState:I

.field private volatile admin_id:I

.field private volatile chainingEnabled:I

.field private volatile credentialsPredefined:Z

.field private volatile mDefaultInterface:Ljava/lang/String;

.field private mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mEnableIPv6:I

.field private volatile mInterfaceAddress:Ljava/lang/String;

.field private volatile mInterfaceName:Ljava/lang/String;

.field private volatile mInterfaceV6Address:Ljava/lang/String;

.field private volatile mIsRetry:Z

.field private volatile mNetId:I

.field private mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageUidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPacurl:Ljava/lang/String;

.field private volatile mProfileName:Ljava/lang/String;

.field private mProxyInfo:Landroid/net/ProxyInfo;

.field private volatile mProxyPassword:Ljava/lang/String;

.field private volatile mProxyPort:I

.field private volatile mProxyServer:Ljava/lang/String;

.field private volatile mProxyusername:Ljava/lang/String;

.field private mSearchDomainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mState:I

.field private volatile mVendorPkgName:Ljava/lang/String;

.field private volatile mVendorUid:I

.field private volatile mVpnClientType:I

.field private volatile markProfileForDeletion:Z

.field private volatile personaId:I

.field private volatile protocolType:Ljava/lang/String;

.field private volatile proxyAuthRequried:I

.field private volatile routeType:I

.field private volatile uidPidSearchEnabled:I

.field private volatile vpnConnectionType:I

.field private volatile vpnType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mIsRetry:Z

    .line 85
    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    .line 87
    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mNetId:I

    .line 89
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyServer:Ljava/lang/String;

    .line 91
    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPort:I

    .line 93
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyInfo:Landroid/net/ProxyInfo;

    .line 95
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyusername:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPassword:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPacurl:Ljava/lang/String;

    .line 101
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mEnableIPv6:I

    .line 103
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceAddress:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDefaultInterface:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceV6Address:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->credentialsPredefined:Z

    .line 113
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->proxyAuthRequried:I

    .line 116
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVpnClientType:I

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addPackageEntry(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "cid"    # I

    .prologue
    .line 316
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;-><init>(Ljava/lang/String;II)V

    .line 317
    .local v0, "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method public getActivateState()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    return v0
.end method

.method public getAdminId()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    return v0
.end method

.method public getChainingEnabled()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->chainingEnabled:I

    return v0
.end method

.method public getDefaultInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDefaultInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDnsList:Ljava/util/List;

    return-object v0
.end method

.method public getEnableIPv6()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mEnableIPv6:I

    return v0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRetry()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mIsRetry:Z

    return v0
.end method

.method public getMarkProfileForDeletion()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->markProfileForDeletion:Z

    return v0
.end method

.method public getNetId()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mNetId:I

    return v0
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    goto :goto_0
.end method

.method public getPackageCount()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getPackageEntryForUid(I)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 298
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 299
    .local v1, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 304
    .end local v1    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPackageMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getPacurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPacurl:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaId()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    return v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->protocolType:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getProxyInfo()Landroid/net/ProxyInfo;
    .locals 1

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyInfo:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPort:I

    return v0
.end method

.method public getProxyServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyServer:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyusername:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteType()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    return v0
.end method

.method public getSearchDomainList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mSearchDomainList:Ljava/util/List;

    return-object v0
.end method

.method public getUidPidSearchEnabled()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->uidPidSearchEnabled:I

    return v0
.end method

.method public getV6InterfaceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceV6Address:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorUid()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    return v0
.end method

.method public getVpnConnectionType()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnConnectionType:I

    return v0
.end method

.method public getVpnServiceType()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnType:I

    return v0
.end method

.method public getVpnType()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVpnClientType:I

    return v0
.end method

.method public isPackageAddedToProfile(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isProxyAuthRequired()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->proxyAuthRequried:I

    return v0
.end method

.method public isproxyCredentialsPreDefined()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->credentialsPredefined:Z

    return v0
.end method

.method public proxyCredentialsPreDefined(Z)V
    .locals 0
    .param p1, "predefined"    # Z

    .prologue
    .line 418
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->credentialsPredefined:Z

    .line 419
    return-void
.end method

.method public removePackageEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v0

    .line 330
    .local v0, "uidToRemove":I
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 331
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setActivateState(I)V
    .locals 0
    .param p1, "activateState"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    .line 210
    return-void
.end method

.method public setAdminId(I)V
    .locals 0
    .param p1, "adminid"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 178
    return-void
.end method

.method public setChainingEnabled(I)V
    .locals 0
    .param p1, "chainingEnabled"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->chainingEnabled:I

    .line 222
    return-void
.end method

.method public setDefaultInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultInterface"    # Ljava/lang/String;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDefaultInterface:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setDnsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDnsList:Ljava/util/List;

    .line 259
    return-void
.end method

.method public setEnableIPv6(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 386
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mEnableIPv6:I

    .line 387
    return-void
.end method

.method public setInterfaceAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceAddress:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceName:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setIsRetry(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mIsRetry:Z

    .line 130
    return-void
.end method

.method public setMarkProfileForDeletion(Z)V
    .locals 0
    .param p1, "markProfileForDeletion"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->markProfileForDeletion:Z

    .line 255
    return-void
.end method

.method public setNetId(I)V
    .locals 0
    .param p1, "netId"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mNetId:I

    .line 162
    return-void
.end method

.method public setPacAuthRequired(I)V
    .locals 0
    .param p1, "authRequired"    # I

    .prologue
    .line 426
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->proxyAuthRequried:I

    .line 427
    return-void
.end method

.method public setPacurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "pacUrl"    # Ljava/lang/String;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPacurl:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setPersonaId(I)V
    .locals 0
    .param p1, "personaId"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    .line 186
    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setProtocolType(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocolType"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->protocolType:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public declared-synchronized setProxyInfo(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "proxyinfo"    # Landroid/net/ProxyInfo;

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyInfo:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProxyPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPassword:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setProxyPort(I)V
    .locals 0
    .param p1, "proxyPort"    # I

    .prologue
    .line 343
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPort:I

    .line 344
    return-void
.end method

.method public setProxyServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyServer"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyServer:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setProxyUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyusername:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setRouteType(I)V
    .locals 0
    .param p1, "routeType"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    .line 194
    return-void
.end method

.method public setSearchDomainList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mSearchDomainList:Ljava/util/List;

    .line 267
    return-void
.end method

.method public setUidPidSearchEnabled(I)V
    .locals 0
    .param p1, "uidPidSearchEnabled"    # I

    .prologue
    .line 232
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->uidPidSearchEnabled:I

    .line 233
    return-void
.end method

.method public setV6InterfaceAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceV6Address:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public setVendorPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendorPkgName"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorPkgName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setVendorUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    .line 242
    return-void
.end method

.method public setVpnConnectionType(I)V
    .locals 0
    .param p1, "vpnConnectionType"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnConnectionType:I

    .line 251
    return-void
.end method

.method public setVpnServiceType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 282
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnType:I

    .line 283
    return-void
.end method

.method public setVpnType(I)V
    .locals 0
    .param p1, "clientType"    # I

    .prologue
    .line 435
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVpnClientType:I

    .line 436
    return-void
.end method
