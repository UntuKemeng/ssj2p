.class public Lcom/sec/erisclient/IPSecConnection;
.super Ljava/lang/Object;
.source "IPSecConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/erisclient/IPSecConnection$BypassCa;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IPSecConnection"

.field public static final TAG_ADAPTER_NAME:Ljava/lang/String; = "virtualAdapterName"

.field public static final TAG_ANTIREPLAY:Ljava/lang/String; = "antiReplay"

.field public static final TAG_CACERT:Ljava/lang/String; = "caCertData"

.field public static final TAG_CID:Ljava/lang/String; = "cid"

.field public static final TAG_GATEWAY:Ljava/lang/String; = "gateway"

.field public static final TAG_GLOBAL_DNS_CONF:Ljava/lang/String; = "globalDNSConfig"

.field public static final TAG_IKE_CONN_TIMEOUT:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeConnectionTimeOut"

.field public static final TAG_IKE_DHGROUP:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeDhGroup"

.field public static final TAG_IKE_DPD_TIMEOUT:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeDpdTimeOut"

.field public static final TAG_IKE_DPD_TIMER:Ljava/lang/String; = "ApnSetting.mPeriodicDpdTimer"

.field public static final TAG_IKE_EAP_TYPE:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeEapType"

.field public static final TAG_IKE_ENCRYPTION:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeEncryptType"

.field public static final TAG_IKE_IMEI:Ljava/lang/String; = "ApnSetting.mImei"

.field public static final TAG_IKE_INTEGRITY:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeIntegrity"

.field public static final TAG_IKE_LIFE:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeLife"

.field public static final TAG_IKE_NAT_VALUE:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeNatValue"

.field public static final TAG_IKE_VADAPT_NAME:Ljava/lang/String; = "ApnSetting.mIkeVirtualAdapterConf"

.field public static final TAG_IKE_VERSION:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeversion"

.field public static final TAG_IKE_WIN_SIZE:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeWindowSize"

.field public static final TAG_IMEI_ATTR_TYPE:Ljava/lang/String; = "imeiVendorAttrType"

.field public static final TAG_IMEI_ATTR_VAL:Ljava/lang/String; = "imeiVendorAttrVal"

.field public static final TAG_INTERFACE:Ljava/lang/String; = "interface"

.field public static final TAG_IPSEC_AUTH_TYPE:Ljava/lang/String; = "ApnSetting.mIpSecauthType"

.field public static final TAG_IPSEC_DHGROUP:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecDHGroup"

.field public static final TAG_IPSEC_ENCRYPT:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecEncryptionType"

.field public static final TAG_IPSEC_INTEGRITY:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecIntegrityType"

.field public static final TAG_IPSEC_IP_TYPE:Ljava/lang/String; = "ApnSetting.mIpSecIpType"

.field public static final TAG_IPSEC_LIFETYPE:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecLifeTimeType"

.field public static final TAG_IPSEC_LIFEVAL:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecLifeval"

.field public static final TAG_IPSEC_OURI_TYPE:Ljava/lang/String; = "ApnSetting.mOwnUriType"

.field public static final TAG_IPSEC_OWN_URI:Ljava/lang/String; = "ApnSetting.mIpsecOwnUri"

.field public static final TAG_IPSEC_PFSVAL:Ljava/lang/String; = "ApnSetting.mPfsval"

.field public static final TAG_IPSEC_RMO_URI:Ljava/lang/String; = "ApnSetting.mIpsecRemoteUri"

.field public static final TAG_IPSEC_RURI_TYPE:Ljava/lang/String; = "ApnSetting.mRemoteUriType"

.field public static final TAG_IPSEC_SETTING_NA:Ljava/lang/String; = "ApnSetting.IWlanSettingName"

.field public static final TAG_IPSEC_TUN_MODE:Ljava/lang/String; = "ApnSetting.ipsecsetting.mTunnelMode"

.field public static final TAG_MOBIKE:Ljava/lang/String; = "ApnSetting.mMobikeval"

.field public static final TAG_PCSCF4_ATTR:Ljava/lang/String; = "pcscfv4VendorAttr"

.field public static final TAG_PCSCF6_ATTR:Ljava/lang/String; = "pcscfv6VendorAttr"

.field public static final TAG_PRESHARED_KEY:Ljava/lang/String; = "presharedKey"

