.class public Lcom/android/server/enterprise/wifi/WifiPolicy;
.super Landroid/app/enterprise/IWifiPolicy$Stub;
.source "WifiPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
    }
.end annotation


# static fields
.field private static final ANONYMOUS_IDENTITY:Ljava/lang/String; = "anonymous_identity"

.field private static final CA_CERT:Ljava/lang/String; = "ca_cert"

.field private static final CLIENT_CERT:Ljava/lang/String; = "client_cert"

.field private static final DEFAULT_IP_ADDRESS:Ljava/lang/String; = "192.168.1.100"

.field private static final EAP:Ljava/lang/String; = "eap"

.field private static final ENGINE:Ljava/lang/String; = "engine"

.field private static final ENGINE_ID:Ljava/lang/String; = "engine_id"

.field private static final EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

.field private static final EXCLLIST_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

.field private static final EXCL_REGEX:Ljava/lang/String; = "[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*"

.field private static final HC:Ljava/lang/String; = "a-zA-Z0-9\\_"

.field private static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final HOSTNAME_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

.field private static final IDENTITY:Ljava/lang/String; = "identity"

.field private static final IP_REGEX:Ljava/lang/String; = "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

.field private static final KEY_ID:Ljava/lang/String; = "key_id"

.field private static final MAX_EAP_ID_LENGTH:I = 0xc8

.field private static final MAX_EAP_PW_LENGTH:I = 0xc8

.field private static final MAX_NAME_LENGTH:I = 0x20

.field private static final MAX_PASSWORD_LENGTH:I = 0x40

.field private static final MIN_PASSWORD_LENGTH:I = 0x8

.field private static final NAME_IP_REGEX:Ljava/lang/String; = "[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final PHASE1:Ljava/lang/String; = "phase1"

.field private static final PHASE2:Ljava/lang/String; = "phase2"

.field private static final PREF_KEYSTORE:Ljava/lang/String; = "keystore://"

.field private static final PRIVATE_KEY:Ljava/lang/String; = "private_key"

.field private static final TAG:Ljava/lang/String; = "WifiPolicyService"

.field private static isAPSettingFromAdmin:Z

.field private static isBootCompleted:Z

.field private static isKnoxMode:Z