.field public static final TAG_USER_AUTH:Ljava/lang/String; = "userAuth"

.field public static final TAG_V4_HANDOVER_IP:Ljava/lang/String; = "ipv4HandoverAddr"

.field public static final TAG_V6_HANDOVER_IP:Ljava/lang/String; = "ipv6HandoverAddr"


# instance fields
.field private adapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

.field private antiReplay:Z

.field private authType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

.field private bCaCertOk:Z

.field private caCert:Ljava/security/cert/X509Certificate;

.field private caCertData:[B

.field private cid:I

.field private gateway:Ljava/lang/String;

.field private globalDNSConfig:Z

.field private imeiVendorAttrType:I

.field private imeiVendorAttrVal:[B

.field private ipsecDhGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

.field private ipsecEncrType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

.field private ipsecIntegType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field private ipsecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

.field private ipsecLifeTimeVal:I

.field private ipv4HandoverAddr:Ljava/lang/String;

.field private ipv6HandoverAddr:Ljava/lang/String;

.field private isConnected:Z

.field private mBypassCaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/erisclient/IPSecConnection$BypassCa;",
            ">;"
        }
    .end annotation
.end field

.field private mIkeConnectionTimeOut:I

.field private mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

.field private mIkeDpdTimeOut:I

.field private mIkeEapType:Lcom/sec/epdg/IWlanEnum$IkeEapType;

.field private mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field private mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

.field private mIkeLife:I

.field private mIkeNatValue:I

.field private mIkeWindowSize:I

.field private mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

.field private mImei:Lcom/sec/epdg/IWlanEnum$Imei;

.field private mInterface:Ljava/lang/String;

.field private mobike:Z

.field private name:Ljava/lang/String;

.field private ownIdentity:Ljava/lang/String;

.field private ownIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

.field private pcscfv4VendorAttr:I

.field private pcscfv6VendorAttr:I

.field private periodicDpdTimer:I

.field private pfsVal:Z

.field private presharedKey:Ljava/lang/String;

.field private remoteIdentity:Ljava/lang/String;

.field private remoteIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

.field private state:Lcom/sec/erisclient/IPSecConnectionState;

.field private subnetType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

.field private tunnelType:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

.field private userAuth:Z

.field private username:Ljava/lang/String;

.field private virtualAdapterName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mBypassCaList:Ljava/util/ArrayList;

    .line 77
    const-string v0, "IPSecConnection"

    const-string v1, "IPSecConnection()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z

    .line 79
    iput-boolean v2, p0, Lcom/sec/erisclient/IPSecConnection;->isConnected:Z

    .line 80
    iput-boolean v2, p0, Lcom/sec/erisclient/IPSecConnection;->pfsVal:Z

    .line 81
    sget-object v0, Lcom/sec/epdg/IWlanEnum$Imei;->NONE:Lcom/sec/epdg/IWlanEnum$Imei;

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mImei:Lcom/sec/epdg/IWlanEnum$Imei;

    .line 82
    const-string v0, "CN=epdg-ltelab.epc.att.net,OU=lte-lab-sha2Cert,O=AT&T Services\\, Inc.,L=Southfield,ST=Michigan,C=US"

    const-string v1, "210356fc173989c79980196eba33484b"

    invoke-virtual {p0, v0, v1}, Lcom/sec/erisclient/IPSecConnection;->AddBypassCa(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "val"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 269
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->caCert:Ljava/security/cert/X509Certificate;

    .line 270
    if-nez p1, :cond_0

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->caCertData:[B

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->caCertData:[B

    goto :goto_0
.end method


# virtual methods
.method public AddBypassCa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dn"    # Ljava/lang/String;
    .param p2, "cn"    # Ljava/lang/String;

    .prologue
    .line 633
    new-instance v0, Lcom/sec/erisclient/IPSecConnection$BypassCa;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/erisclient/IPSecConnection$BypassCa;-><init>(Lcom/sec/erisclient/IPSecConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    .local v0, "bypassCa":Lcom/sec/erisclient/IPSecConnection$BypassCa;
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mBypassCaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    return-void
.end method

.method public IsBypassCa(Ljava/security/cert/X509Certificate;)Z
    .locals 5
    .param p1, "caCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 638
    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->mBypassCaList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/erisclient/IPSecConnection$BypassCa;

    .line 639
    .local v0, "ca":Lcom/sec/erisclient/IPSecConnection$BypassCa;
    # getter for: Lcom/sec/erisclient/IPSecConnection$BypassCa;->DN:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/erisclient/IPSecConnection$BypassCa;->access$000(Lcom/sec/erisclient/IPSecConnection$BypassCa;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/sec/erisclient/IPSecConnection$BypassCa;->SN:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/erisclient/IPSecConnection$BypassCa;->access$100(Lcom/sec/erisclient/IPSecConnection$BypassCa;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    const/4 v2, 0x1

    .line 644
    .end local v0    # "ca":Lcom/sec/erisclient/IPSecConnection$BypassCa;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mInterface:Ljava/lang/String;

    .line 492
    return-void
.end method

.method public declared-synchronized getConnID()I
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->cid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeConnectionTimeOut:I

    return v0
.end method

.method public getDpdTimeout()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDpdTimeOut:I

    return v0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->gateway:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalDnsConfiguration()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->globalDNSConfig:Z

    return v0
.end method

.method public getGroup()Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    return-object v0
.end method

.method public getHostAuthentication()Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->authType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    return-object v0
.end method

.method public getIPsecAntiReplay()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->antiReplay:Z

    return v0
.end method

.method public getIPsecEncryption()Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecEncrType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    return-object v0
.end method

.method public getIPsecGroup()Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    return-object v0
.end method

.method public getIPsecIntegrity()Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecIntegType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    return-object v0
.end method

.method public getIPsecLife()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeVal:I

    return v0
.end method

.method public getIPsecLifeType()Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    return-object v0
.end method

.method public getIkeEncryption()Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    return-object v0
.end method

.method public getIkeIntegrity()Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    return-object v0
.end method

.method public getIkeLife()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeLife:I

    return v0
.end method

.method public getIkeVersion()Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    return-object v0
.end method

.method public getIkeWindowSize()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeWindowSize:I

    return v0
.end method

.method public getImeiVendorAttrType()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrType:I

    return v0
.end method

.method public getImeiVendorAttrVal()[B
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrVal:[B

    return-object v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getMobike()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->mobike:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNattKeepaliveTimeout()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 425
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeNatValue:I

    return v0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnIdentityType()Lcom/sec/epdg/IWlanEnum$IdentityType;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    return-object v0
.end method

.method public getPcscfv4VendorAttr()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv4VendorAttr:I

    return v0
.end method

.method public getPcscfv6VendorAttr()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv6VendorAttr:I

    return v0
.end method

.method public getPerfectForwardSecrecy()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->pfsVal:Z

    return v0
.end method

.method public getPeriodicDpdTimer()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->periodicDpdTimer:I

    return v0
.end method

.method public getPreSharedKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->presharedKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIdentityType()Lcom/sec/epdg/IWlanEnum$IdentityType;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    return-object v0
.end method

.method public getRequestedRacIPv4Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipv4HandoverAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedRacIPv6Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipv6HandoverAddr:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getState()Lcom/sec/erisclient/IPSecConnectionState;
    .locals 3

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    const-string v0, "IPSecConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->state:Lcom/sec/erisclient/IPSecConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->state:Lcom/sec/erisclient/IPSecConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSubnetType()Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->subnetType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    return-object v0
.end method

.method public getTunnelMode()Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->tunnelType:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    return-object v0
.end method

.method public getUserAuthentication()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->userAuth:Z

    return v0
.end method

.method public getVirtualAdapterConfiguration()Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->adapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    return-object v0
.end method

.method public getVirtualAdapterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->virtualAdapterName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized isCaCertOk()Z
    .locals 1

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized isConnected()Z
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCaCertWithVerifying(Ljava/security/cert/X509Certificate;)Z
    .locals 10
    .param p1, "caCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 278
    monitor-enter p0

    const/4 v2, 0x0

    .line 279
    .local v2, "certMan":Lcom/sec/erisclient/TrustedCertificateManager;
    const/4 v5, 0x0

    .line 280
    .local v5, "rootCaCert":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 281
    .local v1, "bCaCertVerified":Z
    :try_start_0
    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "csc":Ljava/lang/String;
    const/4 v0, 0x0

    .line 284
    .local v0, "alias":Ljava/lang/String;
    const-string v7, "ATT"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TEL"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "XFA"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 286
    :cond_0
    const-string v0, "system:facacbc6.0"

    .line 303
    :cond_1
    :goto_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z

    .line 305
    invoke-static {}, Lcom/sec/erisclient/TrustedCertificateManager;->getInstance()Lcom/sec/erisclient/TrustedCertificateManager;

    move-result-object v2

    .line 306
    invoke-virtual {v2}, Lcom/sec/erisclient/TrustedCertificateManager;->load()Lcom/sec/erisclient/TrustedCertificateManager;

    .line 307
    if-eqz v0, :cond_9

    .line 309
    invoke-virtual {v2, v0}, Lcom/sec/erisclient/TrustedCertificateManager;->getCACertificateFromAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 310
    if-nez v5, :cond_8

    .line 311
    const-string v7, "IPSecConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCaCertWithVerifying(): Can\'t get root CA cert with alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :goto_1
    monitor-exit p0

    return v6

    .line 288
    :cond_2
    :try_start_1
    const-string v7, "TMB"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "XAA"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "TMK"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 290
    :cond_3
    const-string v0, "system:3e7271e8.0"

    goto :goto_0

    .line 292
    :cond_4
    const-string v7, "AUT"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "ZVV"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "ZTO"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 294
    :cond_5
    const-string v0, "system:bc3f2570.0"

    goto :goto_0

    .line 296
    :cond_6
    const-string v7, "VDF"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 297
    const-string v0, "system:3ad48a91.0"

    goto :goto_0

    .line 299
    :cond_7
    const-string v7, "NEE"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 300
    const-string v0, "system:00673b5b.0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    :cond_8
    if-eqz p1, :cond_c

    .line 317
    :try_start_2
    const-string v6, "IPSecConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCaCertWithVerifying(): using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 320
    const/4 v1, 0x1

    .line 321
    const-string v6, "IPSecConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCaCertWithVerifying(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is verified"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    :cond_9
    :goto_2
    if-eqz p1, :cond_a

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/sec/erisclient/IPSecConnection;->IsBypassCa(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 340
    const-string v6, "IPSecConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CA bypassed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v1, 0x1

    .line 343
    :cond_a
    if-eqz v1, :cond_b

    .line 344
    invoke-direct {p0, p1}, Lcom/sec/erisclient/IPSecConnection;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    .line 345
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z

    :cond_b
    move v6, v1

    .line 347
    goto/16 :goto_1

    .line 323
    :catch_0
    move-exception v4

    .line 324
    .local v4, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v4}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 278
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "csc":Ljava/lang/String;
    .end local v4    # "e":Ljava/security/InvalidKeyException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 325
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v3    # "csc":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 326
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_4
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .line 327
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v4

    .line 328
    .local v4, "e":Ljava/security/NoSuchProviderException;
    invoke-virtual {v4}, Ljava/security/NoSuchProviderException;->printStackTrace()V

    goto :goto_2

    .line 329
    .end local v4    # "e":Ljava/security/NoSuchProviderException;
    :catch_3
    move-exception v4

    .line 330
    .local v4, "e":Ljava/security/SignatureException;
    invoke-virtual {v4}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_2

    .line 331
    .end local v4    # "e":Ljava/security/SignatureException;
    :catch_4
    move-exception v4

    .line 332
    .local v4, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_2

    .line 335
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    :cond_c
    const-string v6, "IPSecConnection"

    const-string v7, "setCaCertWithVerifying(): Error reading CA cert"

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized setConnID(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->cid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 403
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeConnectionTimeOut:I

    .line 404
    return-void
.end method

.method protected declared-synchronized setConnected(Z)V
    .locals 1
    .param p1, "val"    # Z

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDpdTimeout(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 411
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDpdTimeOut:I

    .line 412
    return-void
.end method

.method public setEapMethod(Lcom/sec/epdg/IWlanEnum$IkeEapType;)V
    .locals 0
    .param p1, "eaptype"    # Lcom/sec/epdg/IWlanEnum$IkeEapType;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEapType:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    .line 181
    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 0
    .param p1, "gateway"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->gateway:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setGlobalDnsConfiguration(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->globalDNSConfig:Z

    .line 209
    return-void
.end method

.method public setGroup(Lcom/sec/epdg/IWlanEnum$IkeDhGroup;)V
    .locals 0
    .param p1, "mIkeDhGroup"    # Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    .line 380
    return-void
.end method

.method public setHostAuthentication(Lcom/sec/epdg/IWlanEnum$IPSecAuthType;)V
    .locals 0
    .param p1, "authType"    # Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->authType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    .line 193
    return-void
.end method

.method public setIPsecAntiReplay(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->antiReplay:Z

    .line 249
    return-void
.end method

.method public setIPsecEncryption(Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;)V
    .locals 0
    .param p1, "encryptVal"    # Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecEncrType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    .line 225
    return-void
.end method

.method public setIPsecGroup(Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;)V
    .locals 0
    .param p1, "group"    # Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    .line 241
    return-void
.end method

.method public setIPsecIntegrity(Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;)V
    .locals 0
    .param p1, "integrityval"    # Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecIntegType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 233
    return-void
.end method

.method public setIPsecLife(Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;I)V
    .locals 0
    .param p1, "ipsecLifeTimeType"    # Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .param p2, "ipsecLifeTimeVal"    # I

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    .line 257
    iput p2, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeVal:I

    .line 258
    return-void
.end method

.method public setIkeEncryption(Lcom/sec/epdg/IWlanEnum$IkeEncryption;)V
    .locals 0
    .param p1, "mIkeEncryptType"    # Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    .line 372
    return-void
.end method

.method public setIkeIntegrity(Lcom/sec/epdg/IWlanEnum$IkeIntegrity;)V
    .locals 0
    .param p1, "mIkeIntergrity"    # Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    .line 364
    return-void
.end method

.method public setIkeLife(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 387
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeLife:I

    .line 388
    return-void
.end method

.method public setIkeVersion(Lcom/sec/epdg/IWlanEnum$Ikeversion;)V
    .locals 0
    .param p1, "mIkeversion"    # Lcom/sec/epdg/IWlanEnum$Ikeversion;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    .line 356
    return-void
.end method

.method public setIkeWindowSize(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 395
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeWindowSize:I

    .line 396
    return-void
.end method

.method public setImeiVendorAttr(I[B)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "val"    # [B

    .prologue
    .line 469
    sget-object v0, Lcom/sec/epdg/IWlanEnum$Imei;->DEVICE_IMEI:Lcom/sec/epdg/IWlanEnum$Imei;

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mImei:Lcom/sec/epdg/IWlanEnum$Imei;

    .line 470
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrType:I

    .line 471
    iput-object p2, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrVal:[B

    .line 472
    return-void
.end method

.method public setMobike(Z)V
    .locals 0
    .param p1, "mobike"    # Z

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->mobike:Z

    .line 500
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->name:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setNattKeepaliveTimeout(I)V
    .locals 0
    .param p1, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 420
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeNatValue:I

    .line 421
    return-void
.end method

.method public setOwnIdentity(Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;)V
    .locals 0
    .param p1, "ownIdentityType"    # Lcom/sec/epdg/IWlanEnum$IdentityType;
    .param p2, "ownIdentity"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    .line 149
    iput-object p2, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentity:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setPcscfv4VendorAttr(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 453
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv4VendorAttr:I

    .line 454
    return-void
.end method

.method public setPcscfv6VendorAttr(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 461
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv6VendorAttr:I

    .line 462
    return-void
.end method

.method public setPerfectForwardSecrecy(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->pfsVal:Z

    .line 185
    return-void
.end method

.method public setPeriodicDpdTimer(I)V
    .locals 0
    .param p1, "periodicDpdTimer"    # I

    .prologue
    .line 483
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->periodicDpdTimer:I

    .line 484
    return-void
.end method

.method public setPreSharedKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->presharedKey:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setRemoteIdentity(Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteIdentityType"    # Lcom/sec/epdg/IWlanEnum$IdentityType;
    .param p2, "remoteIdentity"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p2, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentity:Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    .line 163
    return-void
.end method

.method public setRequestedRacIPv4Address(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipv4HandoverAddr:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setRequestedRacIPv6Address(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipv6HandoverAddr:Ljava/lang/String;

    .line 446
    return-void
.end method

.method protected declared-synchronized setState(Lcom/sec/erisclient/IPSecConnectionState;)V
    .locals 3
    .param p1, "state"    # Lcom/sec/erisclient/IPSecConnectionState;

    .prologue
    .line 613
    monitor-enter p0

    :try_start_0
    const-string v0, "IPSecConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->state:Lcom/sec/erisclient/IPSecConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    monitor-exit p0

    return-void

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubnetType(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)V
    .locals 0
    .param p1, "subnetType"    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->subnetType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 141
    return-void
.end method

.method public setTunnelMode(Lcom/sec/epdg/IWlanEnum$TunnelModeType;)V
    .locals 0
    .param p1, "tunnelType"    # Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->tunnelType:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    .line 217
    return-void
.end method

.method public setUserAuthentication(Z)V
    .locals 0
    .param p1, "userAuth"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->userAuth:Z

    .line 133
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->username:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setVirtualAdapterConfiguration(Lcom/sec/epdg/IWlanEnum$AdapterConf;)V
    .locals 0
    .param p1, "val"    # Lcom/sec/epdg/IWlanEnum$AdapterConf;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->adapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    .line 430
    return-void
.end method

.method public setVirtualAdapterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->virtualAdapterName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 557
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 559
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "IPSecConnection"

    const-string v4, "toJson()"

    invoke-static {v1, v4}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v1, "cid"

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 561
    const-string v1, "virtualAdapterName"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->virtualAdapterName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    const-string v1, "gateway"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->gateway:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    const-string v4, "userAuth"

    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->userAuth:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 564
    const-string v1, "interface"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    const-string v1, "presharedKey"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->presharedKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    const-string v4, "globalDNSConfig"

    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->globalDNSConfig:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 567
    const-string v4, "antiReplay"

    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->antiReplay:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 568
    const-string v4, "caCertData"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->caCertData:[B

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_3
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    const-string v1, "ipv4HandoverAddr"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->ipv4HandoverAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    const-string v1, "ipv6HandoverAddr"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->ipv6HandoverAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    const-string v1, "pcscfv4VendorAttr"

    iget v4, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv4VendorAttr:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 572
    const-string v1, "pcscfv6VendorAttr"

    iget v4, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv6VendorAttr:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 573
    const-string v4, "ApnSetting.mMobikeval"

    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->mobike:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 574
    const-string v4, "ApnSetting.mImei"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mImei:Lcom/sec/epdg/IWlanEnum$Imei;

    if-nez v1, :cond_5

    move v1, v3

    :goto_5
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 575
    const-string v1, "imeiVendorAttrType"

    iget v4, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrType:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 576
    const-string v4, "imeiVendorAttrVal"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrVal:[B

    if-nez v1, :cond_6

    const-string v1, ""

    :goto_6
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    const-string v1, "ApnSetting.IWlanSettingName"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    const-string v4, "ApnSetting.mOwnUriType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    if-nez v1, :cond_7

    move v1, v3

    :goto_7
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 580
    const-string v1, "ApnSetting.mIpsecOwnUri"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    const-string v4, "ApnSetting.mRemoteUriType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    if-nez v1, :cond_8

    move v1, v3

    :goto_8
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 582
    const-string v1, "ApnSetting.mIpsecRemoteUri"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    const-string v1, "ApnSetting.mPfsval"

    iget-boolean v4, p0, Lcom/sec/erisclient/IPSecConnection;->pfsVal:Z

    if-eqz v4, :cond_9

    :goto_9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 584
    const-string v2, "ApnSetting.mIpSecauthType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->authType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    if-nez v1, :cond_a

    move v1, v3

    :goto_a
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 585
    const-string v2, "ApnSetting.mIpSecIpType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->subnetType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-nez v1, :cond_b

    move v1, v3

    :goto_b
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 586
    const-string v2, "ApnSetting.mIkeVirtualAdapterConf"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->adapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    if-nez v1, :cond_c

    move v1, v3

    :goto_c
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 587
    const-string v1, "ApnSetting.mPeriodicDpdTimer"

    iget v2, p0, Lcom/sec/erisclient/IPSecConnection;->periodicDpdTimer:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 590
    const-string v2, "ApnSetting.ipsecsetting.mTunnelMode"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->tunnelType:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    if-nez v1, :cond_d

    move v1, v3

    :goto_d
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 591
    const-string v2, "ApnSetting.ipsecsetting.mIpSecEncryptionType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecEncrType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    if-nez v1, :cond_e

    move v1, v3

    :goto_e
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 592
    const-string v2, "ApnSetting.ipsecsetting.mIpSecIntegrityType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecIntegType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    if-nez v1, :cond_f

    move v1, v3

    :goto_f
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 593
    const-string v2, "ApnSetting.ipsecsetting.mIpSecDHGroup"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    if-nez v1, :cond_10

    move v1, v3

    :goto_10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 594
    const-string v2, "ApnSetting.ipsecsetting.mIpSecLifeTimeType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    if-nez v1, :cond_11

    move v1, v3

    :goto_11
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 595
    const-string v1, "ApnSetting.ipsecsetting.mIpSecLifeval"

    iget v2, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeVal:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 597
    const-string v2, "ApnSetting.ikesetting.mIkeversion"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    if-nez v1, :cond_12

    move v1, v3

    :goto_12
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 598
    const-string v2, "ApnSetting.ikesetting.mIkeEncryptType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    if-nez v1, :cond_13

    move v1, v3

    :goto_13
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 599
    const-string v2, "ApnSetting.ikesetting.mIkeIntegrity"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    if-nez v1, :cond_14

    move v1, v3

    :goto_14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 600
    const-string v2, "ApnSetting.ikesetting.mIkeDhGroup"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    if-nez v1, :cond_15

    move v1, v3

    :goto_15
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 601
    const-string v1, "ApnSetting.ikesetting.mIkeEapType"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEapType:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    if-nez v2, :cond_16

    :goto_16
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 602
    const-string v1, "ApnSetting.ikesetting.mIkeLife"

    iget v2, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeLife:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 603
    const-string v1, "ApnSetting.ikesetting.mIkeWindowSize"

    iget v2, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeWindowSize:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 604
    const-string v1, "ApnSetting.ikesetting.mIkeDpdTimeOut"

    iget v2, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDpdTimeOut:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 605
    const-string v1, "ApnSetting.ikesetting.mIkeConnectionTimeOut"

    iget v2, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeConnectionTimeOut:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 606
    const-string v1, "ApnSetting.ikesetting.mIkeNatValue"

    iget v2, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeNatValue:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 608
    return-object v0

    :cond_0
    move v1, v3

    .line 563
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 566
    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 567
    goto/16 :goto_2

    .line 568
    :cond_3
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->caCertData:[B

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_4
    move v1, v3

    .line 573
    goto/16 :goto_4

    .line 574
    :cond_5
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mImei:Lcom/sec/epdg/IWlanEnum$Imei;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$Imei;->ordinal()I

    move-result v1

    goto/16 :goto_5

    .line 576
    :cond_6
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrVal:[B

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    .line 579
    :cond_7
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IdentityType;->ordinal()I

    move-result v1

    goto/16 :goto_7

    .line 581
    :cond_8
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IdentityType;->ordinal()I

    move-result v1

    goto/16 :goto_8

    :cond_9
    move v2, v3

    .line 583
    goto/16 :goto_9

    .line 584
    :cond_a
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->authType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->ordinal()I

    move-result v1

    goto/16 :goto_a

    .line 585
    :cond_b
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->subnetType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->ordinal()I

    move-result v1

    goto/16 :goto_b

    .line 586
    :cond_c
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->adapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$AdapterConf;->ordinal()I

    move-result v1

    goto/16 :goto_c

    .line 590
    :cond_d
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->tunnelType:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->ordinal()I

    move-result v1

    goto/16 :goto_d

    .line 591
    :cond_e
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecEncrType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->ordinal()I

    move-result v1

    goto/16 :goto_e

    .line 592
    :cond_f
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecIntegType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->ordinal()I

    move-result v1

    goto/16 :goto_f

    .line 593
    :cond_10
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    goto/16 :goto_10

    .line 594
    :cond_11
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->ordinal()I

    move-result v1

    goto/16 :goto_11

    .line 597
    :cond_12
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$Ikeversion;->ordinal()I

    move-result v1

    goto/16 :goto_12

    .line 598
    :cond_13
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->ordinal()I

    move-result v1

    goto/16 :goto_13

    .line 599
    :cond_14
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->ordinal()I

    move-result v1

    goto/16 :goto_14

    .line 600
    :cond_15
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v1

    goto/16 :goto_15

    .line 601
    :cond_16
    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEapType:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanEnum$IkeEapType;->ordinal()I

    move-result v3

    goto/16 :goto_16
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