.field private static final mSecurityLevel:[Ljava/lang/String;

.field private static final sAcceptableSecurityLevels:[Ljava/lang/String;


# instance fields
.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkSsid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    sput-boolean v3, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    .line 179
    sput-boolean v3, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z

    .line 180
    sput-boolean v3, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    .line 186
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Open"

    aput-object v1, v0, v3

    const-string v1, "WEP"

    aput-object v1, v0, v4

    const-string v1, "WPA/WPA2/FT PSK"

    aput-object v1, v0, v5

    const-string v1, "802.1x EAP-LEAP"

    aput-object v1, v0, v6

    const-string v1, "802.1x EAP-FAST"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "802.1x EAP-PEAP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "802.1x EAP-TTLS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "802.1x EAP-TLS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FT-PSK"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "802.1x EAP-PEAP-FT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "802.1x EAP-PEAP-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "802.1x EAP-TTLS-FT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "802.1x EAP-TTLS-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "802.1x EAP-TLS-FT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "802.1x EAP-TLS-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "802.1x EAP-LEAP-FT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "802.1x EAP-LEAP-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "802.1x EAP-FAST-FT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "802.1x EAP-FAST-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "802.1x EAP-PWD"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "802.1x EAP-PWD-FT"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "802.1x EAP-PWD-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "802.1x EAP-SIM"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "802.1x EAP-SIM-FT"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "802.1x EAP-SIM-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "802.1x EAP-AKA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "802.1x EAP-AKA-FT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "802.1x EAP-AKA-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "802.1x EAP-AKA\'"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "802.1x EAP-AKA\'-FT"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "802.1x EAP-AKA\'-CCKM"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    .line 199
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v3

    const-string v1, "WEP"

    aput-object v1, v0, v4

    const-string v1, "PSK"

    aput-object v1, v0, v5

    const-string v1, "EAP-LEAP"

    aput-object v1, v0, v6

    const-string v1, "EAP-FAST"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "EAP-PEAP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EAP-TTLS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EAP-TLS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FT-PSK"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EAP-PEAP-FT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EAP-PEAP-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EAP-TTLS-FT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EAP-TTLS-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EAP-TLS-FT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EAP-TLS-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "EAP-LEAP-FT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "EAP-LEAP-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "EAP-FAST-FT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "EAP-FAST-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "EAP-PWD"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "EAP-PWD-FT"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "EAP-PWD-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "EAP-SIM"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "EAP-SIM-FT"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "EAP-SIM-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "EAP-AKA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "EAP-AKA-FT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EAP-AKA-CCKM"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "EAP-AKA\'"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "EAP-AKA\'-FT"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "EAP-AKA\'-CCKM"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    .line 230
    const-string v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 231
    const-string v0, "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appPolicy"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    const/4 v3, 0x0

    .line 268
    invoke-direct {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;-><init>()V

    .line 171
    iput-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 173
    iput-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 177
    iput-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    .line 367
    iput-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 4004
    new-instance v3, Lcom/android/server/enterprise/wifi/WifiPolicy$3;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$3;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 270
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 271
    iput-object p2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 273
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 281
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 285
    .local v2, "mPersona":Landroid/os/PersonaManager;
    :try_start_0
    new-instance v3, Lcom/android/server/enterprise/wifi/WifiPolicy$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$1;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WifiPolicyService"

    const-string v4, " Error registering with Persona service via registerSystemPersonaObserver"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 166
    sget-boolean v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 166
    sput-boolean p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/wifi/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/wifi/WifiPolicy;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "x2"    # I

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/wifi/WifiPolicy;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/wifi/WifiPolicy;

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/wifi/WifiPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/wifi/WifiPolicy;

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWpsBlockedNetworks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 166
    sput-boolean p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    return p0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 472
    .local v0, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;)Z

    .line 475
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 476
    return-void
.end method

.method private addToBlocked(ILjava/lang/String;)V
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3070
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 3072
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3073
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3074
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 3076
    :cond_0
    return-void
.end method

.method private alignConfiguredNetworks()V
    .locals 6

    .prologue
    .line 4911
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    .line 4912
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4913
    .local v2, "token":J
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 4914
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 4915
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 4916
    .local v4, "wc":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4917
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 4919
    :cond_0
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enableNetwork(Ljava/lang/String;)Z

    goto :goto_0

    .line 4923
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "wc":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4924
    return-void
.end method

.method private asyncEnableNetwork(IZ)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "enableOthers"    # Z

    .prologue
    .line 4045
    sget-boolean v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    if-eqz v1, :cond_0

    .line 4046
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.enable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4047
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "netId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4048
    const-string v1, "enableOthers"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4049
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4051
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private checkSecurityLevel(Landroid/app/enterprise/WifiAdminProfile;)Z
    .locals 7
    .param p1, "profile"    # Landroid/app/enterprise/WifiAdminProfile;

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1558
    iget-object v0, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    .line 1559
    .local v0, "security":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1560
    const-string v2, "WifiPolicyService"

    const-string v3, "Profile not set, security is null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    :cond_0
    :goto_0
    return v1

    .line 1563
    :cond_1
    const-string v3, "WifiPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiProfile - sec "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1568
    const-string v3, "PSK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1569
    const-string v2, "WifiPolicyService"

    const-string v3, "PSK not set"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1573
    :cond_2
    const-string v3, "WEP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1574
    iget v3, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-lt v3, v2, :cond_3

    iget v3, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-le v3, v6, :cond_4

    .line 1575
    :cond_3
    const-string v2, "WifiPolicyService"

    const-string v3, "WebKeyId invalid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1578
    :cond_4
    iget v3, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-ne v3, v2, :cond_5

    iget-object v3, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1579
    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "wepkey1 not set but index is set to 1"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1582
    :cond_5
    iget v3, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    iget-object v3, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1583
    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "wepkey2 not set but index is set to 2"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1586
    :cond_6
    iget v3, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    iget-object v3, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1587
    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "wepkey3 not set but index is set to 3"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1590
    :cond_7
    iget v3, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-ne v3, v6, :cond_8

    iget-object v3, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1591
    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "wepkey4 not set but index is set to 4"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 1597
    goto/16 :goto_0
.end method

.method private clearAuthConfigFromDb(Ljava/lang/String;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1836
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1837
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "networkSSID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WifiProxyAuthTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 1839
    return-void
.end method

.method private computeprefixLength(Ljava/net/InetAddress;)I
    .locals 7
    .param p1, "mask"    # Ljava/net/InetAddress;

    .prologue
    .line 3993
    const/4 v2, 0x0

    .line 3994
    .local v2, "count":I
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-byte v1, v0, v4

    .line 3995
    .local v1, "b":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1

    .line 3996
    const/4 v6, 0x1

    shl-int/2addr v6, v3

    and-int/2addr v6, v1

    if-eqz v6, :cond_0

    .line 3997
    add-int/lit8 v2, v2, 0x1

    .line 3995
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3994
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4001
    .end local v1    # "b":B
    .end local v3    # "i":I
    :cond_2
    return v2
.end method

.method private convertArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 5525
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 5526
    :cond_0
    const-string v5, ""

    .line 5535
    :goto_0
    return-object v5

    .line 5527
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5529
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 5530
    .local v4, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5529
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5533
    .end local v4    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5535
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private convertAuthConfigToContentValues(ILjava/lang/String;Lcom/sec/enterprise/network/AuthConfig;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "adminUid"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/sec/enterprise/network/AuthConfig;

    .prologue
    .line 1813
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1814
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1815
    const-string/jumbo v1, "networkSSID"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    const-string/jumbo v1, "host"

    invoke-virtual {p3}, Lcom/sec/enterprise/network/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    const-string/jumbo v1, "port"

    invoke-virtual {p3}, Lcom/sec/enterprise/network/AuthConfig;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1818
    const-string/jumbo v1, "username"

    invoke-virtual {p3}, Lcom/sec/enterprise/network/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    const-string/jumbo v1, "password"

    invoke-virtual {p3}, Lcom/sec/enterprise/network/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    return-object v0
.end method

.method private convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 5539
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 5540
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 5541
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 3128
    if-nez p0, :cond_1

    .line 3129
    const/4 p0, 0x0

    .line 3135
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 3131
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3132
    .restart local v0    # "length":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 3135
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private createEntepriseProfile(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 520
    .local v4, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 521
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 522
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_4

    .line 523
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 524
    .local v3, "wifi":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 526
    const/4 v2, 0x0

    .line 527
    .local v2, "needSaveConfig":Z
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 528
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 529
    const/4 v2, 0x1

    .line 531
    :cond_1
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 532
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 533
    const/4 v2, 0x1

    .line 535
    :cond_2
    if-eqz v2, :cond_3

    .line 536
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;)Z

    .line 537
    :cond_3
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->forget(Landroid/net/wifi/WifiConfiguration;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 548
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2    # "needSaveConfig":Z
    .end local v3    # "wifi":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 544
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_4
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 545
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    return-void
.end method

.method private createNetworkSSID(ILjava/lang/String;ZLjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "isCCM"    # Z
    .param p4, "storageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 484
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_2

    .line 485
    :cond_0
    const-string v1, "WifiPolicyService"

    const-string v2, "SSID is invalid or excedes maximum length 32"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/4 v0, 0x0

    .line 507
    :cond_1
    :goto_0
    return-object v0

    .line 489
    :cond_2
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 490
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez p4, :cond_4

    .line 491
    if-eqz p3, :cond_3

    .line 492
    const-string v1, "WifiPolicyService"

    const-string v2, "CCM configuration"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    .line 500
    :cond_3
    :goto_1
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 501
    const/4 v1, -0x1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 503
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 496
    :cond_4
    const-string v1, "WifiPolicyService"

    const-string v2, "UCM configuration"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    goto :goto_1
.end method

.method private disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2941
    const/4 v0, 0x1

    .line 2942
    .local v0, "ret":Z
    if-eqz p1, :cond_1

    .line 2943
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_0

    .line 2944
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 2946
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v0

    .line 2947
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 2949
    :cond_1
    return v0
.end method

.method private disableNetwork(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2953
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2954
    .local v0, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2955
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 2956
    .local v2, "wifi":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_0

    .line 2957
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    .line 2961
    .end local v2    # "wifi":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return v3

    .line 2960
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2961
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 17
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "adminUid"    # I

    .prologue
    .line 3317
    const-string v14, "WifiPolicyService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "edmAddOrUpdateTask - updating network "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 3321
    .local v3, "enterprise":Landroid/net/wifi/WifiConfiguration;
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v14, :cond_1

    .line 3404
    :cond_0
    return-void

    .line 3323
    :cond_1
    sget-object v14, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3324
    .local v12, "security":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 3326
    const-string v14, "WEP"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3327
    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 3328
    .local v6, "index":I
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-eqz v14, :cond_2

    .line 3329
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aput-object v15, v14, v6

    .line 3330
    if-eqz v6, :cond_2

    .line 3331
    move-object/from16 v0, p1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 3332
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aput-object v15, v14, v6

    .line 3333
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput-object v16, v14, v15

    .line 3365
    .end local v6    # "index":I
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    .line 3366
    .local v7, "ipAssg":Landroid/net/IpConfiguration$IpAssignment;
    new-instance v13, Landroid/net/StaticIpConfiguration;

    invoke-direct {v13}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 3367
    .local v13, "staticIpconfig":Landroid/net/StaticIpConfiguration;
    const/4 v4, 0x0

    .line 3369
    .local v4, "finalProxy":Landroid/net/ProxyInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v11

    .line 3370
    .local v11, "proxyBkp":Landroid/net/ProxyInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v14

    sget-object v15, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-eq v14, v15, :cond_b

    .line 3371
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v13

    .line 3381
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v14

    sget-object v15, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v14, v15, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v14

    sget-object v15, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v14, v15, :cond_c

    .line 3383
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    .line 3387
    :cond_4
    :goto_2
    new-instance v14, Landroid/net/IpConfiguration;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v15

    invoke-direct {v14, v7, v15, v13, v4}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v3, v14}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 3389
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    .line 3396
    sget-object v14, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3397
    .local v2, "configSecurity":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "Open"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3398
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    sget-object v14, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v14, v14

    if-ge v5, v14, :cond_0

    .line 3399
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v14, v14, v5

    if-eqz v14, :cond_5

    .line 3400
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v15, ""

    aput-object v15, v14, v5

    .line 3398
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3336
    .end local v2    # "configSecurity":Ljava/lang/String;
    .end local v4    # "finalProxy":Landroid/net/ProxyInfo;
    .end local v5    # "i":I
    .end local v7    # "ipAssg":Landroid/net/IpConfiguration$IpAssignment;
    .end local v11    # "proxyBkp":Landroid/net/ProxyInfo;
    .end local v13    # "staticIpconfig":Landroid/net/StaticIpConfiguration;
    :cond_6
    const-string v14, "WPA/WPA2/FT PSK"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3338
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "*"

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 3339
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 3341
    :cond_7
    const-string v14, "802.1x EAP"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3342
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    .line 3344
    .local v8, "newConfigEAP":I
    if-eqz v8, :cond_8

    const/4 v14, 0x2

    if-eq v14, v8, :cond_8

    const/16 v14, 0x8

    if-eq v14, v8, :cond_8

    const/4 v14, 0x7

    if-eq v14, v8, :cond_8

    const/4 v14, 0x3

    if-ne v14, v8, :cond_a

    .line 3351
    :cond_8
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v10

    .line 3353
    .local v10, "passwordBkp":Ljava/lang/String;
    new-instance v14, Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 3354
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 3355
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v9

    .line 3357
    .local v9, "newPassword":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "*"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3358
    :cond_9
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3361
    .end local v9    # "newPassword":Ljava/lang/String;
    .end local v10    # "passwordBkp":Ljava/lang/String;
    :cond_a
    new-instance v14, Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto/16 :goto_0

    .line 3377
    .end local v8    # "newConfigEAP":I
    .restart local v4    # "finalProxy":Landroid/net/ProxyInfo;
    .restart local v7    # "ipAssg":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v11    # "proxyBkp":Landroid/net/ProxyInfo;
    .restart local v13    # "staticIpconfig":Landroid/net/StaticIpConfiguration;
    :cond_b
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v13

    goto/16 :goto_1

    .line 3384
    :cond_c
    if-eqz v11, :cond_4

    .line 3385
    move-object v4, v11

    goto/16 :goto_2
.end method

.method private enableNetwork(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 4927
    const/4 v0, 0x1

    .line 4928
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4930
    .local v2, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4931
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V

    .line 4933
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4934
    return v0
.end method

.method private enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2246
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2247
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2249
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string/jumbo v2, "networkSSID"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemProcess()V
    .locals 2

    .prologue
    .line 448
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 449
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_0
    return-void
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 442
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 443
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_0
    return-void
.end method

.method private enforceUCMPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 9
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "storageName"    # Ljava/lang/String;

    .prologue
    .line 407
    const-string v6, "WifiPolicyService"

    const-string v7, "enforceUCMPermission"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 v5, 0x0

    .line 409
    .local v5, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 410
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Landroid/app/enterprise/ContextInfo;)[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    move-result-object v2

    .line 411
    .local v2, "credentialsList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    if-eqz v2, :cond_0

    .line 412
    move-object v0, v2

    .local v0, "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 413
    .local v1, "credential":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    if-eqz v1, :cond_2

    iget-object v6, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 414
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v6, p1, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 415
    const/4 v5, 0x1

    .line 421
    .end local v0    # "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v1    # "credential":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    if-nez v5, :cond_1

    .line 422
    const-string v6, "WifiPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not able to find credential storage "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .end local v2    # "credentialsList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_1
    :goto_1
    return v5

    .line 412
    .restart local v0    # "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v1    # "credential":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v2    # "credentialsList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v1    # "credential":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v2    # "credentialsList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    const-string v6, "WifiPolicyService"

    const-string v7, "Couldn\'t enforce UCM permission. Is UCM service running?"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAdminUid(Landroid/app/enterprise/ContextInfo;)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 455
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 456
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_INFO"

    const-string v4, "adminUid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 458
    .local v0, "adminUid":I
    if-eq v0, v1, :cond_0

    .line 459
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller is not an active admin, adminUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    :cond_0
    return v1
.end method

.method private getAllBlockedList()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3026
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI"

    const-string v7, "blockedSSIDList"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 3028
    .local v4, "var":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3030
    .local v3, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3031
    .local v2, "list":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3032
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3033
    .local v0, "array":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3036
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "list":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getAllEnterpriseLastSSIDs()Ljava/util/List;
    .locals 9
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
    .line 3426
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3427
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "networkLastSSID"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3428
    .local v4, "list":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 3429
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3430
    .local v2, "lastSSIDs":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    .line 3431
    .local v6, "value":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3434
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "lastSSIDs":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method private getAllEnterpriseNetworks()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3407
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "networkSSID"

    aput-object v5, v3, v4

    .line 3410
    .local v3, "ret":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI_CONF"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3412
    .local v1, "cv":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3413
    .local v0, "config":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 3414
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "adminUid"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v6, "networkSSID"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3413
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3417
    :cond_0
    return-object v0
.end method

.method private getAllEnterpriseSSIDs()Ljava/util/List;
    .locals 3
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
    .line 3421
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string/jumbo v2, "networkSSID"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAllNetworkSSIDforKNOX()Ljava/util/List;
    .locals 13
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
    const/4 v12, 0x0

    .line 5506
    const-string v9, ""

    .line 5507
    .local v9, "var":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5508
    .local v0, "SSIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "WifiPolicyService"

    const-string/jumbo v11, "getAllNetworkSSIDforKNOX"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5509
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "wifiSSIDforKNOX"

    aput-object v11, v8, v10

    .line 5512
    .local v8, "ret":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ContainerOnly_wifiAP"

    invoke-virtual {v10, v11, v12, v12, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 5514
    .local v4, "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 5515
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v11, "wifiSSIDforKNOX"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5516
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5517
    .local v2, "array":[Ljava/lang/String;
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v3, v1, v6

    .line 5518
    .local v3, "aux":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5517
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5514
    .end local v3    # "aux":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5521
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "array":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_1
    return-object v0
.end method

.method private getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "ssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/network/AuthConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1842
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1845
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/network/AuthConfig;>;"
    const/4 v11, 0x4

    new-array v7, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "host"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "port"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "username"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "password"

    aput-object v12, v7, v11

    .line 1852
    .local v7, "returnColumns":[Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1853
    .local v8, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v11, "networkSSID"

    invoke-virtual {v8, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    iget-object v11, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "WifiProxyAuthTable"

    invoke-virtual {v11, v12, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    .line 1858
    .local v10, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v10, :cond_1

    .line 1875
    :cond_0
    return-object v6

    .line 1862
    :cond_1
    const/4 v2, 0x0

    .local v2, "hostDatabase":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "userDatabase":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1863
    .local v4, "passDatabase":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1865
    .local v5, "portDatabase":Ljava/lang/Integer;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1866
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v11, "host"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1867
    const-string/jumbo v11, "port"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1868
    const-string/jumbo v11, "username"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1869
    const-string/jumbo v11, "password"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1871
    new-instance v0, Lcom/sec/enterprise/network/AuthConfig;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v0, v2, v11, v9, v4}, Lcom/sec/enterprise/network/AuthConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1873
    .local v0, "config":Lcom/sec/enterprise/network/AuthConfig;
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .locals 10
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3041
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WIFI"

    const-string v9, "blockedSSIDList"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3043
    .local v6, "var":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3044
    .local v3, "l":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 3045
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3046
    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 3047
    .local v5, "s":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3046
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3050
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p1, "netId"    # I

    .prologue
    .line 3004
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3005
    .local v6, "token":J
    const/4 v3, 0x0

    .line 3006
    .local v3, "ret":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_0

    move-object v4, v3

    .line 3019
    .end local v3    # "ret":Landroid/net/wifi/WifiConfiguration;
    .local v4, "ret":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v4

    .line 3009
    .end local v4    # "ret":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "ret":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 3010
    .local v2, "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_2

    .line 3011
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3012
    .local v0, "cfg":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, p1, :cond_1

    .line 3013
    move-object v3, v0

    .line 3018
    .end local v0    # "cfg":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v4, v3

    .line 3019
    .end local v3    # "ret":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "ret":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0
.end method

.method private getConnectivityManagerService()Lcom/android/server/ConnectivityService;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mConnectivityService:Lcom/android/server/ConnectivityService;

    if-nez v0, :cond_0

    .line 388
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mConnectivityService:Lcom/android/server/ConnectivityService;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mConnectivityService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_1

    .line 1323
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1324
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1330
    .local v0, "callingUid":I
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1331
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1332
    const-string v5, "eap"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1333
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    .line 1334
    .local v2, "eapType":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 1335
    sget-object v5, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    aget-object v3, v5, v2

    .line 1362
    .end local v2    # "eapType":I
    :cond_0
    :goto_1
    return-object v3

    .line 1326
    .end local v0    # "callingUid":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    const-string/jumbo v7, "networkSSID"

    invoke-virtual {v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "callingUid":I
    goto :goto_0

    .line 1339
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const-string/jumbo v5, "phase2"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1340
    const-string v3, "NULL"

    .line 1341
    .local v3, "phase2":Ljava/lang/String;
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    .line 1342
    .local v4, "phase2Index":I
    if-ltz v4, :cond_3

    .line 1343
    sget-object v5, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    aget-object v3, v5, v4

    .line 1345
    :cond_3
    const-string v5, "NULL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1346
    const-string v3, "None"

    goto :goto_1

    .line 1350
    .end local v3    # "phase2":Ljava/lang/String;
    .end local v4    # "phase2Index":I
    :cond_4
    const-string/jumbo v5, "identity"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1351
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1352
    :cond_5
    const-string v5, "anonymous_identity"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1353
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1354
    :cond_6
    const-string/jumbo v5, "password"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1355
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1356
    :cond_7
    const-string v5, "client_cert"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "key_id"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1357
    :cond_8
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1358
    :cond_9
    const-string v5, "ca_cert"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1359
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method private getNetworkAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "addrType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2367
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2369
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2386
    :cond_0
    :goto_0
    return-object v3

    .line 2373
    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    const-string v4, "adminUid"

    aput-object v4, v0, v7

    const-string/jumbo v4, "networkSSID"

    aput-object v4, v0, v6

    .line 2376
    .local v0, "col":[Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 2379
    .local v2, "val":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI_CONF"

    new-array v6, v6, [Ljava/lang/String;

    aput-object p3, v6, v7

    invoke-virtual {v4, v5, v0, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2383
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2384
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v3, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3442
    const/4 v3, 0x0

    .line 3443
    .local v3, "ret":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_0

    move-object v4, v3

    .line 3459
    .end local v3    # "ret":Landroid/net/wifi/WifiConfiguration;
    .local v4, "ret":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v4

    .line 3446
    .end local v4    # "ret":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "ret":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3447
    .local v6, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3448
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 3449
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_2

    .line 3450
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3451
    .local v0, "auxNet":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3452
    move-object v3, v0

    .line 3458
    .end local v0    # "auxNet":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v4, v3

    .line 3459
    .end local v3    # "ret":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "ret":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0
.end method

.method private getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 33
    .param p1, "callingUid"    # I
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3591
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v5, v0, [Ljava/lang/String;

    const/16 v30, 0x0

    const-string v31, "adminUid"

    aput-object v31, v5, v30

    const/16 v30, 0x1

    const-string/jumbo v31, "networkSSID"

    aput-object v31, v5, v30

    .line 3594
    .local v5, "col":[Ljava/lang/String;
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    .line 3598
    .local v29, "val":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    const-string v31, "WIFI_CONF"

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 3600
    .local v9, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v8, 0x0

    .line 3602
    .local v8, "cv":Landroid/content/ContentValues;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    .line 3603
    :cond_0
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3765
    :goto_0
    return-object v6

    .line 3605
    :cond_1
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "cv":Landroid/content/ContentValues;
    check-cast v8, Landroid/content/ContentValues;

    .line 3609
    .restart local v8    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v30, "networkSSID"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3610
    .local v4, "SSID":Ljava/lang/String;
    const-string v30, "WifiPolicyService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " getNetworkConfiguration config.SSID "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3611
    if-nez v4, :cond_2

    .line 3612
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    goto :goto_0

    .line 3615
    :cond_2
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3617
    .local v6, "config":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v30, "networkEngineID"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 3618
    .local v11, "engine_id":Ljava/lang/Integer;
    const-string v30, "WifiPolicyService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "engine_id from mdm database "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3619
    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    .line 3620
    const-string v30, "WifiPolicyService"

    const-string v31, "create configuration with ccm"

    invoke-static/range {v30 .. v31}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3621
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    .line 3626
    :cond_3
    :goto_1
    iput-object v4, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3628
    const-string/jumbo v30, "networkBSSID"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 3629
    const-string/jumbo v30, "networkKeyMgmt"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget-object v31, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 3631
    const-string/jumbo v30, "networkAllowedProtos"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget-object v31, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 3633
    const-string/jumbo v30, "networkAuthAlg"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget-object v31, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 3636
    const-string/jumbo v30, "networkAllowedPairwiseCiphers"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget-object v31, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 3639
    const-string/jumbo v30, "networkAllowedGroupProtocols"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget-object v31, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 3642
    const-string/jumbo v30, "networkPSK"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3643
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string/jumbo v32, "networkWEPKey1"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    .line 3644
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    const-string/jumbo v32, "networkWEPKey2"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    .line 3645
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    const-string/jumbo v32, "networkWEPKey3"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    .line 3646
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x3

    const-string/jumbo v32, "networkWEPKey4"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    .line 3647
    const-string/jumbo v30, "networkWEPKeyId"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    iput v0, v6, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 3649
    const-string/jumbo v30, "networkEAP"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3650
    .local v10, "eap":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    sget-object v30, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v12, v0, :cond_4

    .line 3651
    sget-object v30, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    aget-object v30, v30, v12

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 3652
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 3657
    :cond_4
    const-string/jumbo v30, "networkPhase1"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3658
    .local v15, "phase1":Ljava/lang/String;
    const/16 v16, 0x0

    .line 3659
    .local v16, "phase1Set":Z
    const/4 v12, 0x0

    :goto_3
    sget-object v30, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v12, v0, :cond_5

    .line 3660
    sget-object v30, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    aget-object v30, v30, v12

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 3661
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 3662
    const/16 v16, 0x1

    .line 3666
    :cond_5
    if-nez v16, :cond_6

    .line 3667
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const/16 v31, -0x1

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 3670
    :cond_6
    const-string/jumbo v30, "networkPhase2"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3671
    .local v17, "phase2":Ljava/lang/String;
    const/16 v18, 0x0

    .line 3672
    .local v18, "phase2Set":Z
    const/4 v12, 0x0

    :goto_4
    sget-object v30, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v12, v0, :cond_7

    .line 3673
    sget-object v30, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    aget-object v30, v30, v12

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_15

    .line 3674
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 3675
    const/16 v18, 0x1

    .line 3679
    :cond_7
    if-nez v18, :cond_8

    .line 3680
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 3683
    :cond_8
    const-string/jumbo v30, "networkIdentity"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_9

    .line 3684
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const-string/jumbo v31, "networkIdentity"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 3685
    :cond_9
    const-string/jumbo v30, "networkAnonymousId"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_a

    .line 3686
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const-string/jumbo v31, "networkAnonymousId"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 3687
    :cond_a
    const-string/jumbo v30, "networkPassword"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_b

    .line 3688
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const-string/jumbo v31, "networkPassword"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 3689
    :cond_b
    const-string/jumbo v30, "networkClientCertification"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_c

    .line 3690
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const-string/jumbo v31, "networkClientCertification"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 3691
    :cond_c
    const-string/jumbo v30, "networkCaCertificate"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_d

    .line 3692
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const-string/jumbo v31, "networkCaCertificate"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 3695
    :cond_d
    const/16 v30, 0x1

    move/from16 v0, v30

    iput-boolean v0, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3696
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 3697
    .local v7, "configAux":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_e

    .line 3698
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v30, v0

    move/from16 v0, v30

    iput v0, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3699
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v30, v0

    move/from16 v0, v30

    iput v0, v6, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 3703
    :cond_e
    const-string/jumbo v30, "networkStaticIpEnabled"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 3705
    .local v14, "ipAssignment":Ljava/lang/Integer;
    new-instance v27, Landroid/net/StaticIpConfiguration;

    invoke-direct/range {v27 .. v27}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 3706
    .local v27, "staticIpConf":Landroid/net/StaticIpConfiguration;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_16

    .line 3707
    sget-object v13, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    .line 3711
    .local v13, "ipAssgn":Landroid/net/IpConfiguration$IpAssignment;
    :goto_5
    const-string/jumbo v30, "networkStaticIp"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3712
    .local v26, "staticIp":Ljava/lang/String;
    const-string/jumbo v30, "networkStaticGateway"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3713
    .local v25, "staticGateway":Ljava/lang/String;
    const-string/jumbo v30, "networkStaticPrimaryDns"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3714
    .local v23, "staticDns1":Ljava/lang/String;
    const-string/jumbo v30, "networkStaticSecondaryDns"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3715
    .local v24, "staticDns2":Ljava/lang/String;
    const-string/jumbo v30, "networkStaticSubnetMask"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3717
    .local v28, "staticSubnetMask":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3718
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Z

    .line 3719
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3722
    const/16 v20, 0x0

    .line 3723
    .local v20, "proxyInfo":Landroid/net/ProxyInfo;
    const/16 v21, 0x0

    .line 3725
    .local v21, "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    const-string/jumbo v30, "networkProxyState"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    .line 3728
    .local v22, "proxyState":Ljava/lang/Integer;
    if-eqz v22, :cond_f

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v30

    if-nez v30, :cond_18

    .line 3730
    :cond_f
    const-string/jumbo v30, "networkManualProxyEnabled"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 3731
    .local v19, "proxyEnabled":Ljava/lang/Integer;
    if-nez v19, :cond_10

    .line 3732
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 3735
    :cond_10
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_17

    .line 3736
    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    .line 3737
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v20

    .line 3760
    .end local v19    # "proxyEnabled":Ljava/lang/Integer;
    :goto_6
    if-eqz v20, :cond_11

    .line 3761
    const/16 v30, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/ProxyInfo;->setEnterpriseProxy(I)V

    .line 3764
    :cond_11
    new-instance v30, Landroid/net/IpConfiguration;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    move-object/from16 v3, v20

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto/16 :goto_0

    .line 3622
    .end local v7    # "configAux":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "eap":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "ipAssgn":Landroid/net/IpConfiguration$IpAssignment;
    .end local v14    # "ipAssignment":Ljava/lang/Integer;
    .end local v15    # "phase1":Ljava/lang/String;
    .end local v16    # "phase1Set":Z
    .end local v17    # "phase2":Ljava/lang/String;
    .end local v18    # "phase2Set":Z
    .end local v20    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v21    # "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    .end local v22    # "proxyState":Ljava/lang/Integer;
    .end local v23    # "staticDns1":Ljava/lang/String;
    .end local v24    # "staticDns2":Ljava/lang/String;
    .end local v25    # "staticGateway":Ljava/lang/String;
    .end local v26    # "staticIp":Ljava/lang/String;
    .end local v27    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    .end local v28    # "staticSubnetMask":Ljava/lang/String;
    :cond_12
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 3623
    const-string v30, "WifiPolicyService"

    const-string v31, "create configuration with UCM"

    invoke-static/range {v30 .. v31}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3624
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    goto/16 :goto_1

    .line 3650
    .restart local v10    # "eap":Ljava/lang/String;
    .restart local v12    # "i":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 3659
    .restart local v15    # "phase1":Ljava/lang/String;
    .restart local v16    # "phase1Set":Z
    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 3672
    .restart local v17    # "phase2":Ljava/lang/String;
    .restart local v18    # "phase2Set":Z
    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 3709
    .restart local v7    # "configAux":Landroid/net/wifi/WifiConfiguration;
    .restart local v14    # "ipAssignment":Ljava/lang/Integer;
    .restart local v27    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    :cond_16
    sget-object v13, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .restart local v13    # "ipAssgn":Landroid/net/IpConfiguration$IpAssignment;
    goto/16 :goto_5

    .line 3739
    .restart local v19    # "proxyEnabled":Ljava/lang/Integer;
    .restart local v20    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v21    # "proxySett":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v22    # "proxyState":Ljava/lang/Integer;
    .restart local v23    # "staticDns1":Ljava/lang/String;
    .restart local v24    # "staticDns2":Ljava/lang/String;
    .restart local v25    # "staticGateway":Ljava/lang/String;
    .restart local v26    # "staticIp":Ljava/lang/String;
    .restart local v28    # "staticSubnetMask":Ljava/lang/String;
    :cond_17
    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_6

    .line 3743
    .end local v19    # "proxyEnabled":Ljava/lang/Integer;
    :cond_18
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v30

    packed-switch v30, :pswitch_data_0

    .line 3756
    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_6

    .line 3745
    :pswitch_0
    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 3746
    goto :goto_6

    .line 3748
    :pswitch_1
    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    .line 3749
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v20

    .line 3750
    goto :goto_6

    .line 3752
    :pswitch_2
    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    .line 3753
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readAutomaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v20

    .line 3754
    goto :goto_6

    .line 3743
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getNetworkIdBySSID(Ljava/lang/String;)I
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 2966
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2967
    .local v4, "token":J
    const/4 v2, -0x1

    .line 2968
    .local v2, "netId":I
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_0

    .line 2983
    :goto_0
    return v6

    .line 2971
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 2972
    .local v3, "netList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 2973
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2974
    .local v0, "cfg":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2975
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2980
    .end local v0    # "cfg":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    if-ne v2, v6, :cond_3

    .line 2981
    const-string v6, "WifiPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getNetworkIdBySSID  result:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2982
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 2983
    goto :goto_0
.end method

.method private getNetworkLinkSecurity(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "adminUid"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "securityLevel"    # [Ljava/lang/String;

    .prologue
    .line 931
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 932
    .local v0, "enterpriseNetwork":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 933
    const/4 v1, 0x0

    .line 935
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getNetworkLinkSecurity(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "enterpriseNetwork"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "securityLevel"    # [Ljava/lang/String;

    .prologue
    .line 939
    invoke-static {p1}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 940
    .local v0, "netSecurity":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 941
    aget-object v1, p2, v0

    .line 943
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNetworkWEPKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1122
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1124
    .local v0, "callingUid":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-ltz p3, :cond_0

    const/4 v3, 0x3

    if-le p3, v3, :cond_1

    .line 1135
    :cond_0
    :goto_0
    return-object v2

    .line 1128
    :cond_1
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1129
    .local v1, "enterprise":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 1130
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, p3

    if-eqz v3, :cond_0

    .line 1131
    const-string v2, "*"

    goto :goto_0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 4900
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .locals 1

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_0

    .line 379
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1927
    if-nez p1, :cond_1

    move-object p1, v0

    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    move-object p1, v0

    goto :goto_0
.end method

.method private isBlocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3079
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v0

    .line 3080
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2995
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2996
    const/4 v1, 0x0

    .line 3000
    :goto_0
    return v1

    .line 2999
    :cond_0
    const-string v1, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3000
    .local v0, "validIp":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private isNetworkSecureInternal(II)Z
    .locals 5
    .param p1, "netId"    # I
    .param p2, "minSec"    # I

    .prologue
    const/4 v1, 0x1

    .line 2846
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 2847
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2848
    .local v0, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 2849
    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v2

    invoke-static {p2}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 2857
    .end local v0    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return v1

    .line 2854
    :cond_0
    const-string v2, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Network id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2857
    .restart local v0    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSecurityLevelSupported(Ljava/lang/String;)Z
    .locals 4
    .param p1, "security"    # Ljava/lang/String;

    .prologue
    .line 695
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    .line 719
    .local v0, "acceptableSecurityLevels":[Ljava/lang/String;
    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v0, v2

    .line 720
    const/16 v2, 0xf

    const-string v3, ""

    aput-object v3, v0, v2

    .line 721
    const/16 v2, 0x10

    const-string v3, ""

    aput-object v3, v0, v2

    .line 724
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 727
    .local v1, "acceptableSecurityLevelsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 728
    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "security level not supported"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const/4 v2, 0x0

    .line 732
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private declared-synchronized isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 4904
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 4905
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v1, "*"

    invoke-static {v0, v1, p1}, Lcom/android/server/enterprise/utils/Utils;->isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4907
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4904
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isWifiSsidRestrictionActive(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 4891
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string/jumbo v3, "wifiSsidRestriction"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4896
    :goto_0
    return v1

    .line 4893
    :catch_0
    move-exception v0

    .line 4894
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string v1, "WifiPolicyService"

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4896
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiStateEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2933
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 2936
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isvalidSSIDName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ssid_name"    # Ljava/lang/String;

    .prologue
    .line 5613
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5614
    :cond_0
    const-string v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isvalidSSIDName() : SSID is invalid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5615
    const/4 v0, 0x0

    .line 5617
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 4332
    monitor-enter p0

    :try_start_0
    iget-object v12, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "WIFI_SSID_BLACK_WHITE_LIST"

    const-string v14, "adminUid"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 4335
    .local v10, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4336
    .local v7, "knoxuidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v12, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z

    if-nez v12, :cond_0

    .line 4337
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllNetworkSSIDforKNOX()Ljava/util/List;

    move-result-object v7

    .line 4339
    :cond_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_2

    .line 4340
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    .line 4341
    sget-boolean v12, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    if-eqz v12, :cond_1

    .line 4344
    const-string v12, "WHITE_BLACK_SSID_LIST"

    const/4 v13, -0x1

    invoke-direct {p0, v12, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4407
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v8

    .line 4349
    :cond_2
    :try_start_1
    sget-boolean v12, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z

    if-nez v12, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_3

    .line 4350
    const/16 v12, 0x3e8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4352
    :cond_3
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    .line 4353
    iget-object v12, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v13, "BLACKLIST"

    new-instance v14, Ljava/util/TreeSet;

    invoke-direct {v14}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4354
    iget-object v12, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v13, "WHITELIST"

    new-instance v14, Ljava/util/TreeSet;

    invoke-direct {v14}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4356
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11, v10}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 4359
    .local v11, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v12

    invoke-direct {v8, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 4362
    .local v8, "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 4363
    .local v9, "uid":Ljava/lang/Integer;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4364
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v12, "BLACKLIST"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4365
    const-string v12, "WHITELIST"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4366
    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4332
    .end local v0    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "knoxuidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .end local v9    # "uid":Ljava/lang/Integer;
    .end local v10    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 4369
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "knoxuidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .restart local v10    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    const/4 v12, 0x3

    :try_start_2
    new-array v1, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "adminUid"

    aput-object v13, v1, v12

    const/4 v12, 0x1

    const-string v13, "WIFI_SSID"

    aput-object v13, v1, v12

    const/4 v12, 0x2

    const-string v13, "WIFI_LIST_TYPE"

    aput-object v13, v1, v12

    .line 4372
    .local v1, "columns":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v12, v13, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 4374
    .local v3, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    sget-boolean v12, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z

    if-nez v12, :cond_5

    .line 4375
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4376
    .local v6, "knoxMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v12, "BLACKLIST"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4377
    const-string v12, "WHITELIST"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4378
    const/16 v12, 0x3e8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4379
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_5

    .line 4380
    const/16 v12, 0x3e8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    const-string v13, "BLACKLIST"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4379
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4385
    .end local v4    # "i":I
    .end local v6    # "knoxMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 4386
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    const-string v13, "WIFI_LIST_TYPE"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "WIFI_SSID"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4391
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_6
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 4392
    .restart local v9    # "uid":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 4393
    iget-object v13, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    const-string v14, "*"

    invoke-static {v13, v12, v14}, Lcom/android/server/enterprise/utils/Utils;->makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    goto :goto_4

    .line 4397
    .end local v9    # "uid":Ljava/lang/Integer;
    :cond_8
    sget-boolean v12, Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z

    if-nez v12, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_9

    .line 4398
    iget-object v13, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const/16 v12, 0x3e8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    const-string v14, "*"

    invoke-static {v13, v12, v14}, Lcom/android/server/enterprise/utils/Utils;->makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    .line 4402
    :cond_9
    sget-boolean v12, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    if-eqz v12, :cond_1

    .line 4405
    const-string v12, "WHITE_BLACK_SSID_LIST"

    const/4 v13, -0x1

    invoke-direct {p0, v12, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private loadWifiManager()V
    .locals 2

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 2928
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2930
    :cond_0
    return-void
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 3139
    array-length v1, p1

    .line 3140
    .local v1, "size":I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 3141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3142
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3144
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 3141
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3144
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 3170
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 3171
    .local v1, "bitset":Ljava/util/BitSet;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3172
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3173
    .local v6, "vals":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 3174
    .local v5, "val":Ljava/lang/String;
    invoke-static {v5, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 3175
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 3176
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 3173
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3180
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "index":I
    .end local v4    # "len$":I
    .end local v5    # "val":Ljava/lang/String;
    .end local v6    # "vals":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "set"    # Ljava/util/BitSet;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 3148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3149
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 3155
    .local v1, "nextSetBit":I
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {p1, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    .line 3157
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3158
    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 3162
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 3163
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 3166
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "storageName"    # Ljava/lang/String;
    .param p2, "rawAlias"    # Ljava/lang/String;

    .prologue
    .line 1917
    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "makeUCMWifiURI"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    new-instance v0, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 1919
    .local v0, "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    const/16 v3, 0x3f2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 1920
    .local v1, "targetUri":Ljava/lang/String;
    return-object v1
.end method

.method private readAutomaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 3863
    const-string/jumbo v1, "networkProxyPacUrl"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3864
    .local v0, "pacUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3865
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v1

    .line 3867
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;
    .locals 5
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 3842
    const-string/jumbo v4, "networProxyName"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3843
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3844
    const-string v1, "192.168.1.100"

    .line 3847
    :cond_0
    const-string/jumbo v4, "networkProxyPort"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 3848
    .local v3, "port":Ljava/lang/Integer;
    if-nez v3, :cond_1

    .line 3849
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3852
    :cond_1
    const-string/jumbo v4, "networkProxyExclList"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3853
    .local v0, "exclList":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 3855
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v4

    return-object v4
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 3117
    if-nez p0, :cond_1

    .line 3118
    const/4 p0, 0x0

    .line 3124
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 3120
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3121
    .restart local v0    # "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 3122
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private removeFromBlocked(ILjava/lang/String;)V
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3064
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 3065
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3066
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 3067
    return-void
.end method

.method private removeNetworkConfigurationInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "removeWifiProxyAuthConfiguration"    # Z

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x0

    .line 627
    const-string v7, "WifiPolicyService"

    const-string v8, ">>> removeNetworkConfiguration "

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/4 v3, 0x1

    .line 630
    .local v3, "ret":Z
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 633
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_1

    .line 634
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 635
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 636
    .local v0, "callingUid":I
    if-nez p2, :cond_2

    .line 690
    .end local v0    # "callingUid":I
    :cond_0
    :goto_0
    return v6

    .line 639
    :cond_1
    if-eqz p2, :cond_0

    .line 641
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WIFI_CONF"

    const-string/jumbo v9, "networkSSID"

    invoke-virtual {v7, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 645
    .restart local v0    # "callingUid":I
    :cond_2
    if-ne v0, v10, :cond_3

    .line 646
    const-string v7, "WifiPolicyService"

    const-string v8, "No admin found for the given SSID"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 651
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    if-eq v7, v8, :cond_a

    .line 652
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 653
    .local v4, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 654
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 656
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    .line 657
    .local v2, "needSaveConfig":Z
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 658
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 659
    const/4 v2, 0x1

    .line 661
    :cond_4
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 662
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 663
    const/4 v2, 0x1

    .line 665
    :cond_5
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v7, :cond_6

    .line 666
    const-string v7, "WifiPolicyService"

    const-string v8, "Not a valid MDM SSID"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 670
    :cond_6
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ltz v6, :cond_8

    .line 671
    const-string v6, "WifiPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "forgetting network id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    if-eqz v2, :cond_7

    .line 673
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;)Z

    .line 674
    :cond_7
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->forget(Landroid/net/wifi/WifiConfiguration;)Z

    .line 676
    :cond_8
    const/4 v6, 0x0

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v3, v6

    .line 678
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "needSaveConfig":Z
    :cond_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 681
    .end local v4    # "token":J
    :cond_a
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_CONF"

    const-string/jumbo v8, "networkSSID"

    invoke-virtual {v6, v7, v0, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v3, v6

    .line 683
    if-eqz v3, :cond_b

    if-eqz p3, :cond_b

    .line 684
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->clearAuthConfigFromDb(Ljava/lang/String;)V

    .line 688
    :cond_b
    const-string v6, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v6, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    move v6, v3

    .line 690
    goto/16 :goto_0
.end method

.method private saveAuthConfigToDb(ILjava/lang/String;Ljava/util/List;)Z
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/network/AuthConfig;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1824
    .local p3, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/network/AuthConfig;>;"
    const/4 v4, 0x1

    .line 1825
    .local v4, "success":Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/network/AuthConfig;

    .line 1826
    .local v0, "config":Lcom/sec/enterprise/network/AuthConfig;
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WifiProxyAuthTable"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertAuthConfigToContentValues(ILjava/lang/String;Lcom/sec/enterprise/network/AuthConfig;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1828
    .local v2, "ret":J
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 1829
    const/4 v4, 0x0

    goto :goto_0

    .line 1832
    .end local v0    # "config":Lcom/sec/enterprise/network/AuthConfig;
    .end local v2    # "ret":J
    :cond_1
    return v4
.end method

.method private saveBlockedList(ILjava/util/Set;)V
    .locals 7
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3055
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3056
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3057
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3059
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WIFI"

    const-string v5, "blockedSSIDList"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3061
    return-void
.end method

.method private sendCacheUpdateCommand(Ljava/lang/String;I)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 4054
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.internal.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4055
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 4056
    const-string v1, "android.app.enterprise.extra.WIFI_TYPE_CHANGED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4057
    const-string v1, "android.app.enterprise.extra.EXTRA_USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4059
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4060
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4061
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4062
    return-void
.end method

.method private setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "staticIpConf"    # Landroid/net/StaticIpConfiguration;
    .param p2, "staticDns1"    # Ljava/lang/String;
    .param p3, "staticDns2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3950
    const/4 v0, 0x0

    .line 3951
    .local v0, "dns1Addr":Ljava/net/InetAddress;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3953
    :try_start_0
    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3966
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3967
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3969
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3975
    :cond_1
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3977
    :try_start_1
    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 3978
    .local v1, "dns2Addr":Ljava/net/InetAddress;
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v4, :cond_5

    .line 3979
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "dns2Addr":Ljava/net/InetAddress;
    :cond_2
    :goto_2
    move v3, v4

    .line 3989
    :goto_3
    return v3

    .line 3954
    :catch_0
    move-exception v2

    .line 3955
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "WifiPolicyService"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3959
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    const-string v5, "8.8.8.8"

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3961
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3962
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dns1Addr":Ljava/net/InetAddress;
    check-cast v0, Ljava/net/InetAddress;

    .restart local v0    # "dns1Addr":Ljava/net/InetAddress;
    goto :goto_0

    .line 3971
    :cond_4
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3980
    .restart local v1    # "dns2Addr":Ljava/net/InetAddress;
    :cond_5
    :try_start_2
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 3981
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3983
    .end local v1    # "dns2Addr":Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 3984
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "WifiPolicyService"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private setEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 1302
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1303
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1305
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1306
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1308
    const/4 v2, 0x0

    .line 1309
    .local v2, "ret":Z
    if-nez v1, :cond_0

    move v3, v2

    .line 1316
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_0
    return v3

    .line 1311
    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 1312
    if-eqz v2, :cond_1

    .line 1313
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    move v3, v2

    .line 1316
    .restart local v3    # "ret":I
    goto :goto_0
.end method

.method private setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Z
    .locals 4
    .param p1, "staticIpConf"    # Landroid/net/StaticIpConfiguration;
    .param p2, "staticGateway"    # Ljava/lang/String;

    .prologue
    .line 3923
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3925
    :try_start_0
    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 3926
    .local v1, "gatewayAddr":Ljava/net/InetAddress;
    iput-object v1, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3941
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .end local v1    # "gatewayAddr":Ljava/net/InetAddress;
    :goto_1
    return v2

    .line 3927
    :catch_0
    move-exception v0

    .line 3928
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WifiPolicyService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3929
    const/4 v2, 0x0

    goto :goto_1

    .line 3932
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const-string v2, "192.168.1.1"

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 3936
    .restart local v1    # "gatewayAddr":Ljava/net/InetAddress;
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-nez v2, :cond_0

    .line 3937
    iput-object v1, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method private setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "staticIpConf"    # Landroid/net/StaticIpConfiguration;
    .param p2, "staticIp"    # Ljava/lang/String;
    .param p3, "staticSubnetMask"    # Ljava/lang/String;

    .prologue
    .line 3877
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3879
    :try_start_0
    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 3881
    .local v1, "inetAddr":Ljava/net/InetAddress;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3882
    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 3884
    .local v2, "inetsubNetAddr":Ljava/net/InetAddress;
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    move-result v4

    .line 3891
    .end local v2    # "inetsubNetAddr":Ljava/net/InetAddress;
    .local v4, "maskLength":I
    :cond_0
    :goto_0
    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v1, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 3892
    .local v3, "linkAddr":Landroid/net/LinkAddress;
    iput-object v3, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 3914
    :goto_1
    const/4 v5, 0x1

    .end local v1    # "inetAddr":Ljava/net/InetAddress;
    .end local v3    # "linkAddr":Landroid/net/LinkAddress;
    .end local v4    # "maskLength":I
    :goto_2
    return v5

    .line 3886
    .restart local v1    # "inetAddr":Ljava/net/InetAddress;
    :cond_1
    const/16 v4, 0x18

    .line 3887
    .restart local v4    # "maskLength":I
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v5, :cond_0

    .line 3888
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getPrefixLength()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 3893
    .end local v1    # "inetAddr":Ljava/net/InetAddress;
    .end local v4    # "maskLength":I
    :catch_0
    move-exception v0

    .line 3894
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "WifiPolicyService"

    const-string v6, ""

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3895
    const/4 v5, 0x0

    goto :goto_2

    .line 3898
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    const-string v5, "192.168.1.100"

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 3899
    .restart local v1    # "inetAddr":Ljava/net/InetAddress;
    const/16 v4, 0x18

    .line 3900
    .restart local v4    # "maskLength":I
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v5, :cond_3

    .line 3901
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 3902
    iget-object v5, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    .line 3905
    :cond_3
    if-eqz p3, :cond_4

    .line 3906
    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 3907
    .restart local v2    # "inetsubNetAddr":Ljava/net/InetAddress;
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    move-result v4

    .line 3910
    .end local v2    # "inetsubNetAddr":Ljava/net/InetAddress;
    :cond_4
    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v1, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 3911
    .restart local v3    # "linkAddr":Landroid/net/LinkAddress;
    iput-object v3, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    goto :goto_1
.end method

.method private setNetworkAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "addrType"    # Ljava/lang/String;

    .prologue
    .line 2348
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2349
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2351
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2352
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2354
    const/4 v2, 0x0

    .line 2355
    .local v2, "ret":Z
    if-nez v1, :cond_0

    move v3, v2

    .line 2362
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_0
    return v3

    .line 2357
    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 2358
    if-eqz v2, :cond_1

    .line 2360
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    move v3, v2

    .line 2362
    .restart local v3    # "ret":I
    goto :goto_0
.end method

.method private setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z
    .locals 22
    .param p1, "callingUid"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3466
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3467
    .local v6, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "networkSSID"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3468
    const-string/jumbo v1, "networkBSSID"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3469
    const-string/jumbo v1, "networkKeyMgmt"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3471
    const-string/jumbo v1, "networkAllowedProtos"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3473
    const-string/jumbo v1, "networkAuthAlg"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3475
    const-string/jumbo v1, "networkAllowedPairwiseCiphers"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    const-string/jumbo v1, "networkAllowedGroupProtocols"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3479
    const-string/jumbo v1, "networkPSK"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    const-string/jumbo v1, "networkWEPKey1"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3481
    const-string/jumbo v1, "networkWEPKey2"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
    const-string/jumbo v1, "networkWEPKey3"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3483
    const-string/jumbo v1, "networkWEPKey4"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    const-string/jumbo v1, "networkWEPKeyId"

    move-object/from16 v0, p2

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3485
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    if-ltz v1, :cond_0

    .line 3486
    const-string/jumbo v1, "networkEAP"

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3488
    :cond_0
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v16

    .line 3489
    .local v16, "phase1":Ljava/lang/String;
    const-string v1, "NULL"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3490
    :cond_1
    const-string/jumbo v1, "networkPhase1"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3495
    :goto_0
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    aget-object v17, v1, v2

    .line 3496
    .local v17, "phase2":Ljava/lang/String;
    const-string v1, "NULL"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3497
    :cond_2
    const-string/jumbo v1, "networkPhase2"

    const-string v2, "None"

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3501
    :goto_1
    const-string/jumbo v1, "networkIdentity"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3502
    const-string/jumbo v1, "networkAnonymousId"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3503
    const-string/jumbo v1, "networkPassword"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3504
    const-string/jumbo v1, "networkClientCertification"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3505
    const-string/jumbo v1, "networkPrivateKey"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3506
    const-string/jumbo v1, "networkCaCertificate"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3509
    const-string/jumbo v2, "networkStaticIpEnabled"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v3, :cond_d

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3511
    const/4 v14, 0x0

    .local v14, "ipAddr":Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "subnetAddr":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "gatewayAddr":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dns1Addr":Ljava/lang/String;
    const/4 v8, 0x0

    .line 3512
    .local v8, "dns2Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3513
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    iget-object v15, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 3514
    .local v15, "linkAddress":Landroid/net/LinkAddress;
    if-eqz v15, :cond_3

    .line 3515
    invoke-virtual {v15}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    .line 3516
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v15}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->prefixLengthToNetmaskInt(I)I

    move-result v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    .line 3520
    :cond_3
    const-string/jumbo v1, "wifi.interface"

    const-string/jumbo v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3521
    .local v21, "wifiInterface":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/net/StaticIpConfiguration;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/RouteInfo;

    .line 3522
    .local v19, "route":Landroid/net/RouteInfo;
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3523
    invoke-virtual/range {v19 .. v19}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    .line 3527
    .end local v19    # "route":Landroid/net/RouteInfo;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 3528
    .local v9, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3529
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 3531
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3532
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 3535
    .end local v9    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "linkAddress":Landroid/net/LinkAddress;
    .end local v21    # "wifiInterface":Ljava/lang/String;
    :cond_7
    const-string/jumbo v1, "networkStaticIp"

    invoke-virtual {v6, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3536
    const-string/jumbo v1, "networkStaticGateway"

    invoke-virtual {v6, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3537
    const-string/jumbo v1, "networkStaticPrimaryDns"

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3538
    const-string/jumbo v1, "networkStaticSecondaryDns"

    invoke-virtual {v6, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    const-string/jumbo v1, "networkStaticSubnetMask"

    move-object/from16 v0, v20

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3543
    const-string/jumbo v2, "networkManualProxyEnabled"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v3, :cond_e

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3547
    const/16 v18, 0x0

    .line 3549
    .local v18, "proxySettings":I
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v2, :cond_f

    const/16 v18, 0x0

    .line 3553
    :cond_8
    :goto_4
    const-string/jumbo v1, "networkProxyState"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3556
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 3557
    const-string/jumbo v1, "networProxyName"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    const-string/jumbo v1, "networkProxyPort"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3559
    const-string/jumbo v1, "networkProxyExclList"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3563
    const-string/jumbo v1, "networkProxyUsername"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3564
    const-string/jumbo v1, "networkProxyPassword"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3565
    const-string/jumbo v1, "networkProxyPacUrl"

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3571
    :cond_9
    const/4 v10, 0x0

    .line 3572
    .local v10, "engine_id":I
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEngineId()Ljava/lang/String;

    move-result-object v11

    .line 3573
    .local v11, "engine_id_str":Ljava/lang/String;
    const-string v1, "WifiPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "engine_id_str "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "secpkcs11"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3575
    const-string v1, "WifiPolicyService"

    const-string v2, "engine id is secpkcs11 "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
    const/4 v10, 0x1

    .line 3581
    :cond_a
    :goto_5
    const-string/jumbo v1, "networkEngineID"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI_CONF"

    const-string/jumbo v4, "networkSSID"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1

    .line 3492
    .end local v7    # "dns1Addr":Ljava/lang/String;
    .end local v8    # "dns2Addr":Ljava/lang/String;
    .end local v10    # "engine_id":I
    .end local v11    # "engine_id_str":Ljava/lang/String;
    .end local v12    # "gatewayAddr":Ljava/lang/String;
    .end local v14    # "ipAddr":Ljava/lang/String;
    .end local v17    # "phase2":Ljava/lang/String;
    .end local v18    # "proxySettings":I
    .end local v20    # "subnetAddr":Ljava/lang/String;
    :cond_b
    const-string/jumbo v1, "networkPhase1"

    const-string/jumbo v2, "fast_provisioning="

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3499
    .restart local v17    # "phase2":Ljava/lang/String;
    :cond_c
    const-string/jumbo v1, "networkPhase2"

    const-string v2, "auth="

    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3509
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 3543
    .restart local v7    # "dns1Addr":Ljava/lang/String;
    .restart local v8    # "dns2Addr":Ljava/lang/String;
    .restart local v12    # "gatewayAddr":Ljava/lang/String;
    .restart local v14    # "ipAddr":Ljava/lang/String;
    .restart local v20    # "subnetAddr":Ljava/lang/String;
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 3550
    .restart local v18    # "proxySettings":I
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v2, :cond_10

    const/16 v18, 0x1

    goto/16 :goto_4

    .line 3551
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v2, :cond_8

    const/16 v18, 0x2

    goto/16 :goto_4

    .line 3577
    .restart local v10    # "engine_id":I
    .restart local v11    # "engine_id_str":Ljava/lang/String;
    :cond_11
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "ucsengine"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3578
    const-string v1, "WifiPolicyService"

    const-string v2, "engine id is UCM "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3579
    const/4 v10, 0x2

    goto :goto_5
.end method

.method private setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "lastssid"    # Ljava/lang/String;

    .prologue
    .line 2086
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "networkLastSSID"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2089
    .local v3, "lastSSIDs":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2091
    .local v6, "newList":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_2

    .line 2092
    if-eqz p2, :cond_1

    .line 2093
    move-object v2, p2

    .line 2094
    .local v2, "last":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2095
    .local v5, "list":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v7, v0, v1

    .line 2097
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2098
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2103
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "last":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "list":[Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2107
    :cond_2
    if-eqz p1, :cond_3

    .line 2108
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z

    move-result v8

    return v8
.end method

.method private setNetworkWEPKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 1038
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1039
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1041
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1044
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    move-object v2, v1

    .line 1045
    .local v2, "oldConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1047
    const/4 v3, 0x0

    .line 1048
    .local v3, "ret":Z
    if-nez v1, :cond_0

    move v4, v3

    .line 1077
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .line 1062
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    .line 1063
    if-eqz v3, :cond_1

    .line 1064
    const/4 v5, -0x1

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1065
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 1068
    if-nez v3, :cond_1

    .line 1069
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    .line 1073
    :cond_1
    if-eqz v3, :cond_2

    .line 1074
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    :cond_2
    move v4, v3

    .line 1077
    .restart local v4    # "ret":I
    goto :goto_0
.end method

.method private updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xc8

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1238
    if-eqz p3, :cond_11

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 1239
    const-string/jumbo v6, "phase2"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1240
    const/4 v4, 0x0

    .line 1241
    .local v4, "phase2Set":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 1242
    sget-object v6, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1243
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 1244
    const/4 v4, 0x1

    .line 1249
    :cond_0
    if-nez v4, :cond_1

    .line 1250
    const-string v6, "None"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1251
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 1298
    .end local v1    # "i":I
    .end local v4    # "phase2Set":Z
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_1
    return-object p1

    .line 1241
    .restart local v1    # "i":I
    .restart local v4    # "phase2Set":Z
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object p1, v5

    .line 1252
    goto :goto_1

    .line 1254
    .end local v1    # "i":I
    .end local v4    # "phase2Set":Z
    :cond_4
    const-string/jumbo v6, "phase1"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1255
    const/4 v3, 0x0

    .line 1256
    .local v3, "phase1Set":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    sget-object v6, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_5

    .line 1257
    sget-object v6, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1258
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 1259
    const/4 v3, 0x1

    .line 1265
    :cond_5
    if-nez v3, :cond_1

    .line 1267
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1268
    .local v2, "p1":I
    if-eq v2, v7, :cond_7

    move-object p1, v5

    .line 1269
    goto :goto_1

    .line 1256
    .end local v2    # "p1":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1270
    .restart local v2    # "p1":I
    :cond_7
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1271
    .end local v2    # "p1":I
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    move-object p1, v5

    .line 1272
    goto :goto_1

    .line 1275
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v3    # "phase1Set":Z
    :cond_8
    const-string/jumbo v6, "identity"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1276
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_9

    .line 1277
    const-string v6, "WifiPolicyService"

    const-string v7, "Identity value excedes maximum length 200"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v5

    .line 1278
    goto :goto_1

    .line 1281
    :cond_9
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    goto :goto_1

    .line 1282
    :cond_a
    const-string v6, "anonymous_identity"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1283
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_1

    .line 1284
    :cond_b
    const-string/jumbo v6, "password"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1285
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_c

    .line 1286
    const-string v6, "WifiPolicyService"

    const-string v7, "Password excedes maximum length 200"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v5

    .line 1287
    goto :goto_1

    .line 1290
    :cond_c
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1291
    :cond_d
    const-string v6, "client_cert"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string/jumbo v6, "key_id"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1292
    :cond_e
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1293
    :cond_f
    const-string v6, "ca_cert"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1294
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    move-object p1, v5

    .line 1295
    goto/16 :goto_1

    :cond_11
    move-object p1, v5

    .line 1296
    goto/16 :goto_1
.end method

.method private updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "addrType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2317
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object p1, v2

    .line 2343
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object p1

    .line 2321
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    .line 2322
    .local v1, "staticIpConf":Landroid/net/StaticIpConfiguration;
    if-nez v1, :cond_2

    .line 2323
    new-instance v1, Landroid/net/StaticIpConfiguration;

    .end local v1    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    invoke-direct {v1}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 2326
    .restart local v1    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    :cond_2
    const/4 v0, 0x0

    .line 2327
    .local v0, "ret":Z
    const-string/jumbo v3, "networkStaticIp"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2328
    invoke-direct {p0, v1, p2, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2339
    :cond_3
    :goto_1
    if-nez v0, :cond_8

    move-object p1, v2

    goto :goto_0

    .line 2329
    :cond_4
    const-string/jumbo v3, "networkStaticGateway"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2330
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 2331
    :cond_5
    const-string/jumbo v3, "networkStaticPrimaryDns"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2332
    invoke-direct {p0, v1, p2, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 2333
    :cond_6
    const-string/jumbo v3, "networkStaticSecondaryDns"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2334
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 2335
    :cond_7
    const-string/jumbo v3, "networkStaticSubnetMask"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2336
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 2341
    :cond_8
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    goto :goto_0
.end method

.method private updateNetworkDHCPEnabled(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2256
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object p1, v2

    .line 2284
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object p1

    .line 2260
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    if-eqz p2, :cond_2

    .line 2261
    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 2270
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    .line 2271
    .local v1, "staticIpConf":Landroid/net/StaticIpConfiguration;
    if-nez v1, :cond_1

    .line 2272
    new-instance v1, Landroid/net/StaticIpConfiguration;

    .end local v1    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    invoke-direct {v1}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 2275
    .restart local v1    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    :cond_1
    const/4 v0, 0x1

    .line 2276
    .local v0, "ret":Z
    invoke-direct {p0, v1, v2, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v0, v3

    .line 2277
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v0, v3

    .line 2278
    invoke-direct {p0, v1, v2, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v0, v3

    .line 2280
    if-nez v0, :cond_3

    move-object p1, v2

    goto :goto_0

    .line 2263
    .end local v0    # "ret":Z
    .end local v1    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    :cond_2
    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    goto :goto_1

    .line 2282
    .restart local v0    # "ret":Z
    .restart local v1    # "staticIpConf":Landroid/net/StaticIpConfiguration;
    :cond_3
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    goto :goto_0
.end method

.method private updateNetworkLastSSID(Ljava/lang/String;)Z
    .locals 2
    .param p1, "list"    # Ljava/lang/String;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "networkLastSSID"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateNetworkPSK(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1176
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_1

    :cond_0
    move-object p1, v0

    .line 1191
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object p1

    .line 1181
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1182
    const-string v0, "[0-9A-Fa-f]{64}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 1185
    :cond_2
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object p1, v0

    .line 1188
    goto :goto_0
.end method

.method private updateNetworkProxyHostName(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 5065
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object p1, v1

    .line 5085
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object p1

    .line 5070
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 5071
    .local v6, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    move-object p1, v1

    .line 5072
    goto :goto_0

    .line 5075
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v7

    .line 5076
    .local v7, "proxyInfo":Landroid/net/ProxyInfo;
    if-nez v7, :cond_3

    .line 5077
    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 5083
    .end local v7    # "proxyInfo":Landroid/net/ProxyInfo;
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    :goto_1
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    goto :goto_0

    .line 5079
    .end local v0    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v7    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_3
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v0    # "proxyInfo":Landroid/net/ProxyInfo;
    goto :goto_1
.end method

.method private updateNetworkProxyPacFileUrl(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "pacFileUrl"    # Ljava/lang/String;

    .prologue
    .line 5584
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5585
    const/4 p1, 0x0

    .line 5593
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object p1

    .line 5588
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v1, v2, :cond_0

    .line 5589
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 5590
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    goto :goto_0
.end method

.method private updateNetworkProxyPassword(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 5564
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5565
    const/4 p1, 0x0

    .line 5579
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object p1

    .line 5568
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 5572
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    if-nez v0, :cond_1

    .line 5573
    const-string v1, "192.168.1.100"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 5576
    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/ProxyInfo;->setPassword(Ljava/lang/String;)V

    .line 5577
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    goto :goto_0
.end method

.method private updateNetworkProxyPort(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "port"    # I

    .prologue
    const/4 v1, 0x0

    .line 5146
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    .line 5167
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object p1

    .line 5151
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v2, v3, :cond_2

    .line 5152
    if-lez p2, :cond_1

    const v2, 0xffff

    if-le p2, v2, :cond_2

    :cond_1
    move-object p1, v1

    .line 5153
    goto :goto_0

    .line 5157
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v6

    .line 5158
    .local v6, "proxyInfo":Landroid/net/ProxyInfo;
    if-nez v6, :cond_3

    .line 5159
    const-string v1, "192.168.1.100"

    invoke-static {v1, p2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 5165
    .end local v6    # "proxyInfo":Landroid/net/ProxyInfo;
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    :goto_1
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    goto :goto_0

    .line 5161
    .end local v0    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v6    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_3
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v5

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v0    # "proxyInfo":Landroid/net/ProxyInfo;
    goto :goto_1
.end method

.method private updateNetworkProxyState(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 5009
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 5021
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object p1

    .line 5013
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 5014
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_0

    .line 5015
    :cond_1
    if-nez p2, :cond_2

    .line 5016
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_0

    .line 5017
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 5018
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_0

    :cond_3
    move-object p1, v0

    .line 5019
    goto :goto_0
.end method

.method private updateNetworkProxyUsername(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 5545
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5546
    const/4 p1, 0x0

    .line 5560
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object p1

    .line 5549
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 5553
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    if-nez v0, :cond_1

    .line 5554
    const-string v1, "192.168.1.100"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 5557
    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/ProxyInfo;->setUsername(Ljava/lang/String;)V

    .line 5558
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    goto :goto_0
.end method

.method private updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1004
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    .line 1027
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object p1

    .line 1009
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    if-eqz p3, :cond_1

    if-ltz p2, :cond_1

    const/4 v2, 0x3

    if-le p2, v2, :cond_2

    :cond_1
    move-object p1, v1

    .line 1010
    goto :goto_0

    .line 1013
    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p1, v1

    .line 1014
    goto :goto_0

    .line 1017
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1019
    .local v0, "length":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_5

    :cond_4
    const-string v1, "[0-9A-Fa-f]*"

    invoke-virtual {p3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1021
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p3, v1, p2

    goto :goto_0

    .line 1024
    :cond_5
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    goto :goto_0
.end method

.method private updateNetworkWEPKeyId(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "keyId"    # I

    .prologue
    const/4 v0, 0x0

    .line 971
    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    const/4 v1, 0x4

    if-le p2, v1, :cond_1

    :cond_0
    move-object p1, v0

    .line 983
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object p1

    .line 975
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 978
    add-int/lit8 v0, p2, -0x1

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 980
    goto :goto_0
.end method

.method private updateUrlForNetworkProxyBypassList(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 16
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 5230
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5231
    :cond_0
    const/16 p1, 0x0

    .line 5272
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object p1

    .line 5235
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const-string v2, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 5236
    .local v15, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 5237
    .local v12, "item":Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 5238
    .local v13, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5239
    const/16 p1, 0x0

    goto :goto_0

    .line 5243
    .end local v12    # "item":Ljava/lang/String;
    .end local v13    # "match":Ljava/util/regex/Matcher;
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5245
    .local v8, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v14

    .line 5246
    .local v14, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v14, :cond_4

    .line 5247
    invoke-virtual {v14}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 5251
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v8    # "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v8, v9

    .line 5255
    .end local v9    # "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 5256
    .restart local v12    # "item":Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-interface {v8, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5257
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5261
    .end local v12    # "item":Ljava/lang/String;
    :cond_6
    if-nez v14, :cond_7

    .line 5262
    const-string v2, "192.168.1.100"

    const/4 v3, 0x0

    invoke-static {v2, v3, v8}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v1

    .line 5270
    .end local v14    # "proxyInfo":Landroid/net/ProxyInfo;
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    goto :goto_0

    .line 5264
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v14    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .line 5265
    .local v7, "exclusionArray":[Ljava/lang/Object;
    array-length v2, v7

    const-class v3, [Ljava/lang/String;

    invoke-static {v7, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 5266
    .local v10, "exclusionStringArray":[Ljava/lang/String;
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-virtual {v14}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-virtual {v14}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v14    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    goto :goto_2
.end method

.method private updateWifiConfigLinkSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x9

    const/4 v3, 0x7

    .line 737
    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 841
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object p1

    .line 739
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    const-string v0, "WifiPolicyService"

    const-string/jumbo v1, "specified profile not found"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const/4 p1, 0x0

    goto :goto_0

    .line 744
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 746
    :cond_2
    const-string v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWifiConfigLinkSecurity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 750
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 751
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 753
    :cond_3
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 754
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 755
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 756
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 757
    :cond_4
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 758
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 759
    :cond_5
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 760
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 761
    :cond_6
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 762
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 763
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 764
    :cond_7
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 765
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 766
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 767
    :cond_8
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 768
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 769
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 770
    :cond_9
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 771
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 772
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 773
    :cond_a
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 774
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 775
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 776
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 777
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 778
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 779
    :cond_c
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 780
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 781
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 782
    :cond_d
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 783
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 784
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 785
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 786
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 787
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 788
    :cond_f
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 789
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 790
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 791
    :cond_10
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 792
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 793
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 794
    :cond_11
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 795
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 796
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 797
    :cond_12
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x17

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 798
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 799
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 800
    :cond_13
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 801
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 802
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 803
    :cond_14
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x1a

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 804
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 805
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 806
    :cond_15
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 807
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 808
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 809
    :cond_16
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 810
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 811
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 812
    :cond_17
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x1e

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 813
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 814
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 816
    :cond_18
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 817
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 818
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 819
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 820
    :cond_19
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 821
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 822
    :cond_1a
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 823
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 824
    :cond_1b
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 825
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 826
    :cond_1c
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 827
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 828
    :cond_1d
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x19

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 829
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 830
    :cond_1e
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/16 v1, 0x1c

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 831
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 832
    :cond_1f
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 833
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 834
    :cond_20
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 835
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 837
    :cond_21
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0
.end method

.method private declared-synchronized updateWpsBlockedNetworks()Z
    .locals 8

    .prologue
    .line 3084
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemUser()V

    .line 3085
    const/4 v4, 0x1

    .line 3086
    .local v4, "success":Z
    const/4 v3, 0x0

    .line 3087
    .local v3, "showMsg":Z
    const/4 v0, 0x0

    .line 3088
    .local v0, "hasChanged":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    .line 3089
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 3090
    .local v2, "listWifi":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_3

    .line 3091
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 3092
    .local v5, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v6, 0x1

    iget v7, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v6, v7, :cond_0

    .line 3093
    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v6, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecure(IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v6, v7, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3095
    :cond_1
    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v6, :cond_2

    .line 3097
    const v6, 0x1040ade

    invoke-static {v6}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3101
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 3102
    const/4 v0, 0x1

    goto :goto_0

    .line 3107
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3108
    const-string v6, "WifiPolicyService"

    const-string/jumbo v7, "updateWpsBlockedNetworks - error saving network configuration."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3109
    const/4 v4, 0x0

    .line 3111
    :cond_4
    monitor-exit p0

    return v4

    .line 3084
    .end local v0    # "hasChanged":Z
    .end local v2    # "listWifi":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "showMsg":Z
    .end local v4    # "success":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private validateSSIDList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "ssid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 5597
    if-nez p1, :cond_1

    move-object v0, v3

    .line 5609
    :cond_0
    return-object v0

    .line 5599
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5600
    .local v0, "SSIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5601
    const-string v3, "WifiPolicyService"

    const-string/jumbo v4, "validateSSIDList() : ssid list removed null "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5603
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5605
    .local v2, "s":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isvalidSSIDName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5606
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public activateWifiSsidRestriction(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 4847
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4848
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "WIFI"

    const-string/jumbo v3, "wifiSsidRestriction"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 4850
    .local v9, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 4851
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    .line 4852
    if-eqz v9, :cond_0

    .line 4853
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4855
    .local v10, "psToken":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "WifiPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has changed Wifi SSID restriction to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4860
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4863
    .end local v10    # "psToken":J
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 4864
    .local v12, "userId":I
    if-eqz v9, :cond_1

    if-nez v12, :cond_1

    .line 4865
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4867
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v0, "Wifi"

    const-string v1, "activateWifiSsidRestriction"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4868
    const-string v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateWifiSsidRestriction : enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4873
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_0
    return v9

    .line 4860
    .end local v12    # "userId":I
    .restart local v10    # "psToken":J
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4869
    .end local v10    # "psToken":J
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v12    # "userId":I
    :catch_0
    move-exception v7

    .line 4870
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addBlockedNetwork(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2133
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2135
    if-nez p2, :cond_1

    .line 2136
    const/4 v9, 0x0

    .line 2166
    :cond_0
    :goto_0
    return v9

    .line 2139
    :cond_1
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addToBlocked(ILjava/lang/String;)V

    .line 2142
    const-string v0, "BLOCKED_NETWORKS"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2144
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Ljava/lang/String;)Z

    move-result v9

    .line 2145
    .local v9, "ret":Z
    if-eqz v9, :cond_2

    .line 2146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2148
    .local v10, "psToken":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "WifiPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has blocked access to Wifi SSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2152
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2155
    .end local v10    # "psToken":J
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 2156
    .local v12, "userId":I
    if-eqz v9, :cond_0

    if-nez v12, :cond_0

    .line 2157
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2159
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v0, "Wifi"

    const-string v1, "addBlockedNetwork"

    invoke-virtual {v8, v0, v1, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const-string v0, "WifiPolicyService"

    const-string v1, "addBlockedNetwork calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2161
    :catch_0
    move-exception v7

    .line 2162
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2152
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v12    # "userId":I
    .restart local v10    # "psToken":J
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addUrlForNetworkProxyBypass(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5277
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5278
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 5280
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 5281
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateUrlForNetworkProxyBypassList(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 5283
    const/4 v4, 0x0

    .line 5284
    .local v4, "ret":Z
    if-nez v2, :cond_0

    move v5, v4

    .line 5302
    .end local v4    # "ret":Z
    .local v5, "ret":I
    :goto_0
    return v5

    .line 5286
    .end local v5    # "ret":I
    .restart local v4    # "ret":Z
    :cond_0
    new-array v1, v10, [Ljava/lang/String;

    const-string v7, "adminUid"

    aput-object v7, v1, v8

    const-string/jumbo v7, "networkSSID"

    aput-object v7, v1, v9

    .line 5289
    .local v1, "col":[Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 5294
    .local v6, "val":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5295
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "networkProxyExclList"

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5296
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WIFI_CONF"

    invoke-virtual {v7, v8, v1, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 5299
    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v7

    sget-object v8, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v7, v8, :cond_1

    .line 5300
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    move v5, v4

    .line 5302
    .restart local v5    # "ret":I
    goto :goto_0
.end method

.method public addWifiSsidToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4428
    .local p2, "ssid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4430
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4432
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 4434
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4435
    :cond_0
    const-string v2, "WifiPolicyService"

    const-string v3, "addWifiSsidToBlackList() : failed with invalid request"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4436
    const/4 v13, 0x0

    .line 4470
    :cond_1
    :goto_0
    return v13

    .line 4439
    :cond_2
    const/4 v13, 0x1

    .line 4440
    .local v13, "result":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 4441
    .local v16, "s":Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 4442
    .local v9, "cv":Landroid/content/ContentValues;
    const-string v2, "WIFI_SSID"

    move-object/from16 v0, v16

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4443
    const-string v2, "adminUid"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4444
    const-string v2, "WIFI_LIST_TYPE"

    const-string v3, "BLACKLIST"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4445
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v2, v3, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v13, 0x1

    .line 4448
    :goto_2
    if-eqz v13, :cond_3

    .line 4449
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4451
    .local v14, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "WifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has added SSID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to the restriction blacklist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4455
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 4445
    .end local v14    # "psToken":J
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 4455
    .restart local v14    # "psToken":J
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4459
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v14    # "psToken":J
    .end local v16    # "s":Ljava/lang/String;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 4460
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    .line 4462
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 4463
    .local v17, "userId":I
    if-eqz v13, :cond_1

    if-nez v17, :cond_1

    .line 4465
    :try_start_1
    const-string v2, "Wifi"

    const-string v3, "addWifiSsidToBlackList"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 4466
    :catch_0
    move-exception v10

    .line 4467
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public addWifiSsidToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4644
    .local p2, "ssid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4645
    const/4 v13, 0x1

    .line 4647
    .local v13, "result":Z
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4649
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 4651
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4652
    :cond_0
    const-string v2, "WifiPolicyService"

    const-string v3, "addWifiSsidToWhiteList() : failed with invalid request"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4653
    const/4 v2, 0x0

    .line 4685
    :goto_0
    return v2

    .line 4656
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 4657
    .local v16, "s":Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 4658
    .local v9, "cv":Landroid/content/ContentValues;
    const-string v2, "WIFI_SSID"

    move-object/from16 v0, v16

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4659
    const-string v2, "adminUid"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4660
    const-string v2, "WIFI_LIST_TYPE"

    const-string v3, "WHITELIST"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4661
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v2, v3, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v13, 0x1

    .line 4664
    :goto_2
    if-eqz v13, :cond_2

    .line 4665
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4667
    .local v14, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "WifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has added SSID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to the restriction whitelist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4671
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 4661
    .end local v14    # "psToken":J
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 4671
    .restart local v14    # "psToken":J
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4675
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v14    # "psToken":J
    .end local v16    # "s":Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 4676
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    .line 4677
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 4678
    .local v17, "userId":I
    if-eqz v13, :cond_5

    if-nez v17, :cond_5

    .line 4680
    :try_start_1
    const-string v2, "Wifi"

    const-string v3, "addWifiSsidToWhiteList"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_3
    move v2, v13

    .line 4685
    goto/16 :goto_0

    .line 4681
    :catch_0
    move-exception v10

    .line 4682
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public allowOpenWifiAp(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v9, 0x0

    .line 4279
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4281
    if-nez p2, :cond_2

    .line 4282
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4283
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4284
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4285
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    .line 4286
    .local v4, "state":I
    const/16 v8, 0xd

    if-eq v4, v8, :cond_0

    const/16 v8, 0xc

    if-ne v4, v8, :cond_1

    .line 4287
    :cond_0
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v0, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 4290
    .end local v4    # "state":I
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4292
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "token":J
    :cond_2
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v10, "WIFI"

    const-string v11, "allowOpenWifi"

    invoke-virtual {v8, v9, v10, v11, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 4294
    .local v3, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4295
    .local v5, "userId":I
    if-eqz v3, :cond_3

    if-nez v5, :cond_3

    .line 4296
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4298
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v8, "Wifi"

    const-string v9, "allowOpenWifiAp"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4299
    const-string v8, "WifiPolicyService"

    const-string v9, "allowOpenWifiAp calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4304
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    :goto_0
    return v3

    .line 4300
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v1

    .line 4301
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public allowWifiApSettingUserModification(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 4221
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4222
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4225
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "WIFI"

    const-string v7, "allowWifiApSettingModification"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 4227
    .local v2, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 4228
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 4230
    :try_start_0
    const-string v4, "Wifi"

    const-string v5, "allowWifiApSettingUserModification"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4231
    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GearPolicy allowWifiApSettingUserModification : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4236
    :cond_0
    :goto_0
    return v2

    .line 4232
    :catch_0
    move-exception v0

    .line 4233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public clearUrlsFromNetworkProxyBypassList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 5363
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5365
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v8

    .line 5399
    :cond_0
    :goto_0
    return v4

    .line 5369
    :cond_1
    new-array v0, v9, [Ljava/lang/String;

    const-string v7, "adminUid"

    aput-object v7, v0, v8

    const-string/jumbo v7, "networkSSID"

    aput-object v7, v0, v10

    .line 5372
    .local v0, "col":[Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/String;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 5375
    .local v6, "val":[Ljava/lang/String;
    const/4 v7, 0x3

    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v7, "networkProxyExclList"

    aput-object v7, v5, v8

    const-string/jumbo v7, "networkManualProxyEnabled"

    aput-object v7, v5, v10

    const-string/jumbo v7, "networkProxyState"

    aput-object v7, v5, v9

    .line 5380
    .local v5, "retCol":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WIFI_CONF"

    invoke-virtual {v7, v9, v0, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5382
    .local v3, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_3

    :cond_2
    move v4, v8

    .line 5383
    goto :goto_0

    .line 5387
    :cond_3
    const/4 v4, 0x1

    .line 5388
    .local v4, "ret":Z
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5389
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "networkProxyExclList"

    const-string v9, ""

    invoke-virtual {v2, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5390
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WIFI_CONF"

    invoke-virtual {v7, v9, v0, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 5394
    if-eqz v4, :cond_0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string/jumbo v9, "networkManualProxyEnabled"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v10, :cond_4

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string/jumbo v8, "networkProxyState"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_0

    .line 5396
    :cond_4
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 5397
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0
.end method

.method public clearWifiSsidBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4555
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4556
    const/4 v14, 0x1

    .line 4558
    .local v14, "result":Z
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4560
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "adminUid"

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string v3, "WIFI_LIST_TYPE"

    aput-object v3, v9, v2

    .line 4563
    .local v9, "columns":[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v2

    const/4 v2, 0x1

    const-string v3, "BLACKLIST"

    aput-object v3, v16, v2

    .line 4566
    .local v16, "values":[Ljava/lang/String;
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI_SSID_BLACK_WHITE_LIST"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v14, 0x1

    .line 4569
    :goto_0
    if-eqz v14, :cond_0

    .line 4570
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 4572
    .local v12, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "WifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has removed all SSIDs from the restriction blacklist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4576
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4579
    .end local v12    # "psToken":J
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 4580
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    .line 4581
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v15

    .line 4582
    .local v15, "userId":I
    if-eqz v14, :cond_1

    if-nez v15, :cond_1

    .line 4584
    :try_start_1
    const-string v2, "Wifi"

    const-string v3, "clearWifiSsidBlackList"

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4589
    :cond_1
    :goto_1
    return v14

    .line 4566
    .end local v15    # "userId":I
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 4576
    .restart local v12    # "psToken":J
    :catchall_0
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4585
    .end local v12    # "psToken":J
    .restart local v15    # "userId":I
    :catch_0
    move-exception v10

    .line 4586
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public clearWifiSsidWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4766
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4767
    const/4 v14, 0x1

    .line 4769
    .local v14, "result":Z
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4771
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "adminUid"

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string v3, "WIFI_LIST_TYPE"

    aput-object v3, v9, v2

    .line 4774
    .local v9, "columns":[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v2

    const/4 v2, 0x1

    const-string v3, "WHITELIST"

    aput-object v3, v16, v2

    .line 4777
    .local v16, "values":[Ljava/lang/String;
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI_SSID_BLACK_WHITE_LIST"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v14, 0x1

    .line 4780
    :goto_0
    if-eqz v14, :cond_0

    .line 4781
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 4783
    .local v12, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "WifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has removed all SSIDs from the restriction whitelist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4787
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4790
    .end local v12    # "psToken":J
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 4791
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    .line 4793
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v15

    .line 4794
    .local v15, "userId":I
    if-eqz v14, :cond_1

    if-nez v15, :cond_1

    .line 4796
    :try_start_1
    const-string v2, "Wifi"

    const-string v3, "clearWifiSsidWhiteList"

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4801
    :cond_1
    :goto_1
    return v14

    .line 4777
    .end local v15    # "userId":I
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 4787
    .restart local v12    # "psToken":J
    :catchall_0
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4797
    .end local v12    # "psToken":J
    .restart local v15    # "userId":I
    :catch_0
    move-exception v10

    .line 4798
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netSSID"    # Ljava/lang/String;

    .prologue
    .line 3289
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemUser()V

    .line 3291
    if-nez p1, :cond_1

    .line 3314
    :cond_0
    :goto_0
    return-void

    .line 3294
    :cond_1
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3296
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string/jumbo v5, "networkSSID"

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3298
    .local v0, "adminUid":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 3307
    new-instance v1, Lcom/android/server/enterprise/wifi/WifiPolicy$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$2;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V

    .line 3312
    .local v1, "taskToUpdateNetwork":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3313
    .local v2, "threadToUpdateNetwork":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public declared-synchronized edmUpdateConfiguredNetworks()V
    .locals 14

    .prologue
    .line 3203
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemUser()V

    .line 3205
    iget-object v12, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_1

    .line 3282
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3209
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllEnterpriseLastSSIDs()Ljava/util/List;

    move-result-object v6

    .line 3213
    .local v6, "lastSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 3217
    :cond_2
    iget-object v12, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 3218
    .local v0, "confList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_0

    .line 3223
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllEnterpriseNetworks()Ljava/util/List;

    move-result-object v2

    .line 3224
    .local v2, "enterpriseConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3225
    .local v4, "enterpriseSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3228
    .local v3, "enterpriseNetIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3229
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 3230
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 3231
    iget v12, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3232
    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3203
    .end local v0    # "confList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "enterpriseConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "enterpriseNetIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "enterpriseSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "lastSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 3237
    .restart local v0    # "confList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v2    # "enterpriseConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v3    # "enterpriseNetIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "enterpriseSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "lastSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v8, 0x0

    .line 3238
    .local v8, "needSaveConfiguration":Z
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3239
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3241
    .local v10, "notQuotedSSID":Ljava/lang/String;
    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget v12, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 3245
    :cond_7
    iget v12, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ltz v12, :cond_5

    .line 3247
    const/4 v7, 0x0

    .line 3248
    .local v7, "needSaveConfig":Z
    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 3249
    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 3250
    const/4 v7, 0x1

    .line 3252
    :cond_8
    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 3253
    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 3254
    const/4 v7, 0x1

    .line 3256
    :cond_9
    if-eqz v7, :cond_a

    .line 3257
    iget-object v12, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v12, v1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;)Z

    .line 3258
    :cond_a
    iget-object v12, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v12, v1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->forget(Landroid/net/wifi/WifiConfiguration;)Z

    .line 3259
    const/4 v8, 0x1

    .line 3260
    goto :goto_2

    .line 3264
    .end local v7    # "needSaveConfig":Z
    :cond_b
    iget-object v12, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13}, Landroid/sec/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v12

    if-nez v12, :cond_5

    .line 3265
    iget v12, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_5

    .line 3266
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 3267
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 3273
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "notQuotedSSID":Ljava/lang/String;
    :cond_c
    if-eqz v8, :cond_d

    .line 3274
    iget-object v12, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 3277
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3278
    .local v9, "newSSIDsList":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3279
    .local v11, "value":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3281
    .end local v11    # "value":Ljava/lang/String;
    :cond_e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public getAllSsidBlacklist(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5458
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5460
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v5

    .line 5462
    .local v5, "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    const-string v9, "WifiPolicyService"

    const-string/jumbo v10, "getAllSsidBlacklist"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5464
    if-nez v5, :cond_1

    .line 5478
    :cond_0
    return-object v3

    .line 5467
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 5469
    .local v8, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 5470
    .local v7, "uid":Ljava/lang/Integer;
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 5471
    .local v6, "typeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v10, "BLACKLIST"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5472
    .local v0, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5473
    .local v4, "s":Ljava/lang/String;
    const-string v9, "WifiPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAllSsidBlacklist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5474
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAllSsidWhitelist(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5482
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5484
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v5

    .line 5486
    .local v5, "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    const-string v9, "WifiPolicyService"

    const-string/jumbo v10, "getAllSsidWhitelist"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5488
    if-nez v5, :cond_1

    .line 5502
    :cond_0
    return-object v3

    .line 5491
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 5493
    .local v8, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 5494
    .local v7, "uid":Ljava/lang/Integer;
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 5495
    .local v6, "typeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v10, "WHITELIST"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5496
    .local v0, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5497
    .local v4, "s":Ljava/lang/String;
    const-string v9, "WifiPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAllSsidWhitelist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5498
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAllWifiSsidBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4603
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 4605
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v2

    .line 4606
    .local v2, "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    if-nez v2, :cond_1

    .line 4607
    const/4 v1, 0x0

    .line 4619
    :cond_0
    return-object v1

    .line 4609
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 4610
    .local v4, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4612
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/WifiControlInfo;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4613
    .local v3, "uid":Ljava/lang/Integer;
    new-instance v5, Landroid/app/enterprise/WifiControlInfo;

    invoke-direct {v5}, Landroid/app/enterprise/WifiControlInfo;-><init>()V

    .line 4614
    .local v5, "wci":Landroid/app/enterprise/WifiControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/app/enterprise/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 4615
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "BLACKLIST"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v5, Landroid/app/enterprise/WifiControlInfo;->entries:Ljava/util/List;

    .line 4616
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAllWifiSsidWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4816
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 4818
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v2

    .line 4819
    .local v2, "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    if-nez v2, :cond_1

    .line 4820
    const/4 v1, 0x0

    .line 4832
    :cond_0
    return-object v1

    .line 4822
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 4823
    .local v4, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4825
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/WifiControlInfo;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4826
    .local v3, "uid":Ljava/lang/Integer;
    new-instance v5, Landroid/app/enterprise/WifiControlInfo;

    invoke-direct {v5}, Landroid/app/enterprise/WifiControlInfo;-><init>()V

    .line 4827
    .local v5, "wci":Landroid/app/enterprise/WifiControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/app/enterprise/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 4828
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "WHITELIST"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v5, Landroid/app/enterprise/WifiControlInfo;->entries:Ljava/util/List;

    .line 4829
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAllowUserPolicyChanges(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2695
    const/4 v1, 0x1

    .line 2696
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowUserChanges"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2699
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2700
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 2701
    move v1, v2

    .line 2705
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public getAllowUserProfiles(Landroid/app/enterprise/ContextInfo;ZI)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 2602
    const/4 v4, -0x1

    if-ne p3, v4, :cond_0

    .line 2603
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result p3

    .line 2605
    :cond_0
    const/4 v1, 0x1

    .line 2606
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowUserProfiles"

    invoke-virtual {v4, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2608
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2609
    .local v2, "value":Z
    if-nez v2, :cond_1

    .line 2610
    move v1, v2

    .line 2614
    .end local v2    # "value":Z
    :cond_2
    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    .line 2615
    const v4, 0x1040adf

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2618
    :cond_3
    return v1
.end method

.method public getAutomaticConnectionToWifi(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2643
    const/4 v1, 0x1

    .line 2644
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowAutomaticConnection"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2646
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2647
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 2648
    move v1, v2

    .line 2652
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public getBlockedNetworks(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2220
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 2221
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2222
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2223
    .local v0, "aux":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2225
    .end local v0    # "aux":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getMinimumRequiredSecurity(Landroid/app/enterprise/ContextInfo;)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2830
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string/jumbo v6, "minimumRequiredSecurity"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2832
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 2833
    .local v1, "ret":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2834
    .local v2, "value":I
    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v4

    invoke-static {v1}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v5

    if-le v4, v5, :cond_0

    .line 2835
    move v1, v2

    goto :goto_0

    .line 2838
    .end local v2    # "value":I
    :cond_1
    return v1
.end method

.method public getNetworkAnonymousIdValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1552
    const-string v0, "anonymous_identity"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCaCertification(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1484
    const-string v1, "ca_cert"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1486
    const-string/jumbo v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1487
    const-string/jumbo v1, "keystore://CACERT_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1490
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkClientCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1500
    const-string v1, "client_cert"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1501
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1502
    const-string/jumbo v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1503
    const-string/jumbo v1, "keystore://USRCERT_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1506
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkDHCPEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2305
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2307
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2308
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2309
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 2311
    :cond_0
    return v1
.end method

.method public getNetworkEAPType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1461
    const-string v0, "eap"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkGateway(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2403
    const-string/jumbo v0, "networkStaticGateway"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkIdentityValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1545
    const-string/jumbo v0, "identity"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkIp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2395
    const-string/jumbo v0, "networkStaticIp"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkKeystoreEngineId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 5436
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5438
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5453
    :cond_0
    :goto_0
    return v2

    .line 5442
    :cond_1
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5444
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5447
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEngineId()Ljava/lang/String;

    move-result-object v1

    .line 5448
    .local v1, "engine_id_str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "secpkcs11"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5449
    const/4 v2, 0x1

    goto :goto_0

    .line 5450
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "secpkcs11"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5451
    const/4 v2, 0x2

    goto :goto_0

    .line 5453
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNetworkLinkSecurity(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 923
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    sget-object v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPSK(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1224
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1225
    .local v0, "callingUid":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-object v2

    .line 1228
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1229
    .local v1, "enterprise":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1230
    const-string v2, "*"

    goto :goto_0
.end method

.method public getNetworkPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1534
    const-string/jumbo v1, "password"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1535
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1536
    const-string v1, "*"

    .line 1538
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPhase2(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1470
    const-string/jumbo v1, "phase2"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1471
    .local v0, "phase2":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1472
    const-string v1, "auth="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1474
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPrimaryDNS(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2411
    const-string/jumbo v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPrivateKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1516
    const-string/jumbo v1, "key_id"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1517
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1518
    const-string/jumbo v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1519
    const-string/jumbo v1, "keystore://USRPKEY_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1524
    :goto_0
    return-object v1

    .line 1522
    :cond_0
    const-string v1, "USRPKEY_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1524
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkProxyEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 5049
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5051
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5059
    :cond_0
    :goto_0
    return v1

    .line 5054
    :cond_1
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5055
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5056
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v2, v3, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getNetworkProxyHostName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5121
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5142
    :cond_0
    :goto_0
    return-object v4

    .line 5127
    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    const-string v5, "adminUid"

    aput-object v5, v0, v7

    const-string/jumbo v5, "networkSSID"

    aput-object v5, v0, v8

    .line 5130
    .local v0, "col":[Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    .line 5133
    .local v3, "val":[Ljava/lang/String;
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v5, "networProxyName"

    aput-object v5, v2, v7

    .line 5136
    .local v2, "retCol":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    invoke-virtual {v5, v6, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5139
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v8, :cond_0

    .line 5142
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "networProxyName"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getNetworkProxyPort(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 5204
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5206
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5225
    :cond_0
    :goto_0
    return v4

    .line 5210
    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    const-string v5, "adminUid"

    aput-object v5, v0, v4

    const-string/jumbo v5, "networkSSID"

    aput-object v5, v0, v7

    .line 5213
    .local v0, "col":[Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 5216
    .local v3, "val":[Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v5, "networkProxyPort"

    aput-object v5, v2, v4

    .line 5219
    .local v2, "retCol":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    invoke-virtual {v5, v6, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5222
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v7, :cond_0

    .line 5225
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "networkProxyPort"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0
.end method

.method public getNetworkSSIDList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 605
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v0, "SSIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "networkSSID"

    aput-object v5, v3, v4

    .line 610
    .local v3, "ret":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI_CONF"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 612
    .local v1, "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 613
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "networkSSID"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 615
    :cond_0
    return-object v0
.end method

.method public getNetworkSecondaryDNS(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2419
    const-string/jumbo v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubnetMask(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2427
    const-string/jumbo v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey1(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1144
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey2(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1153
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey3(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1162
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey4(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1171
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKeyId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 992
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 993
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 994
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 997
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    add-int/lit8 v1, v1, 0x1

    .line 999
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPasswordHidden(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2910
    const/4 v1, 0x0

    .line 2911
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string/jumbo v6, "passwordHidden"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2914
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2915
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 2916
    move v1, v2

    goto :goto_0

    .line 2919
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public getPromptCredentialsEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2745
    const/4 v1, 0x1

    .line 2746
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string/jumbo v6, "promptCredentials"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2749
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2750
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 2751
    move v1, v2

    .line 2755
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public getUrlsFromNetworkProxyBypassList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5404
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5406
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5407
    const/4 v4, 0x0

    .line 5431
    :cond_0
    :goto_0
    return-object v4

    .line 5410
    :cond_1
    new-array v1, v8, [Ljava/lang/String;

    const-string v7, "adminUid"

    aput-object v7, v1, v9

    const-string/jumbo v7, "networkSSID"

    aput-object v7, v1, v10

    .line 5413
    .local v1, "col":[Ljava/lang/String;
    new-array v6, v8, [Ljava/lang/String;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 5416
    .local v6, "val":[Ljava/lang/String;
    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v7, "networkProxyExclList"

    aput-object v7, v5, v9

    .line 5419
    .local v5, "retCol":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WIFI_CONF"

    invoke-virtual {v7, v8, v1, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5421
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5422
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v10, :cond_0

    .line 5426
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string/jumbo v8, "networkProxyExclList"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5427
    .local v3, "exclusionList":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5428
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5429
    .local v0, "array":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getWifiApSetting(Landroid/app/enterprise/ContextInfo;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4190
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 4191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4193
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    .line 4198
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4200
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getWifiProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1932
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1933
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1935
    .local v0, "adminUid":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1936
    const/4 v7, 0x0

    .line 2078
    :goto_0
    return-object v7

    .line 1939
    :cond_0
    const/4 v10, 0x2

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v2, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "networkSSID"

    aput-object v11, v2, v10

    .line 1942
    .local v2, "col":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1945
    .local v9, "val":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WIFI_CONF"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v2, v9, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1949
    .local v4, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1d

    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v10

    if-eqz v10, :cond_1d

    .line 1950
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1954
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "networkEngineID"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1955
    .local v5, "engineid":Ljava/lang/Integer;
    new-instance v7, Landroid/app/enterprise/WifiAdminProfile;

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_1
    invoke-direct {v7, v10}, Landroid/app/enterprise/WifiAdminProfile;-><init>(I)V

    .line 1957
    .local v7, "ret":Landroid/app/enterprise/WifiAdminProfile;
    const-string/jumbo v10, "networkClientCertification"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1958
    const-string/jumbo v10, "networkClientCertification"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1961
    .local v1, "certificateAlias":Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->isUcsStoreUri(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1962
    invoke-static {v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1963
    .local v8, "storageName":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 1964
    new-instance v7, Landroid/app/enterprise/WifiAdminProfile;

    .end local v7    # "ret":Landroid/app/enterprise/WifiAdminProfile;
    invoke-direct {v7, v8}, Landroid/app/enterprise/WifiAdminProfile;-><init>(Ljava/lang/String;)V

    .line 1967
    .restart local v7    # "ret":Landroid/app/enterprise/WifiAdminProfile;
    invoke-static {v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 1977
    .end local v1    # "certificateAlias":Ljava/lang/String;
    .end local v8    # "storageName":Ljava/lang/String;
    :cond_1
    :goto_2
    const-string/jumbo v10, "networkSSID"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1978
    const-string/jumbo v10, "networkSSID"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 1980
    :cond_2
    const-string/jumbo v10, "networkPSK"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1981
    const-string/jumbo v10, "networkPSK"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 1983
    :cond_3
    const-string/jumbo v10, "networkPassword"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1984
    const-string/jumbo v10, "networkPassword"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    .line 1986
    :cond_4
    const-string/jumbo v10, "networkWEPKey1"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1987
    const-string/jumbo v10, "networkWEPKey1"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    .line 1989
    :cond_5
    const-string/jumbo v10, "networkWEPKey2"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1990
    const-string/jumbo v10, "networkWEPKey2"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    .line 1992
    :cond_6
    const-string/jumbo v10, "networkWEPKey3"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1993
    const-string/jumbo v10, "networkWEPKey3"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    .line 1995
    :cond_7
    const-string/jumbo v10, "networkWEPKey4"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1996
    const-string/jumbo v10, "networkWEPKey4"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    .line 1998
    :cond_8
    const-string/jumbo v10, "networkWEPKeyId"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1999
    const-string/jumbo v10, "networkWEPKeyId"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    iput v10, v7, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    .line 2001
    :cond_9
    const-string/jumbo v10, "networkIdentity"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2002
    const-string/jumbo v10, "networkIdentity"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    .line 2004
    :cond_a
    const-string/jumbo v10, "networkAnonymousId"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2005
    const-string/jumbo v10, "networkAnonymousId"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    .line 2007
    :cond_b
    const-string/jumbo v10, "networkPhase1"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2008
    const-string/jumbo v10, "networkPhase1"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->phase1:Ljava/lang/String;

    .line 2010
    :cond_c
    const-string/jumbo v10, "networkPhase2"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2011
    const-string/jumbo v10, "networkPhase2"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 2013
    :cond_d
    const-string/jumbo v10, "networkCaCertificate"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2014
    const-string/jumbo v10, "networkCaCertificate"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 2015
    iget-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 2016
    iget-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    const-string/jumbo v11, "keystore://CACERT_"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 2020
    :cond_e
    const-string/jumbo v10, "networkPrivateKey"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 2021
    const-string/jumbo v10, "networkPrivateKey"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 2022
    iget-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    if-eqz v10, :cond_f

    .line 2024
    iget-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string/jumbo v11, "keystore://"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 2025
    iget-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string/jumbo v11, "keystore://USRPKEY_"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 2036
    :cond_f
    :goto_3
    sget-object v10, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    invoke-direct {p0, v0, p2, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    .line 2037
    const-string/jumbo v10, "networkStaticIpEnabled"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 2038
    const-string/jumbo v10, "networkStaticIpEnabled"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, v7, Landroid/app/enterprise/WifiAdminProfile;->staticIpEnabled:Z

    .line 2040
    :cond_10
    const-string/jumbo v10, "networkStaticIp"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2041
    const-string/jumbo v10, "networkStaticIp"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->staticIp:Ljava/lang/String;

    .line 2043
    :cond_11
    const-string/jumbo v10, "networkStaticGateway"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2044
    const-string/jumbo v10, "networkStaticGateway"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    .line 2046
    :cond_12
    const-string/jumbo v10, "networkStaticPrimaryDns"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 2047
    const-string/jumbo v10, "networkStaticPrimaryDns"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    .line 2049
    :cond_13
    const-string/jumbo v10, "networkStaticSecondaryDns"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 2050
    const-string/jumbo v10, "networkStaticSecondaryDns"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    .line 2052
    :cond_14
    const-string/jumbo v10, "networkStaticSubnetMask"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 2053
    const-string/jumbo v10, "networkStaticSubnetMask"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    .line 2055
    :cond_15
    const-string/jumbo v10, "networkProxyState"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 2056
    const-string/jumbo v10, "networkProxyState"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v7, Landroid/app/enterprise/WifiAdminProfile;->proxyState:I

    .line 2058
    :cond_16
    const-string/jumbo v10, "networProxyName"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 2059
    const-string/jumbo v10, "networProxyName"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    .line 2061
    :cond_17
    const-string/jumbo v10, "networkProxyPort"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 2062
    const-string/jumbo v10, "networkProxyPort"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v7, Landroid/app/enterprise/WifiAdminProfile;->proxyPort:I

    .line 2064
    :cond_18
    const-string/jumbo v10, "networkProxyExclList"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 2065
    const-string/jumbo v10, "networkProxyExclList"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2066
    .local v6, "exclList":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    .line 2068
    .end local v6    # "exclList":Ljava/lang/String;
    :cond_19
    const-string/jumbo v10, "networkProxyUsername"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 2069
    const-string/jumbo v10, "networkProxyUsername"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    .line 2071
    :cond_1a
    const-string/jumbo v10, "networkProxyPassword"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 2072
    const-string/jumbo v10, "networkProxyPassword"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    .line 2074
    :cond_1b
    const-string/jumbo v10, "networkProxyPacUrl"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 2075
    const-string/jumbo v10, "networkProxyPacUrl"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    .line 2077
    :cond_1c
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    goto/16 :goto_0

    .line 1952
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "engineid":Ljava/lang/Integer;
    .end local v7    # "ret":Landroid/app/enterprise/WifiAdminProfile;
    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1955
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "engineid":Ljava/lang/Integer;
    :cond_1e
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1970
    .restart local v1    # "certificateAlias":Ljava/lang/String;
    .restart local v7    # "ret":Landroid/app/enterprise/WifiAdminProfile;
    :cond_1f
    if-eqz v1, :cond_1

    .line 1971
    const-string/jumbo v10, "keystore://USRCERT_"

    const-string v11, ""

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    goto/16 :goto_2

    .line 2027
    .end local v1    # "certificateAlias":Ljava/lang/String;
    :cond_20
    iget-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-static {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->isUcsStoreUri(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 2029
    iget-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-static {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    goto/16 :goto_3

    .line 2032
    :cond_21
    iget-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string v11, "USRPKEY_"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public getWifiSsidRestrictionList(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4996
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 4997
    if-nez p2, :cond_0

    .line 4998
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v2, "BLACKLIST"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 5003
    :goto_0
    return-object v0

    .line 5000
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v2, "WHITELIST"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0

    .line 5003
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public isEnterpriseNetwork(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3193
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllEnterpriseSSIDs()Ljava/util/List;

    move-result-object v0

    .line 3194
    .local v0, "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNetworkBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 2236
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 2238
    .local v0, "ret":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 2239
    const v1, 0x1040adc

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2242
    :cond_1
    return v0

    .line 2236
    .end local v0    # "ret":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkSecure(IZ)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 2868
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getMinimumRequiredSecurity(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecureInternal(II)Z

    move-result v0

    .line 2869
    .local v0, "ret":Z
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2870
    const v1, 0x1040ade

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2873
    :cond_0
    return v0
.end method

.method public isOpenWifiApAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4317
    const/4 v1, 0x1

    .line 4318
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowOpenWifi"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4320
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 4321
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 4322
    move v1, v2

    .line 4326
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public isWifiAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2544
    const/4 v1, 0x1

    .line 2545
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2548
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2549
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 2550
    move v1, v2

    .line 2566
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public isWifiApSettingUserModificationAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4250
    const/4 v1, 0x1

    .line 4251
    .local v1, "ret":Z
    sget-boolean v5, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    if-eqz v5, :cond_0

    move v2, v1

    .line 4261
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 4253
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI"

    const-string v7, "allowWifiApSettingModification"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 4255
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 4256
    .local v3, "value":Z
    if-nez v3, :cond_1

    .line 4257
    move v1, v3

    .end local v3    # "value":Z
    :cond_2
    move v2, v1

    .line 4261
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public isWifiSsidRestrictionActive(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4885
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4886
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v0

    return v0
.end method

.method public isWifiStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4982
    const/4 v1, 0x1

    .line 4983
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifiStateChanges"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4986
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 4987
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 4988
    move v1, v2

    .line 4992
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 354
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 358
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 359
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 360
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 365
    return-void
.end method

.method public removeBlockedNetwork(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2177
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2179
    if-nez p2, :cond_1

    move v9, v0

    .line 2211
    :cond_0
    :goto_0
    return v9

    .line 2182
    :cond_1
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeFromBlocked(ILjava/lang/String;)V

    .line 2185
    const-string v2, "BLOCKED_NETWORKS"

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2187
    const/4 v9, 0x1

    .line 2188
    .local v9, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2190
    .local v10, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2191
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V

    .line 2194
    :cond_2
    if-eqz v9, :cond_3

    .line 2195
    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "WifiPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " has allowed access to Wifi SSID: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2199
    :cond_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2201
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 2202
    .local v12, "userId":I
    if-eqz v9, :cond_0

    if-nez v12, :cond_0

    .line 2203
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2205
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v0, "Wifi"

    const-string/jumbo v1, "removeBlockedNetwork"

    invoke-virtual {v8, v0, v1, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    const-string v0, "WifiPolicyService"

    const-string v1, "addBlockedNremoveBlockedNetworketwork calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2207
    :catch_0
    move-exception v7

    .line 2208
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeNetworkConfiguration(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 623
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public removeUrlFromNetworkProxyBypassList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 5307
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5309
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5310
    :cond_0
    const/4 v10, 0x0

    .line 5358
    :cond_1
    :goto_0
    return v10

    .line 5313
    :cond_2
    const/4 v14, 0x2

    new-array v2, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "adminUid"

    aput-object v15, v2, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "networkSSID"

    aput-object v15, v2, v14

    .line 5316
    .local v2, "col":[Ljava/lang/String;
    const/4 v14, 0x2

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x1

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    .line 5319
    .local v12, "val":[Ljava/lang/String;
    const/4 v14, 0x3

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "networkProxyExclList"

    aput-object v15, v11, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "networkManualProxyEnabled"

    aput-object v15, v11, v14

    const/4 v14, 0x2

    const-string/jumbo v15, "networkProxyState"

    aput-object v15, v11, v14

    .line 5324
    .local v11, "retCol":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "WIFI_CONF"

    invoke-virtual {v14, v15, v2, v12, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 5326
    .local v5, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_4

    .line 5327
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 5330
    :cond_4
    const/4 v14, 0x0

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    const-string/jumbo v15, "networkProxyExclList"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5331
    .local v9, "previousList":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 5332
    const/4 v10, 0x0

    goto :goto_0

    .line 5333
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5334
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v14, ","

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5335
    .local v1, "array":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5337
    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 5338
    const/4 v10, 0x0

    goto :goto_0

    .line 5340
    :cond_6
    const-string v8, ""

    .line 5341
    .local v8, "newExclusionList":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 5342
    .local v13, "value":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 5343
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 5347
    .end local v13    # "value":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x1

    .line 5348
    .local v10, "ret":Z
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 5349
    .local v4, "cv":Landroid/content/ContentValues;
    const-string/jumbo v14, "networkProxyExclList"

    invoke-virtual {v4, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5350
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "WIFI_CONF"

    invoke-virtual {v14, v15, v2, v12, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v10

    .line 5353
    if-eqz v10, :cond_1

    const/4 v14, 0x0

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    const-string/jumbo v15, "networkManualProxyEnabled"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_9

    const/4 v14, 0x0

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    const-string/jumbo v15, "networkProxyState"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 5355
    :cond_9
    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 5356
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0
.end method

.method public removeWifiSsidFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4492
    .local p2, "ssid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4493
    const/4 v13, 0x1

    .line 4495
    .local v13, "result":Z
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4496
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 4498
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4499
    :cond_0
    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "removeWifiSsidFromBlackList() : failed with invalid request"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4500
    const/4 v2, 0x0

    .line 4535
    :goto_0
    return v2

    .line 4503
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 4504
    .local v16, "s":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "adminUid"

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string v3, "WIFI_SSID"

    aput-object v3, v9, v2

    const/4 v2, 0x2

    const-string v3, "WIFI_LIST_TYPE"

    aput-object v3, v9, v2

    .line 4508
    .local v9, "columns":[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v18, v2

    const/4 v2, 0x1

    aput-object v16, v18, v2

    const/4 v2, 0x2

    const-string v3, "BLACKLIST"

    aput-object v3, v18, v2

    .line 4511
    .local v18, "values":[Ljava/lang/String;
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI_SSID_BLACK_WHITE_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v13, 0x1

    .line 4514
    :goto_2
    if-eqz v13, :cond_2

    .line 4515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4517
    .local v14, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "WifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has removed SSID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from the restriction blacklist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4521
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 4511
    .end local v14    # "psToken":J
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 4521
    .restart local v14    # "psToken":J
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4525
    .end local v9    # "columns":[Ljava/lang/String;
    .end local v14    # "psToken":J
    .end local v16    # "s":Ljava/lang/String;
    .end local v18    # "values":[Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 4526
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    .line 4527
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 4528
    .local v17, "userId":I
    if-eqz v13, :cond_5

    if-nez v17, :cond_5

    .line 4530
    :try_start_1
    const-string v2, "Wifi"

    const-string/jumbo v3, "removeWifiSsidFromBlackList"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_3
    move v2, v13

    .line 4535
    goto/16 :goto_0

    .line 4531
    :catch_0
    move-exception v10

    .line 4532
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public removeWifiSsidFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4706
    .local p2, "ssid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4707
    const/4 v13, 0x1

    .line 4709
    .local v13, "result":Z
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4711
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4712
    :cond_0
    const/4 v2, 0x0

    .line 4747
    :goto_0
    return v2

    .line 4715
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 4716
    .local v16, "s":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "adminUid"

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string v3, "WIFI_SSID"

    aput-object v3, v9, v2

    const/4 v2, 0x2

    const-string v3, "WIFI_LIST_TYPE"

    aput-object v3, v9, v2

    .line 4720
    .local v9, "columns":[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v18, v2

    const/4 v2, 0x1

    aput-object v16, v18, v2

    const/4 v2, 0x2

    const-string v3, "WHITELIST"

    aput-object v3, v18, v2

    .line 4723
    .local v18, "values":[Ljava/lang/String;
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI_SSID_BLACK_WHITE_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v13, 0x1

    .line 4726
    :goto_2
    if-eqz v13, :cond_2

    .line 4727
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4729
    .local v14, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "WifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has removed SSID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from the restriction whitelist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4733
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 4723
    .end local v14    # "psToken":J
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 4733
    .restart local v14    # "psToken":J
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4737
    .end local v9    # "columns":[Ljava/lang/String;
    .end local v14    # "psToken":J
    .end local v16    # "s":Ljava/lang/String;
    .end local v18    # "values":[Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 4738
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    .line 4739
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 4740
    .local v17, "userId":I
    if-eqz v13, :cond_5

    if-nez v17, :cond_5

    .line 4742
    :try_start_1
    const-string v2, "Wifi"

    const-string/jumbo v3, "removeWifiSsidFromWhiteList"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_3
    move v2, v13

    .line 4747
    goto/16 :goto_0

    .line 4743
    :catch_0
    move-exception v10

    .line 4744
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public retrieveEnterpriseProxy(Ljava/lang/String;)Landroid/net/ProxyInfo;
    .locals 12
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3769
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemProcess()V

    .line 3771
    const/4 v3, 0x0

    .line 3772
    .local v3, "proxyInfo":Landroid/net/ProxyInfo;
    const/16 v8, 0x8

    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v8, "networkProxyState"

    aput-object v8, v6, v10

    const-string/jumbo v8, "networkManualProxyEnabled"

    aput-object v8, v6, v11

    const/4 v8, 0x2

    const-string/jumbo v9, "networProxyName"

    aput-object v9, v6, v8

    const/4 v8, 0x3

    const-string/jumbo v9, "networkProxyPort"

    aput-object v9, v6, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "networkProxyExclList"

    aput-object v9, v6, v8

    const/4 v8, 0x5

    const-string/jumbo v9, "networkProxyPacUrl"

    aput-object v9, v6, v8

    const/4 v8, 0x6

    const-string/jumbo v9, "networkProxyUsername"

    aput-object v9, v6, v8

    const/4 v8, 0x7

    const-string/jumbo v9, "networkProxyPassword"

    aput-object v9, v6, v8

    .line 3782
    .local v6, "returnColums":[Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3783
    .local v7, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v8, "networkSSID"

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3785
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WIFI_CONF"

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 3787
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v0, 0x0

    .line 3789
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v11, :cond_1

    :cond_0
    move-object v4, v3

    .line 3833
    .end local v3    # "proxyInfo":Landroid/net/ProxyInfo;
    .local v4, "proxyInfo":Landroid/net/ProxyInfo;
    :goto_0
    return-object v4

    .line 3792
    .end local v4    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v3    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_1
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cv":Landroid/content/ContentValues;
    check-cast v0, Landroid/content/ContentValues;

    .line 3795
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "networkProxyState"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 3798
    .local v5, "proxyState":Ljava/lang/Integer;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_7

    .line 3800
    :cond_2
    const-string/jumbo v8, "networkManualProxyEnabled"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 3801
    .local v2, "proxyEnabled":Ljava/lang/Integer;
    if-nez v2, :cond_3

    .line 3802
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3805
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v11, :cond_4

    .line 3806
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v3

    .line 3824
    .end local v2    # "proxyEnabled":Ljava/lang/Integer;
    :cond_4
    :goto_1
    :pswitch_0
    if-eqz v3, :cond_6

    .line 3825
    const-string/jumbo v8, "networkProxyUsername"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3826
    const-string/jumbo v8, "networkProxyUsername"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/net/ProxyInfo;->setUsername(Ljava/lang/String;)V

    .line 3828
    :cond_5
    const-string/jumbo v8, "networkProxyPassword"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3829
    const-string/jumbo v8, "networkProxyPassword"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/net/ProxyInfo;->setPassword(Ljava/lang/String;)V

    :cond_6
    move-object v4, v3

    .line 3833
    .end local v3    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v4    # "proxyInfo":Landroid/net/ProxyInfo;
    goto :goto_0

    .line 3810
    .end local v4    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v3    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 3814
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readStaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v3

    .line 3815
    goto :goto_1

    .line 3817
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->readAutomaticProxyInfoFromDb(Landroid/content/ContentValues;)Landroid/net/ProxyInfo;

    move-result-object v3

    .line 3818
    goto :goto_1

    .line 3810
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public retrieveProxyCredentials(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 14
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 1879
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemProcess()V

    .line 1881
    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1883
    .local v1, "authConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/network/AuthConfig;>;"
    const/4 v3, 0x0

    .line 1884
    .local v3, "credentials":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1885
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/network/AuthConfig;

    .line 1886
    .local v2, "config":Lcom/sec/enterprise/network/AuthConfig;
    invoke-virtual {v2}, Lcom/sec/enterprise/network/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 1887
    .local v5, "hostDatabase":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sec/enterprise/network/AuthConfig;->getPort()I

    move-result v9

    .line 1889
    .local v9, "portDatabase":I
    invoke-virtual {v2}, Lcom/sec/enterprise/network/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v10

    .line 1890
    .local v10, "userDatabase":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sec/enterprise/network/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v7

    .line 1892
    .local v7, "passDatabase":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move/from16 v0, p3

    if-ne v9, v0, :cond_2

    .line 1893
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1913
    .end local v2    # "config":Lcom/sec/enterprise/network/AuthConfig;
    .end local v5    # "hostDatabase":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "passDatabase":Ljava/lang/String;
    .end local v9    # "portDatabase":I
    .end local v10    # "userDatabase":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v3

    .line 1895
    .restart local v2    # "config":Lcom/sec/enterprise/network/AuthConfig;
    .restart local v5    # "hostDatabase":Ljava/lang/String;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "passDatabase":Ljava/lang/String;
    .restart local v9    # "portDatabase":I
    .restart local v10    # "userDatabase":Ljava/lang/String;
    :cond_2
    sget-object v12, Lcom/sec/enterprise/network/AuthConfig;->ANY_HOST:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    sget v12, Lcom/sec/enterprise/network/AuthConfig;->ANY_PORT:I

    if-ne v9, v12, :cond_0

    .line 1897
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1902
    .end local v2    # "config":Lcom/sec/enterprise/network/AuthConfig;
    .end local v5    # "hostDatabase":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "passDatabase":Ljava/lang/String;
    .end local v9    # "portDatabase":I
    .end local v10    # "userDatabase":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->retrieveEnterpriseProxy(Ljava/lang/String;)Landroid/net/ProxyInfo;

    move-result-object v4

    .line 1903
    .local v4, "enterpriseProxy":Landroid/net/ProxyInfo;
    if-eqz v4, :cond_1

    .line 1904
    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v11

    .line 1905
    .local v11, "username":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v8

    .line 1907
    .local v8, "password":Ljava/lang/String;
    :goto_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1908
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1904
    .end local v8    # "password":Ljava/lang/String;
    .end local v11    # "username":Ljava/lang/String;
    :cond_5
    const-string v11, ""

    goto :goto_2

    .line 1905
    .restart local v11    # "username":Ljava/lang/String;
    :cond_6
    const-string v8, ""

    goto :goto_3
.end method

.method public setAllowUserPolicyChanges(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2666
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2667
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "WIFI"

    const-string v7, "allowUserChanges"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2671
    .local v2, "ret":Z
    const-string v4, "ALLOW_USER_CHANGES"

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2673
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2674
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2675
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2677
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "Wifi"

    const-string/jumbo v5, "setAllowUserPolicyChanges"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2678
    const-string v4, "WifiPolicyService"

    const-string/jumbo v5, "setAllowUserPolicyChanges calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2683
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 2679
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2680
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAllowUserProfiles(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2571
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2572
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2575
    .local v4, "userId":I
    const/16 v5, 0x64

    if-lt v4, v5, :cond_1

    .line 2576
    const/4 v2, 0x0

    .line 2597
    :cond_0
    :goto_0
    return v2

    .line 2579
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "WIFI"

    const-string v8, "allowUserProfiles"

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2583
    .local v2, "ret":Z
    const-string v5, "ALLOW_USER_PROFILES"

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2585
    const-string v5, "WifiPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAllowUserProfiles : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    if-eqz v2, :cond_0

    if-nez v4, :cond_0

    .line 2588
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2590
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    const/4 v3, 0x0

    .line 2591
    .local v3, "showMsg":Z
    :try_start_0
    const-string v5, "Wifi"

    const-string/jumbo v6, "setAllowUserProfiles"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Landroid/app/enterprise/ContextInfo;ZI)Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2592
    const-string v5, "WifiPolicyService"

    const-string/jumbo v6, "setAllowUserProfiles calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2593
    :catch_0
    move-exception v0

    .line 2594
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAutomaticConnectionToWifi(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2623
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2624
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "WIFI"

    const-string v7, "allowAutomaticConnection"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2626
    .local v2, "ret":Z
    const-string v4, "ALLOW_AUTOMATIC_CONNECTION"

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2628
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2629
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2630
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2632
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "Wifi"

    const-string/jumbo v5, "setAutomaticConnectionToWifi"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2633
    const-string v4, "WifiPolicyService"

    const-string/jumbo v5, "setAutomaticConnectionToWifi calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2638
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 2634
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2635
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMinimumRequiredSecurity(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "secType"    # I

    .prologue
    .line 2760
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2763
    if-ltz p2, :cond_0

    const/16 v13, 0x1e

    move/from16 v0, p2

    if-gt v0, v13, :cond_0

    sget-object v13, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v13, v13, p2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 2765
    :cond_0
    const-string v13, "WifiPolicyService"

    const-string/jumbo v14, "security level not supported"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    const/4 v8, 0x0

    .line 2813
    :goto_0
    return v8

    .line 2770
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getMinimumRequiredSecurity(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2773
    .local v4, "lastSec":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v15, "WIFI"

    const-string/jumbo v16, "minimumRequiredSecurity"

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v13, v14, v15, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .line 2777
    .local v8, "ret":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "WIFI"

    const-string/jumbo v15, "minimumRequiredSecurity"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 2780
    .local v12, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 2781
    .local v7, "newSec":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2782
    .local v9, "value":I
    invoke-static {v9}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v13

    invoke-static {v7}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v14

    if-le v13, v14, :cond_2

    .line 2783
    move v7, v9

    goto :goto_1

    .line 2787
    .end local v9    # "value":I
    :cond_3
    const-string v13, "MINIMUM_SECURITY_LEVEL"

    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2794
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2795
    .local v10, "token":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2796
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 2797
    .local v5, "listWifi":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v5, :cond_6

    .line 2798
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 2799
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2800
    .local v6, "netId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecureInternal(II)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2801
    iget v13, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_4

    .line 2802
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_2

    .line 2804
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecureInternal(II)Z

    move-result v13

    if-nez v13, :cond_4

    .line 2806
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V

    goto :goto_2

    .line 2811
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "listWifi":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v6    # "netId":I
    :cond_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method public setNetworkAnonymousIdValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1390
    const-string v0, "anonymous_identity"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkCaCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1430
    const-string v0, "ca_cert"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1431
    .local v7, "ret":Z
    if-eqz v7, :cond_0

    .line 1432
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1434
    .local v8, "psToken":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "WifiPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has set Enterprise Network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Certificate Authority to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1440
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1443
    .end local v8    # "psToken":J
    :cond_0
    return v7

    .line 1440
    .restart local v8    # "psToken":J
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setNetworkClientCertification(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1408
    const-string v0, "client_cert"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1409
    .local v7, "ret":Z
    if-eqz v7, :cond_0

    .line 1410
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1412
    .local v8, "psToken":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "WifiPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has set Enterprise Network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Client Certification to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1421
    .end local v8    # "psToken":J
    :cond_0
    return v7

    .line 1418
    .restart local v8    # "psToken":J
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setNetworkDHCPEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 2288
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v0

    .line 2290
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2291
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkDHCPEnabled(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2293
    const/4 v2, 0x0

    .line 2294
    .local v2, "ret":Z
    if-nez v1, :cond_0

    move v3, v2

    .line 2301
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_0
    return v3

    .line 2296
    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 2297
    if-eqz v2, :cond_1

    .line 2298
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    move v3, v2

    .line 2301
    .restart local v3    # "ret":I
    goto :goto_0
.end method

.method public setNetworkGateway(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;

    .prologue
    .line 2399
    const-string/jumbo v0, "networkStaticGateway"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkIdentityValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1381
    const-string/jumbo v0, "identity"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkIp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;

    .prologue
    .line 2391
    const-string/jumbo v0, "networkStaticIp"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkLinkSecurity(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 848
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 849
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 851
    .local v11, "callingUid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    .line 853
    .local v12, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v12}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v15

    .line 855
    .local v15, "previousSecurityLevel":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiConfigLinkSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    .line 857
    const/16 v18, 0x0

    .line 858
    .local v18, "ret":Z
    if-nez v12, :cond_0

    move/from16 v4, v18

    .line 915
    :goto_0
    return v4

    .line 860
    :cond_0
    invoke-static {v12}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v13

    .line 862
    .local v13, "currentSecurityLevel":I
    const/4 v4, -0x1

    if-eq v15, v4, :cond_1

    const/4 v4, -0x1

    if-ne v13, v4, :cond_2

    .line 864
    :cond_1
    const-string v4, "WifiPolicyService"

    const-string/jumbo v5, "security level not supported"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const/4 v4, 0x0

    goto :goto_0

    .line 868
    :cond_2
    const/16 v18, 0x1

    .line 872
    if-eq v15, v13, :cond_4

    const/4 v4, 0x5

    if-lt v15, v4, :cond_3

    const/4 v4, 0x5

    if-ge v13, v4, :cond_4

    .line 875
    :cond_3
    const-string v4, "WifiPolicyService"

    const-string/jumbo v5, "security level changed - removing previous network configuration"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v18

    .line 877
    const/4 v4, -0x1

    iput v4, v12, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 879
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 880
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 884
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    and-int v18, v18, v4

    .line 886
    if-eqz v18, :cond_7

    .line 892
    const-string v4, "NONE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 893
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v14, v4, :cond_6

    .line 894
    iget-object v4, v12, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v14

    if-eqz v4, :cond_5

    .line 895
    iget-object v4, v12, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v14

    .line 893
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 899
    .end local v14    # "i":I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 902
    const-string v4, "ENTERPRISE_SSIDS"

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 903
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 905
    .local v16, "psToken":J
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "WifiPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has set Enterprise Network "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " security to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v16    # "psToken":J
    :cond_7
    move/from16 v4, v18

    .line 915
    goto/16 :goto_0

    .line 911
    .restart local v16    # "psToken":J
    :catchall_0
    move-exception v4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setNetworkPSK(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1201
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1202
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1204
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1205
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkPSK(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1207
    const/4 v2, 0x0

    .line 1208
    .local v2, "ret":Z
    if-nez v1, :cond_0

    move v3, v2

    .line 1215
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_0
    return v3

    .line 1210
    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 1211
    if-eqz v2, :cond_1

    .line 1212
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    move v3, v2

    .line 1215
    .restart local v3    # "ret":I
    goto :goto_0
.end method

.method public setNetworkPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1371
    const-string v0, "WifiPolicyService"

    const-string v1, " >>> setNetworkPassword "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const-string/jumbo v0, "password"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkPhase2(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1399
    const-string/jumbo v0, "phase2"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkPrimaryDNS(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;

    .prologue
    .line 2407
    const-string/jumbo v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkPrivateKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1452
    const-string/jumbo v0, "key_id"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkProxyEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 5026
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5027
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 5029
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 5030
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz p3, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyState(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 5033
    const/4 v2, 0x0

    .line 5034
    .local v2, "ret":Z
    if-nez v1, :cond_1

    move v3, v2

    .line 5045
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_1
    return v3

    .line 5030
    .end local v3    # "ret":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 5036
    .restart local v2    # "ret":Z
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 5038
    if-eqz v2, :cond_2

    .line 5041
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 5042
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    :cond_2
    move v3, v2

    .line 5045
    .restart local v3    # "ret":I
    goto :goto_1
.end method

.method public setNetworkProxyHostName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "hostName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5089
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5090
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 5092
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 5093
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyHostName(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 5095
    const/4 v4, 0x0

    .line 5096
    .local v4, "ret":Z
    if-nez v2, :cond_0

    move v5, v4

    .line 5116
    .end local v4    # "ret":Z
    .local v5, "ret":I
    :goto_0
    return v5

    .line 5098
    .end local v5    # "ret":I
    .restart local v4    # "ret":Z
    :cond_0
    new-array v1, v10, [Ljava/lang/String;

    const-string v7, "adminUid"

    aput-object v7, v1, v8

    const-string/jumbo v7, "networkSSID"

    aput-object v7, v1, v9

    .line 5102
    .local v1, "col":[Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 5107
    .local v6, "val":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5108
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "networProxyName"

    invoke-virtual {v3, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5109
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WIFI_CONF"

    invoke-virtual {v7, v8, v1, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 5112
    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v7

    sget-object v8, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v7, v8, :cond_1

    .line 5113
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    move v5, v4

    .line 5116
    .restart local v5    # "ret":I
    goto :goto_0
.end method

.method public setNetworkProxyPort(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5172
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5173
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 5175
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 5176
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyPort(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 5178
    const/4 v4, 0x0

    .line 5179
    .local v4, "ret":Z
    if-nez v2, :cond_0

    move v5, v4

    .line 5199
    .end local v4    # "ret":Z
    .local v5, "ret":I
    :goto_0
    return v5

    .line 5181
    .end local v5    # "ret":I
    .restart local v4    # "ret":Z
    :cond_0
    new-array v1, v10, [Ljava/lang/String;

    const-string v7, "adminUid"

    aput-object v7, v1, v8

    const-string/jumbo v7, "networkSSID"

    aput-object v7, v1, v9

    .line 5185
    .local v1, "col":[Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 5190
    .local v6, "val":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5191
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "networkProxyPort"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5192
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WIFI_CONF"

    invoke-virtual {v7, v8, v1, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 5195
    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v7

    sget-object v8, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v7, v8, :cond_1

    .line 5196
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    move v5, v4

    .line 5199
    .restart local v5    # "ret":I
    goto :goto_0
.end method

.method public setNetworkSSID(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "isCCM"    # Z

    .prologue
    .line 558
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 560
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 561
    :cond_0
    const/4 v11, 0x0

    .line 601
    :cond_1
    :goto_0
    return v11

    .line 564
    :cond_2
    move-object/from16 v0, p1

    iget v9, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 567
    .local v9, "callingUid":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p2

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 568
    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 569
    const/4 v11, 0x1

    goto :goto_0

    .line 573
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 574
    const/4 v11, 0x0

    goto :goto_0

    .line 577
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v9, v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createNetworkSSID(ILjava/lang/String;ZLjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 579
    const/4 v11, 0x0

    .line 580
    .local v11, "ret":Z
    if-eqz v10, :cond_1

    .line 582
    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v11

    .line 583
    if-eqz v11, :cond_1

    .line 584
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createEntepriseProfile(Landroid/net/wifi/WifiConfiguration;)V

    .line 587
    const-string v2, "ENTERPRISE_SSIDS"

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 588
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 589
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 591
    .local v12, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "WifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Admin "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, " has set Enterprise Network SSID to "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz p3, :cond_5

    const-string v7, " with CCM."

    :goto_1
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 591
    :cond_5
    :try_start_1
    const-string v7, "."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 597
    :catchall_0
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNetworkSecondaryDNS(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;

    .prologue
    .line 2415
    const-string/jumbo v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkSubnetMask(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;

    .prologue
    .line 2423
    const-string/jumbo v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey1(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1087
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey2(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1097
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey3(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1107
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey4(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1117
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKeyId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "keyId"    # I

    .prologue
    .line 952
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 953
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 955
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 956
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKeyId(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 958
    const/4 v2, 0x0

    .line 959
    .local v2, "ret":Z
    if-nez v1, :cond_0

    move v3, v2

    .line 966
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_0
    return v3

    .line 961
    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 962
    if-eqz v2, :cond_1

    .line 963
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    move v3, v2

    .line 966
    .restart local v3    # "ret":I
    goto :goto_0
.end method

.method public setPasswordHidden(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    .line 2885
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2887
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2889
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "WIFI"

    const-string/jumbo v7, "passwordHidden"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2891
    .local v2, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2892
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2894
    :try_start_0
    const-string v4, "Wifi"

    const-string/jumbo v5, "setPasswordHidden"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2895
    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2900
    :cond_0
    :goto_0
    return v2

    .line 2896
    :catch_0
    move-exception v0

    .line 2897
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPromptCredentialsEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2719
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2720
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "WIFI"

    const-string/jumbo v7, "promptCredentials"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2724
    .local v2, "ret":Z
    const-string v4, "PROMPT_CREDENTIALS_ENABLED"

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2725
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2726
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2727
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2729
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "Wifi"

    const-string/jumbo v5, "setPromptCredentialsEnabled"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2730
    const-string v4, "WifiPolicyService"

    const-string/jumbo v5, "setPromptCredentialsEnabled calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2735
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 2731
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2732
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setWifi(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 2441
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2442
    const/4 v7, 0x1

    .line 2443
    .local v7, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2445
    .local v8, "token":J
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "WIFI"

    const-string v4, "allowWifi"

    invoke-virtual {v0, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 2447
    if-eqz v7, :cond_0

    .line 2448
    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "WifiPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " has changed Wifi enabled to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2454
    :cond_0
    const-string v0, "WIFI_ALLOWED"

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2456
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2457
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2462
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2464
    return v7

    .line 2459
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method public setWifiAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2475
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2477
    new-instance v10, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2479
    .local v10, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2480
    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "setWifiAllowed : isWifiStateChangeAllowed = false"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    const/4 v14, 0x0

    .line 2533
    :cond_0
    :goto_0
    return v14

    .line 2483
    :cond_1
    const/4 v14, 0x1

    .line 2484
    .local v14, "ret":Z
    if-nez p2, :cond_3

    .line 2485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_2

    .line 2486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "WIFI"

    const-string v5, "allowWifi"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v14, v2

    .line 2488
    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "setWifiAllowed : mWifiManager = null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2491
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2492
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    and-int/2addr v14, v2

    .line 2493
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2496
    .end local v16    # "token":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "WIFI"

    const-string v5, "allowWifi"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v14, v2

    .line 2499
    const-string v2, "WIFI_ALLOWED"

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 2501
    if-eqz v14, :cond_4

    .line 2502
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2504
    .local v12, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "WifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has changed Wifi allowed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2508
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2511
    .end local v12    # "psToken":J
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v15

    .line 2512
    .local v15, "userId":I
    if-eqz v14, :cond_0

    if-nez v15, :cond_0

    .line 2517
    const/16 v20, 0x1

    .line 2518
    .local v20, "wifiPolicyStatus":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowWifi"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 2521
    .local v19, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 2522
    .local v18, "value":Z
    if-nez v18, :cond_5

    .line 2523
    move/from16 v20, v18

    .line 2527
    .end local v18    # "value":Z
    :cond_6
    const-string v2, "Wifi"

    const-string/jumbo v3, "setWifiAllowed"

    move/from16 v0, v20

    invoke-virtual {v10, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2528
    const-string v2, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2529
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v19    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v9

    .line 2530
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2508
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "userId":I
    .end local v20    # "wifiPolicyStatus":Z
    .restart local v12    # "psToken":J
    :catchall_0
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setWifiApSetting(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "securityType"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 4087
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 4089
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x20

    if-le v8, v9, :cond_2

    .line 4090
    :cond_0
    const-string v8, "WifiPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SSID("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") is null or empty or more than 32 characters"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4091
    const/4 v4, 0x0

    .line 4169
    :cond_1
    :goto_0
    return v4

    .line 4095
    :cond_2
    const-string v8, "Open"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "WPA_PSK"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 4096
    const-string v8, "WifiPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Security Type ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")is not valid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4097
    const/4 v4, 0x0

    goto :goto_0

    .line 4102
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "Open"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4103
    const-string v8, "WifiPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Security Type ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")is not valid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4104
    const/4 v4, 0x0

    goto :goto_0

    .line 4109
    :cond_4
    const-string v8, "WPA_PSK"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x8

    if-ge v8, v9, :cond_6

    .line 4111
    :cond_5
    const-string v8, "WifiPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Password("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") is null or empty or less than 8 characters for WPA PSK security type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4113
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 4115
    :cond_6
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    .line 4118
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 4119
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 4120
    const/4 v8, 0x0

    iput-boolean v8, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 4121
    const-string v8, ""

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 4122
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 4123
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string v10, ""

    aput-object v10, v8, v9

    .line 4125
    const-string v8, "WPA_PSK"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4126
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 4127
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 4128
    iput-object p4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 4136
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4138
    .local v6, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    .line 4139
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_8

    .line 4140
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 4141
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 4152
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4153
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    goto/16 :goto_0

    .line 4133
    .end local v6    # "token":J
    :cond_7
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 4148
    .restart local v6    # "token":J
    :cond_8
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    .line 4150
    .local v4, "result":Z
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    new-instance v9, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string v10, "com.android.settings"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->stopApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4152
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4153
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    .line 4155
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4156
    .local v5, "userId":I
    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    .line 4157
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4158
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4159
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4160
    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4161
    invoke-interface {v3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4163
    :try_start_2
    const-string v8, "Wifi"

    const-string/jumbo v9, "setWifiApSetting"

    invoke-virtual {v2, v8, v9, v3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    .line 4164
    const-string v8, "WifiPolicyService"

    const-string/jumbo v9, "setWifiApSetting calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 4165
    :catch_0
    move-exception v1

    .line 4166
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 4152
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "result":Z
    .end local v5    # "userId":I
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4153
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAPSettingFromAdmin:Z

    throw v8
.end method

.method public setWifiProfile(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/WifiAdminProfile;)Z
    .locals 27
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Landroid/app/enterprise/WifiAdminProfile;

    .prologue
    .line 1601
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1602
    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1604
    .local v10, "callingUid":I
    if-nez p2, :cond_1

    const/16 v24, 0x0

    .line 1809
    :cond_0
    :goto_0
    return v24

    .line 1605
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->checkSecurityLevel(Landroid/app/enterprise/WifiAdminProfile;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v24, 0x0

    goto :goto_0

    .line 1608
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/WifiAdminProfile;->getEngineId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/16 v17, 0x1

    .line 1609
    .local v17, "isCCM":Z
    :goto_1
    if-eqz v17, :cond_5

    .line 1611
    :try_start_0
    const-string v2, "WifiPolicyService"

    const-string v3, "checking if admin has ccm enabled"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    const-string/jumbo v2, "knox_ccm_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v16

    .line 1614
    .local v16, "iccm":Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    if-eqz v16, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1615
    :cond_3
    const-string v2, "WifiPolicyService"

    const-string v3, "ccm service not initialized or ccm not enabled for calling admin"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    const/16 v24, 0x0

    goto :goto_0

    .line 1608
    .end local v16    # "iccm":Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    .end local v17    # "isCCM":Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    .line 1618
    .restart local v17    # "isCCM":Z
    :catch_0
    move-exception v14

    .line 1619
    .local v14, "ex":Landroid/os/RemoteException;
    const-string v2, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed taking IClientCertificateManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    const/16 v24, 0x0

    goto :goto_0

    .line 1624
    .end local v14    # "ex":Landroid/os/RemoteException;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/WifiAdminProfile;->getEngineId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const/16 v19, 0x1

    .line 1625
    .local v19, "isUCM":Z
    :goto_2
    if-eqz v19, :cond_6

    .line 1626
    const/4 v2, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/WifiAdminProfile;->getStorageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceUCMPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_8

    .line 1627
    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "setWifiProfile : UCMEngine, modify the alias to URI type"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/WifiAdminProfile;->getStorageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 1629
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/WifiAdminProfile;->getStorageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 1636
    :cond_6
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1637
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1624
    .end local v19    # "isUCM":Z
    :cond_7
    const/16 v19, 0x0

    goto :goto_2

    .line 1631
    .restart local v19    # "isUCM":Z
    :cond_8
    const-string v2, "WifiPolicyService"

    const-string v3, "enforceUCMPermission failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1640
    :cond_9
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v18

    .line 1642
    .local v18, "isEnterprise":Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    .line 1643
    .local v13, "configuration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v18, :cond_a

    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1644
    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "network belongs to another admin - cannot edit it"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1648
    :cond_a
    const/16 v25, 0x0

    .line 1649
    .local v25, "shouldRemove":Z
    const/16 v26, 0x0

    .line 1652
    .local v26, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1653
    const/16 v25, 0x1

    .line 1657
    :cond_b
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/WifiAdminProfile;->getStorageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v2, v1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createNetworkSSID(ILjava/lang/String;ZLjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1658
    if-nez v26, :cond_c

    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1660
    :cond_c
    if-eqz v26, :cond_d

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1661
    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v2

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1663
    :cond_d
    if-eqz v26, :cond_e

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1664
    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v2

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1666
    :cond_e
    if-eqz v26, :cond_f

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1667
    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v2

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1669
    :cond_f
    if-eqz v26, :cond_10

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1670
    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v2

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1672
    :cond_10
    if-eqz v26, :cond_11

    move-object/from16 v0, p2

    iget v2, v0, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    .line 1673
    move-object/from16 v0, p2

    iget v2, v0, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKeyId(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1675
    :cond_11
    if-eqz v26, :cond_12

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1676
    const-string/jumbo v2, "password"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1678
    :cond_12
    if-eqz v26, :cond_13

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1679
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkPSK(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1681
    :cond_13
    if-eqz v26, :cond_14

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1682
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiConfigLinkSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1684
    :cond_14
    if-eqz v26, :cond_15

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1685
    const-string v2, "ca_cert"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1687
    :cond_15
    if-eqz v26, :cond_2a

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 1688
    const-string v2, "client_cert"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1692
    :cond_16
    :goto_3
    if-eqz v26, :cond_17

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->phase1:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 1693
    const-string/jumbo v2, "phase1"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->phase1:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1695
    :cond_17
    if-eqz v26, :cond_18

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 1696
    const-string/jumbo v2, "phase2"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1698
    :cond_18
    if-eqz v26, :cond_19

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 1699
    const-string/jumbo v2, "identity"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1701
    :cond_19
    if-eqz v26, :cond_1a

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1702
    const-string v2, "anonymous_identity"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1704
    :cond_1a
    if-eqz v26, :cond_1b

    .line 1705
    move-object/from16 v0, p2

    iget-boolean v2, v0, Landroid/app/enterprise/WifiAdminProfile;->staticIpEnabled:Z

    if-nez v2, :cond_2b

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkDHCPEnabled(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1707
    :cond_1b
    if-eqz v26, :cond_1c

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->staticIp:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1708
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->staticIp:Ljava/lang/String;

    const-string/jumbo v3, "networkStaticIp"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1710
    :cond_1c
    if-eqz v26, :cond_1d

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 1711
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    const-string/jumbo v3, "networkStaticGateway"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1713
    :cond_1d
    if-eqz v26, :cond_1e

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1714
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    const-string/jumbo v3, "networkStaticPrimaryDns"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1716
    :cond_1e
    if-eqz v26, :cond_1f

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1717
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    const-string/jumbo v3, "networkStaticSecondaryDns"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1719
    :cond_1f
    if-eqz v26, :cond_20

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 1720
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    const-string/jumbo v3, "networkStaticSubnetMask"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1722
    :cond_20
    if-eqz v26, :cond_21

    .line 1723
    move-object/from16 v0, p2

    iget v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyState:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyState(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1725
    :cond_21
    if-eqz v26, :cond_22

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1726
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyHostName(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1729
    :cond_22
    if-eqz v26, :cond_23

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v2, v3, :cond_23

    .line 1730
    move-object/from16 v0, p2

    iget v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyPort:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyPort(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1732
    :cond_23
    if-eqz v26, :cond_24

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    if-eqz v2, :cond_24

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 1734
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1735
    .local v21, "proxyBypassArray":[Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "proxyBypassArray":[Ljava/lang/String;
    check-cast v21, [Ljava/lang/String;

    .line 1737
    .restart local v21    # "proxyBypassArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateUrlForNetworkProxyBypassList(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1739
    .end local v21    # "proxyBypassArray":[Ljava/lang/String;
    :cond_24
    if-eqz v26, :cond_25

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 1740
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyUsername(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1742
    :cond_25
    if-eqz v26, :cond_26

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1743
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyPassword(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1745
    :cond_26
    if-eqz v26, :cond_2d

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    if-eqz v2, :cond_2d

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1746
    const/16 v20, 0x1

    .line 1747
    .local v20, "isValidAuth":Z
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_27
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/enterprise/network/AuthConfig;

    .line 1748
    .local v12, "config":Lcom/sec/enterprise/network/AuthConfig;
    if-eqz v12, :cond_28

    invoke-virtual {v12}, Lcom/sec/enterprise/network/AuthConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_27

    .line 1749
    :cond_28
    const/16 v20, 0x0

    .line 1754
    .end local v12    # "config":Lcom/sec/enterprise/network/AuthConfig;
    :cond_29
    if-eqz v20, :cond_2c

    .line 1755
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->clearAuthConfigFromDb(Ljava/lang/String;)V

    .line 1756
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->saveAuthConfigToDb(ILjava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1758
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1689
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v20    # "isValidAuth":Z
    :cond_2a
    if-eqz v26, :cond_16

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1690
    const-string/jumbo v2, "key_id"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    goto/16 :goto_3

    .line 1705
    :cond_2b
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1761
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v20    # "isValidAuth":Z
    :cond_2c
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1763
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v20    # "isValidAuth":Z
    :cond_2d
    if-eqz v26, :cond_2e

    .line 1764
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->clearAuthConfigFromDb(Ljava/lang/String;)V

    .line 1766
    :cond_2e
    if-eqz v26, :cond_2f

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1767
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyPacFileUrl(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1770
    :cond_2f
    const/16 v24, 0x1

    .line 1771
    .local v24, "ret":Z
    if-eqz v26, :cond_34

    .line 1772
    if-eqz v25, :cond_30

    .line 1774
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v24

    .line 1778
    :cond_30
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 1779
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/net/ProxyInfo;->setEnterpriseProxy(I)V

    .line 1782
    :cond_31
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v10, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    and-int v24, v24, v2

    .line 1783
    if-eqz v24, :cond_0

    .line 1784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->clearCaches()V

    .line 1785
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createEntepriseProfile(Landroid/net/wifi/WifiConfiguration;)V

    .line 1786
    const-string v2, "ENTERPRISE_SSIDS"

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 1788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1790
    .local v22, "psToken":J
    :try_start_1
    const-string v9, ""

    .local v9, "caCertificate":Ljava/lang/String;
    const-string v11, ""

    .line 1791
    .local v11, "clientCertificate":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v2, :cond_32

    .line 1792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CA certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1793
    :cond_32
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 1794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Client credentials "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1795
    :cond_33
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "WifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has set a new wifi profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SSID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Security type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1802
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v9    # "caCertificate":Ljava/lang/String;
    .end local v11    # "clientCertificate":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1806
    .end local v22    # "psToken":J
    :cond_34
    const/16 v24, 0x0

    goto/16 :goto_0
.end method

.method public setWifiStateChangeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 4945
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4946
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "WIFI"

    const-string v3, "allowWifiStateChanges"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 4950
    .local v9, "ret":Z
    const-string v0, "ALLOW_STATE_CHANGES"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;I)V

    .line 4952
    if-eqz v9, :cond_0

    .line 4953
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4955
    .local v10, "psToken":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "WifiPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has changed Wifi state change allowed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4959
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4962
    .end local v10    # "psToken":J
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 4963
    .local v12, "userId":I
    if-eqz v9, :cond_1

    if-nez v12, :cond_1

    .line 4964
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 4966
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v0, "Wifi"

    const-string/jumbo v1, "setWifiStateChangeAllowed"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4967
    const-string v0, "WifiPolicyService"

    const-string/jumbo v1, "setWifiStateChangeAllowed calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4972
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_0
    return v9

    .line 4959
    .end local v12    # "userId":I
    .restart local v10    # "psToken":J
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4968
    .end local v10    # "psToken":J
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v12    # "userId":I
    :catch_0
    move-exception v7

    .line 4969
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 345
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    .line 347
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 348
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    .line 349
    return-void
.end method
