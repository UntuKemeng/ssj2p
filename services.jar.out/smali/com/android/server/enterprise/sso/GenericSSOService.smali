.class public Lcom/android/server/enterprise/sso/GenericSSOService;
.super Landroid/app/enterprise/sso/IGenericSSO$Stub;
.source "GenericSSOService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;,
        Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;,
        Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;,
        Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;,
        Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;,
        Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;,
        Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;
    }
.end annotation


# static fields
.field private static final ANDROID_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final COMMON_VALUE:Ljava/lang/String; = "value"

.field private static final CONFIGURESSO:I = 0x5

.field private static final DATA_KEY_LENGTH:I = 0x10

.field private static final DELETE_KEYS:I = 0x6

.field private static final ENCODING_UTF8:Ljava/lang/String; = "UTF_8"

.field private static final GENERIC_SSO_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SSO"

.field private static final KEYSPEC_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEYSTORE_PASSWORD:Ljava/lang/String; = "password_for_secret_key"

.field private static final KEYWORD_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KEYWORD_CUSTOMERBRAND:Ljava/lang/String; = "customerbrand"

.field private static final KEYWORD_DEVICE_CERTIFICATE:Ljava/lang/String; = "devicecertificate"

.field private static final KEYWORD_SSOPROVIDER:Ljava/lang/String; = "ssoprovider"

.field private static final KEYWORD_TOKEN_APPPKGNAME:Ljava/lang/String; = "packagename"

.field private static final KEYWORD_TOKEN_CACHE:Ljava/lang/String; = "apptoken"

.field private static final KEYWORD_USER_CERTIFICATE:Ljava/lang/String; = "usercertificate"

.field private static final KEYWORD_VENDORCONFIG:Ljava/lang/String; = "vendorconfigs"

.field private static final KEYWORD_WHITELISTPACKAGE:Ljava/lang/String; = "whitelistpackage"

.field private static final KEY_STORE_CERT_ALIAS:Ljava/lang/String; = "KnoxSSOKey"

.field private static final KNOXSSO_CONF_DATA_FILENAME:Ljava/lang/String; = "ssoconfig.xml"

.field private static final KNOXSSO_DATASYSTEM_DIR:Ljava/lang/String; = "/data/system/"

.field private static final KNOXSSO_SECRETKEY_FILE:Ljava/lang/String; = "KnoxSSO_SCKF"

.field private static final KNOXSSO_TMP_CONF_DATA_FILENAME:Ljava/lang/String; = "tmpssoconfig.xml"

.field private static final KNOXSSO_TOKEN_FILENAME:Ljava/lang/String; = "ssotoken.xml"

.field private static final KNOXSSO_USERX_SSOCONF_DIR:Ljava/lang/String; = "/data/system/users/"

.field private static final NTP_CONNECTION_TIMEOUT:J = 0x7d0L

.field private static final PKGCERT:I = 0x1

.field private static final PKGNAME:I = 0x0

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final SET_UNENROLL_FLAG:I = 0x7

.field private static final TAG:Ljava/lang/String; = "GenericSSOService"

.field private static final TIMA_KEYSTORE:Ljava/lang/String; = "TIMAKeyStore"

.field private static final TOKEN:I = 0x2

.field private static final UNREGISTER:I = 0x1

.field private static final USERINFO:I = 0x3

.field private static final WRAP_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

.field private static final mCacheLock:Ljava/lang/Object;

.field private static mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

.field private static mKeyPair:Ljava/security/KeyPair;

.field private static mKeystore:Ljava/security/KeyStore;

.field private static mSSOInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static mSecretKey:Ljava/security/Key;

.field private static final mSecretKeyLock:Ljava/lang/Object;

.field private static requestConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;",
            ">;"
        }
    .end annotation
.end field

.field private static sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

.field private static serviceKeeper:Lcom/android/server/ServiceKeeper;

.field private static tokenConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

.field private WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

.field private initElapsedTime:J

.field private initUTCTime:J

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    .line 245
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKeyLock:Ljava/lang/Object;

    .line 246
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mCacheLock:Ljava/lang/Object;

    .line 248
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    .line 265
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, -0x2710

    .line 268
    invoke-direct {p0}, Landroid/app/enterprise/sso/IGenericSSO$Stub;-><init>()V

    .line 250
    iput-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    .line 251
    iput-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    .line 262
    const-string/jumbo v0, "genericsso_whitelist_all_apps"

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

    .line 263
    const-string/jumbo v0, "genericsso_unenroll_ad_authenticator"

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    .line 269
    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    .line 270
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    .line 271
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    .line 272
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    .line 274
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    .line 275
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initTokenConfigDoc(I)V

    .line 276
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "GenericSSOService"

    const-string v1, "In GenericSSOService: registerReceiverForKeyClear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->registerReceiverForKeyClear()V

    .line 279
    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    iget-object v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    .line 280
    const-string v0, "GenericSSOService"

    const-string v1, "In GenericSSOService: Generic SSO Service start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method private _addWhiteListPackages(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)I
    .locals 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/sso/WhiteListPackage;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 2740
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/sso/WhiteListPackage;>;"
    if-nez p1, :cond_1

    .line 2741
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_0

    .line 2742
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackages: cxtInfo is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    :cond_0
    const/16 v18, -0x3

    .line 2837
    :goto_0
    return v18

    .line 2745
    :cond_1
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2746
    .local v12, "mdmUID":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v18

    if-nez v18, :cond_3

    .line 2747
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_2

    .line 2748
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackages: MDM uid is not matched"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    :cond_2
    const/16 v18, -0xa

    goto :goto_0

    .line 2751
    :cond_3
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_4

    .line 2752
    const-string v18, "GenericSSOService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "In _addWhiteListPackage: UserId: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    :cond_4
    if-nez p2, :cond_6

    .line 2754
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_5

    .line 2755
    const-string v18, "GenericSSOService"

    const-string v19, "In addWhiteListPackage: Invalid Parameters."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    :cond_5
    const/16 v18, -0x3

    goto :goto_0

    .line 2758
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_8

    .line 2759
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_7

    .line 2760
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: No SSO Vendors have been enrolled."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    :cond_7
    const/16 v18, -0x6

    goto :goto_0

    .line 2765
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v6

    .line 2766
    .local v6, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v6}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 2767
    .local v15, "solution":Lorg/w3c/dom/Node;
    const/4 v3, 0x0

    .line 2768
    .local v3, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/enterprise/sso/WhiteListPackage;

    .line 2769
    .local v14, "pack":Landroid/app/enterprise/sso/WhiteListPackage;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2770
    invoke-virtual {v14}, Landroid/app/enterprise/sso/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_b

    .line 2771
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_a

    .line 2772
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: Invalid Parameters. Package Name or Certificate is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    :cond_a
    const/16 v18, -0x3

    goto/16 :goto_0

    .line 2776
    :cond_b
    invoke-virtual {v14}, Landroid/app/enterprise/sso/WhiteListPackage;->getConfigMap()Ljava/util/Map;

    move-result-object v5

    .line 2777
    .local v5, "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "clientpackagename"

    invoke-virtual {v14}, Landroid/app/enterprise/sso/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 2780
    .local v17, "whitelistApp":Lorg/w3c/dom/Node;
    if-eqz v17, :cond_d

    .line 2781
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_9

    .line 2782
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: the given whitelistpkg has already been registered"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2828
    .end local v3    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v14    # "pack":Landroid/app/enterprise/sso/WhiteListPackage;
    .end local v15    # "solution":Lorg/w3c/dom/Node;
    .end local v17    # "whitelistApp":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v8

    .line 2830
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: NullPointerException."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2835
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :goto_2
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_c

    .line 2836
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: Returning Fail."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    :cond_c
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 2786
    .restart local v3    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v14    # "pack":Landroid/app/enterprise/sso/WhiteListPackage;
    .restart local v15    # "solution":Lorg/w3c/dom/Node;
    .restart local v17    # "whitelistApp":Lorg/w3c/dom/Node;
    :cond_d
    :try_start_1
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_e

    .line 2787
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: the package hasn\'t been whitelisted"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    :cond_e
    iget-object v7, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 2790
    .local v7, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v18, "whitelistpackage"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 2791
    .local v4, "app":Lorg/w3c/dom/Element;
    const-string v18, "clientpackagename"

    invoke-virtual {v14}, Landroid/app/enterprise/sso/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    invoke-virtual {v14}, Landroid/app/enterprise/sso/WhiteListPackage;->getSignature()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_11

    .line 2795
    const-string v18, "clientpackagesignature"

    invoke-virtual {v14}, Landroid/app/enterprise/sso/WhiteListPackage;->getSignature()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2803
    :cond_f
    :goto_3
    if-eqz v5, :cond_12

    .line 2804
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2805
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 2806
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v19, v0

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 2808
    .local v13, "node":Lorg/w3c/dom/Element;
    const-string/jumbo v19, "value"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    invoke-interface {v4, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2811
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_10

    .line 2812
    const-string v19, "GenericSSOService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "In _addWhiteListPackage:  <"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "> parameter for - packageName "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Landroid/app/enterprise/sso/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " is added"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 2831
    .end local v3    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v4    # "app":Lorg/w3c/dom/Element;
    .end local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "node":Lorg/w3c/dom/Element;
    .end local v14    # "pack":Landroid/app/enterprise/sso/WhiteListPackage;
    .end local v15    # "solution":Lorg/w3c/dom/Node;
    .end local v17    # "whitelistApp":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v8

    .line 2833
    .local v8, "e":Ljava/lang/Exception;
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: Exception."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 2799
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v4    # "app":Lorg/w3c/dom/Element;
    .restart local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v14    # "pack":Landroid/app/enterprise/sso/WhiteListPackage;
    .restart local v15    # "solution":Lorg/w3c/dom/Node;
    .restart local v17    # "whitelistApp":Lorg/w3c/dom/Node;
    :cond_11
    :try_start_2
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_f

    .line 2800
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: the package signature hasn\'t been specified"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2820
    :cond_12
    invoke-interface {v15, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1

    .line 2823
    .end local v4    # "app":Lorg/w3c/dom/Element;
    .end local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v14    # "pack":Landroid/app/enterprise/sso/WhiteListPackage;
    .end local v17    # "whitelistApp":Lorg/w3c/dom/Node;
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 2824
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackages: removing whitelistAll flag"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v16

    .line 2826
    .local v16, "status":Z
    const-string v18, "GenericSSOService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "In _addWhiteListPackages: return from remove whitelisting all apps = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2827
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method private _configureSSOByFile(Landroid/app/enterprise/ContextInfo;[BI)I
    .locals 33
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "configData"    # [B
    .param p3, "userId"    # I

    .prologue
    .line 2546
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v20, v0

    .line 2547
    .local v20, "mdmUid":I
    const/4 v8, 0x0

    .line 2548
    .local v8, "configDataStream":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v30

    if-nez v30, :cond_2

    .line 2549
    sget-boolean v30, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v30, :cond_0

    .line 2550
    const-string v30, "GenericSSOService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "In _configureSSOByFile: MDM uid is not matched = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    :cond_0
    const/16 v30, -0xa

    .line 2702
    :cond_1
    :goto_0
    return v30

    .line 2553
    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v30, v0

    if-nez v30, :cond_5

    .line 2554
    :cond_3
    sget-boolean v30, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v30, :cond_4

    .line 2555
    const-string v30, "GenericSSOService"

    const-string v31, "In _configureSSOByFile: config is null or is empty"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    :cond_4
    const/16 v30, -0x3

    goto :goto_0

    .line 2560
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v10

    .line 2561
    .local v10, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v10}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 2562
    .local v24, "solution":Lorg/w3c/dom/Node;
    const/4 v11, 0x0

    .line 2563
    .local v11, "curAuthenPkgName":Ljava/lang/String;
    if-eqz v24, :cond_6

    .line 2564
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string/jumbo v31, "servicepackagename"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 2572
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTempConfigFilePath(I)Ljava/lang/String;

    move-result-object v28

    .line 2573
    .local v28, "tmpFile":Ljava/lang/String;
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2574
    .local v26, "tmpConfigDataDir":Ljava/io/File;
    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v30, Ljava/io/FileOutputStream;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2576
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .local v9, "configDataStream":Ljava/io/OutputStream;
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2577
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v13

    .line 2579
    .local v13, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v12

    .line 2580
    .local v12, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v14

    .line 2581
    .local v14, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v14}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Element;->normalize()V

    .line 2582
    new-instance v27, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-object/from16 v0, v27

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    .line 2585
    .local v27, "tmpConfigDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static/range {v27 .. v27}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v25

    check-cast v25, Lorg/w3c/dom/Element;

    .line 2586
    .local v25, "solutionEle":Lorg/w3c/dom/Element;
    const-string/jumbo v30, "mdmuid"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    const-string/jumbo v30, "servicepackagename"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2590
    .local v6, "authenticatorPkgName":Ljava/lang/String;
    const-string/jumbo v30, "servicepackagesignature"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2594
    .local v5, "authenticatorPkgCert":Ljava/lang/String;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->update()V
    invoke-static/range {v27 .. v27}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 2595
    sget-boolean v30, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v30, :cond_7

    .line 2596
    const-string v30, "GenericSSOService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "In _configureSSOByFile: tmp sso config doc is updated in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    :cond_7
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 2601
    sget-boolean v30, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v30, :cond_8

    .line 2602
    const-string v30, "GenericSSOService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "In _configureSSOByFile: updated sso config doc is saved at "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " for userId "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2607
    .local v18, "identity":J
    const-string v30, "application_policy"

    invoke-static/range {v30 .. v30}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2611
    .local v4, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v4, :cond_e

    .line 2612
    move/from16 v0, p3

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v30

    if-nez v30, :cond_b

    .line 2614
    sget-boolean v30, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v30, :cond_9

    .line 2615
    const-string v30, "GenericSSOService"

    const-string v31, "In _configureSSOByFile: Authenticator not installed"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    :cond_9
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 2618
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2619
    const/16 v30, -0xc

    .line 2695
    if-eqz v9, :cond_a

    .line 2696
    :try_start_2
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_a
    :goto_1
    move-object v8, v9

    .line 2700
    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 2698
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .restart local v9    # "configDataStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v15

    .line 2699
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2621
    .end local v15    # "e":Ljava/io/IOException;
    :cond_b
    :try_start_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2622
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2624
    .local v17, "installedAppPkgSig":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_e

    .line 2625
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_e

    .line 2626
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 2627
    sget-boolean v30, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v30, :cond_c

    .line 2628
    const-string v30, "GenericSSOService"

    const-string v31, "In _configureSSOByFile: Authenticator signature is not matched"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2630
    :cond_c
    const/16 v30, -0xd

    .line 2695
    if-eqz v9, :cond_d

    .line 2696
    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_d
    :goto_2
    move-object v8, v9

    .line 2700
    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 2698
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .restart local v9    # "configDataStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v15

    .line 2699
    .restart local v15    # "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2635
    .end local v15    # "e":Ljava/io/IOException;
    .end local v17    # "installedAppPkgSig":Ljava/lang/String;
    :cond_e
    :try_start_5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2638
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_11

    .line 2640
    sget-boolean v30, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v30, :cond_f

    .line 2641
    const-string v30, "GenericSSOService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "In _configureSSOByFile: there\'s already one sso vendor enrolled for userId "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", please unenroll the existing one first"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    :cond_f
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2646
    const/16 v30, -0x9

    .line 2695
    if-eqz v9, :cond_10

    .line 2696
    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_10
    :goto_3
    move-object v8, v9

    .line 2700
    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 2698
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .restart local v9    # "configDataStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v15

    .line 2699
    .restart local v15    # "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2650
    .end local v15    # "e":Ljava/io/IOException;
    :cond_11
    :try_start_7
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v16

    .line 2651
    .local v16, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2652
    .local v7, "configDataDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_12

    .line 2653
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 2655
    :cond_12
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v23

    .line 2656
    .local v23, "renameSucceed":Z
    if-nez v23, :cond_15

    .line 2657
    sget-boolean v30, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v30, :cond_13

    .line 2658
    const-string v30, "GenericSSOService"

    const-string v31, "In _configureSSOByFile: tempConfigFile failed to be saved to ssoconfig.xml"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2660
    :cond_13
    const/16 v30, -0x1

    .line 2695
    if-eqz v9, :cond_14

    .line 2696
    :try_start_8
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_14
    :goto_4
    move-object v8, v9

    .line 2700
    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 2698
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .restart local v9    # "configDataStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v15

    .line 2699
    .restart local v15    # "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2662
    .end local v15    # "e":Ljava/io/IOException;
    :cond_15
    :try_start_9
    sget-object v30, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2663
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    .line 2664
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v29

    .line 2665
    .local v29, "vendorBundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v22

    .line 2667
    .local v22, "protocolConfiged":I
    if-eqz v22, :cond_18

    .line 2668
    sget-boolean v30, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v30, :cond_16

    .line 2669
    const-string v30, "GenericSSOService"

    const-string v31, "In configureSSOByFile: failed because of pushAuthenticatorConfig()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2671
    :cond_16
    const/16 v30, -0x10

    .line 2695
    if-eqz v9, :cond_17

    .line 2696
    :try_start_a
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_17
    :goto_5
    move-object v8, v9

    .line 2700
    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 2698
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .restart local v9    # "configDataStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v15

    .line 2699
    .restart local v15    # "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2674
    .end local v15    # "e":Ljava/io/IOException;
    :cond_18
    const/16 v30, 0x64

    move/from16 v0, p3

    move/from16 v1, v30

    if-lt v0, v1, :cond_19

    .line 2675
    :try_start_b
    sget-object v30, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUnEnrollSetting(I)Z

    move-result v30

    if-eqz v30, :cond_19

    .line 2676
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v30

    const/16 v31, 0x7

    invoke-virtual/range {v30 .. v31}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 2677
    .local v21, "message":Landroid/os/Message;
    move/from16 v0, p3

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2678
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 2679
    move-object/from16 v0, v21

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2680
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2695
    .end local v21    # "message":Landroid/os/Message;
    :cond_19
    if-eqz v9, :cond_1a

    .line 2696
    :try_start_c
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 2702
    :cond_1a
    :goto_6
    const/16 v30, 0x0

    move-object v8, v9

    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 2698
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .restart local v9    # "configDataStream":Ljava/io/OutputStream;
    :catch_5
    move-exception v15

    .line 2699
    .restart local v15    # "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2683
    .end local v4    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v5    # "authenticatorPkgCert":Ljava/lang/String;
    .end local v6    # "authenticatorPkgName":Ljava/lang/String;
    .end local v7    # "configDataDir":Ljava/io/File;
    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .end local v10    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v11    # "curAuthenPkgName":Ljava/lang/String;
    .end local v12    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "e":Ljava/io/IOException;
    .end local v16    # "filePath":Ljava/lang/String;
    .end local v18    # "identity":J
    .end local v22    # "protocolConfiged":I
    .end local v23    # "renameSucceed":Z
    .end local v24    # "solution":Lorg/w3c/dom/Node;
    .end local v25    # "solutionEle":Lorg/w3c/dom/Element;
    .end local v26    # "tmpConfigDataDir":Ljava/io/File;
    .end local v27    # "tmpConfigDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v28    # "tmpFile":Ljava/lang/String;
    .end local v29    # "vendorBundle":Landroid/os/Bundle;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v15

    .line 2685
    .local v15, "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_d
    const-string v30, "GenericSSOService"

    const-string v31, "In _configureSSOByFile: File not found exception in configureSSOByFile"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2686
    const/16 v30, -0x5

    .line 2695
    if-eqz v8, :cond_1

    .line 2696
    :try_start_e
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_0

    .line 2698
    :catch_7
    move-exception v15

    .line 2699
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 2687
    .end local v15    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v15

    .line 2688
    .restart local v15    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_f
    const-string v30, "GenericSSOService"

    const-string v31, "In configureSSOByFile: IO exception in configureSSOByFile"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2689
    const/16 v30, -0x1

    .line 2695
    if-eqz v8, :cond_1

    .line 2696
    :try_start_10
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto/16 :goto_0

    .line 2698
    :catch_9
    move-exception v15

    .line 2699
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 2690
    .end local v15    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v15

    .line 2691
    .local v15, "e":Ljava/lang/Exception;
    :goto_9
    :try_start_11
    const-string v30, "GenericSSOService"

    const-string v31, "In configureSSOByFile: Exception"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 2692
    const/16 v30, -0x1

    .line 2695
    if-eqz v8, :cond_1

    .line 2696
    :try_start_12
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    goto/16 :goto_0

    .line 2698
    :catch_b
    move-exception v15

    .line 2699
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 2694
    .end local v15    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v30

    .line 2695
    :goto_a
    if-eqz v8, :cond_1b

    .line 2696
    :try_start_13
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 2700
    :cond_1b
    :goto_b
    throw v30

    .line 2698
    :catch_c
    move-exception v15

    .line 2699
    .restart local v15    # "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 2694
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v10    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v11    # "curAuthenPkgName":Ljava/lang/String;
    .restart local v24    # "solution":Lorg/w3c/dom/Node;
    .restart local v26    # "tmpConfigDataDir":Ljava/io/File;
    .restart local v28    # "tmpFile":Ljava/lang/String;
    :catchall_1
    move-exception v30

    move-object v8, v9

    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    goto :goto_a

    .line 2690
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .restart local v9    # "configDataStream":Ljava/io/OutputStream;
    :catch_d
    move-exception v15

    move-object v8, v9

    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    goto :goto_9

    .line 2687
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .restart local v9    # "configDataStream":Ljava/io/OutputStream;
    :catch_e
    move-exception v15

    move-object v8, v9

    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    goto :goto_8

    .line 2683
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .restart local v9    # "configDataStream":Ljava/io/OutputStream;
    :catch_f
    move-exception v15

    move-object v8, v9

    .end local v9    # "configDataStream":Ljava/io/OutputStream;
    .restart local v8    # "configDataStream":Ljava/io/OutputStream;
    goto :goto_7
.end method

.method private _enrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I
    .locals 28
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "authenticatorPkgCert"    # Ljava/lang/String;
    .param p4, "ssoconfig"    # Landroid/os/Bundle;
    .param p5, "userId"    # I
    .param p6, "pushRemote"    # Z

    .prologue
    .line 2175
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v18, v0

    .line 2176
    .local v18, "mdmUid":I
    sget-boolean v25, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v25, :cond_0

    const-string v25, "GenericSSOService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "In _enrollSSOVendor mdmUid = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    :cond_0
    const/16 v16, 0x0

    .line 2178
    .local v16, "isRegistered":Z
    sget-boolean v25, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v25, :cond_1

    const-string v25, "GenericSSOService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "In _enrollSSOVendor userid = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v6

    .line 2180
    .local v6, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v6}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 2181
    .local v10, "enrolledVendor":Lorg/w3c/dom/Node;
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v9

    .line 2182
    .local v9, "enrolledSSOPackageName":Ljava/lang/String;
    if-eqz v10, :cond_3

    if-eqz v9, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 2185
    sget-boolean v25, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v25, :cond_2

    .line 2186
    const-string v25, "GenericSSOService"

    const-string v26, "In _enrollSSOVendor: there\'s already one sso vendor enrolled"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    :cond_2
    const/16 v25, -0x9

    .line 2326
    :goto_0
    return v25

    .line 2190
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 2191
    sget-boolean v25, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v25, :cond_4

    .line 2192
    const-string v25, "GenericSSOService"

    const-string v26, "In _enrollSSOVendor: authenticator is null or empty"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :cond_4
    const/16 v25, -0x3

    goto :goto_0

    .line 2195
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2196
    .local v14, "identity":J
    const-string v25, "application_policy"

    invoke-static/range {v25 .. v25}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2198
    .local v4, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v4, :cond_9

    .line 2199
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v25

    if-nez v25, :cond_7

    .line 2201
    sget-boolean v25, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v25, :cond_6

    .line 2202
    const-string v25, "GenericSSOService"

    const-string v26, "In _enrollSSOVendor: Authenticator not installed"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    :cond_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2204
    const/16 v25, -0xc

    goto :goto_0

    .line 2206
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2208
    .local v13, "installedAppPkgSig":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 2209
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 2210
    sget-boolean v25, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v25, :cond_8

    .line 2211
    const-string v25, "GenericSSOService"

    const-string v26, "In _enrollSSOVendor: Authenticator signature is not matched"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    :cond_8
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2214
    const/16 v25, -0xd

    goto :goto_0

    .line 2219
    .end local v13    # "installedAppPkgSig":Ljava/lang/String;
    :cond_9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2223
    :try_start_0
    iget-object v7, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 2224
    .local v7, "doc":Lorg/w3c/dom/Document;
    const/16 v20, 0x0

    .line 2225
    .local v20, "newSolution":Lorg/w3c/dom/Element;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v9

    .line 2226
    if-eqz v10, :cond_d

    if-eqz v9, :cond_d

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 2230
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v25

    if-nez v25, :cond_b

    .line 2231
    sget-boolean v25, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v25, :cond_a

    .line 2232
    const-string v25, "GenericSSOService"

    const-string v26, "In _enrollSSOVendor: MDM uid is not matched"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :cond_a
    const/16 v25, -0xa

    goto/16 :goto_0

    .line 2236
    :cond_b
    const/16 v16, 0x1

    .line 2237
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 2238
    .local v5, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_f

    .line 2239
    invoke-interface {v5, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    .line 2240
    .local v21, "node":Lorg/w3c/dom/Node;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "whitelistpackage"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_c

    .line 2241
    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2238
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2245
    .end local v5    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v11    # "i":I
    .end local v21    # "node":Lorg/w3c/dom/Node;
    :cond_d
    const-string/jumbo v25, "ssoprovider"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v20

    .line 2246
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_12

    .line 2247
    const-string/jumbo v25, "servicepackagesignature"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    :cond_e
    :goto_2
    const-string/jumbo v25, "servicepackagename"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    const-string/jumbo v25, "mdmuid"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v25

    if-nez v25, :cond_14

    .line 2263
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v25, v0

    const-string/jumbo v26, "vendorconfigs"

    invoke-interface/range {v25 .. v26}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v24

    .line 2265
    .local v24, "vendorconfigs":Lorg/w3c/dom/Element;
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2266
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_10

    .line 2267
    const/16 v21, 0x0

    .line 2268
    .local v21, "node":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    .end local v21    # "node":Lorg/w3c/dom/Element;
    check-cast v21, Lorg/w3c/dom/Element;

    .restart local v21    # "node":Lorg/w3c/dom/Element;
    if-nez v21, :cond_11

    .line 2269
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v21

    .line 2270
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2272
    :cond_11
    const-string/jumbo v25, "value"

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    sget-boolean v25, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v25, :cond_10

    .line 2275
    const-string v25, "GenericSSOService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "In _enrollSSOVendor:  <"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "> parameter for - packageName "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " is added"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_3

    .line 2319
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "key":Ljava/lang/String;
    .end local v20    # "newSolution":Lorg/w3c/dom/Element;
    .end local v21    # "node":Lorg/w3c/dom/Element;
    .end local v24    # "vendorconfigs":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v8

    .line 2320
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v25, "GenericSSOService"

    const-string v26, "In _enrollSSOVendor: NullPointerException"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2326
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :goto_4
    const/16 v25, -0x1

    goto/16 :goto_0

    .line 2251
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v20    # "newSolution":Lorg/w3c/dom/Element;
    :cond_12
    :try_start_1
    sget-boolean v25, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v25, :cond_e

    .line 2252
    const-string v25, "GenericSSOService"

    const-string v26, "In _enrollSSOVendor: Authenticator signature is not specified"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 2321
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v20    # "newSolution":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v8

    .line 2322
    .local v8, "e":Lorg/w3c/dom/DOMException;
    const-string v25, "GenericSSOService"

    const-string v26, "In _enrollSSOVendor: DOMException"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2281
    .end local v8    # "e":Lorg/w3c/dom/DOMException;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v20    # "newSolution":Lorg/w3c/dom/Element;
    .restart local v24    # "vendorconfigs":Lorg/w3c/dom/Element;
    :cond_13
    if-nez v16, :cond_17

    .line 2282
    :try_start_2
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2286
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v24    # "vendorconfigs":Lorg/w3c/dom/Element;
    :cond_14
    :goto_5
    if-nez v16, :cond_15

    .line 2287
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2288
    :cond_15
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->normalize()V

    .line 2289
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 2291
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v23

    .line 2293
    .local v23, "vendorBundle":Landroid/os/Bundle;
    if-eqz p6, :cond_18

    .line 2294
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v22

    .line 2296
    .local v22, "protocolConfiged":I
    if-eqz v22, :cond_18

    .line 2297
    sget-boolean v25, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v25, :cond_16

    .line 2298
    const-string v25, "GenericSSOService"

    const-string v26, "In _enrollSSOVendor: failed because of pushAuthenticatorConfig()"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    :cond_16
    const/16 v25, -0x10

    goto/16 :goto_0

    .line 2284
    .end local v22    # "protocolConfiged":I
    .end local v23    # "vendorBundle":Landroid/os/Bundle;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v24    # "vendorconfigs":Lorg/w3c/dom/Element;
    :cond_17
    move-object/from16 v0, v24

    invoke-interface {v10, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 2323
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v20    # "newSolution":Lorg/w3c/dom/Element;
    .end local v24    # "vendorconfigs":Lorg/w3c/dom/Element;
    :catch_2
    move-exception v8

    .line 2324
    .local v8, "e":Ljava/lang/Exception;
    const-string v25, "GenericSSOService"

    const-string v26, "In _enrollSSOVendor: Exception"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 2305
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v20    # "newSolution":Lorg/w3c/dom/Element;
    .restart local v23    # "vendorBundle":Landroid/os/Bundle;
    :cond_18
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V

    .line 2308
    const/16 v25, 0x64

    move/from16 v0, p5

    move/from16 v1, v25

    if-lt v0, v1, :cond_19

    .line 2309
    sget-object v25, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move-object/from16 v0, v25

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUnEnrollSetting(I)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 2310
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v25

    const/16 v26, 0x7

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 2311
    .local v19, "message":Landroid/os/Message;
    move/from16 v0, p5

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2312
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 2313
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2314
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2317
    .end local v19    # "message":Landroid/os/Message;
    :cond_19
    const/16 v25, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/sso/GenericSSOService;ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromConfigData(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    return-object v0
.end method

.method static synthetic access$1002(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 0
    .param p0, "x0"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 155
    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method static synthetic access$1102(Ljava/security/Key;)Ljava/security/Key;
    .locals 0
    .param p0, "x0"    # Ljava/security/Key;

    .prologue
    .line 155
    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    return-object p0
.end method

.method static synthetic access$1202(Ljava/security/KeyPair;)Ljava/security/KeyPair;
    .locals 0
    .param p0, "x0"    # Ljava/security/KeyPair;

    .prologue
    .line 155
    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    return-object p0
.end method

.method static synthetic access$1300()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/app/enterprise/ContextInfo;[BI)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->configureSSOByFile2(Landroid/app/enterprise/ContextInfo;[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/sso/GenericSSOService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/server/enterprise/sso/GenericSSOService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;
    .param p1, "x1"    # J

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    return-wide p1
.end method

.method static synthetic access$2400()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/os/Bundle;
    .param p5, "x5"    # I

    .prologue
    .line 155
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/sso/GenericSSOService;->enrollSSOVendor2(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/sso/GenericSSOService;I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;
    .param p1, "x1"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/sso/GenericSSOService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V

    return-void
.end method

.method static synthetic access$800()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$802(Ljava/security/KeyStore;)Ljava/security/KeyStore;
    .locals 0
    .param p0, "x0"    # Ljava/security/KeyStore;

    .prologue
    .line 155
    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/sso/GenericSSOService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    return-object v0
.end method

.method private addAppTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 11
    .param p1, "userId"    # I
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    .line 3889
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3890
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    invoke-static {v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$2000(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 3891
    .local v6, "tokenNode":Lorg/w3c/dom/Element;
    if-nez v6, :cond_1

    .line 3892
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 3893
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In addAppTokenToSecureStorageForUser: the token for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t exist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3896
    :cond_0
    iget-object v8, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string v9, "apptoken"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 3897
    const-string/jumbo v8, "packagename"

    invoke-interface {v6, v8, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3898
    iget-object v8, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v8}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3900
    :cond_1
    const-string/jumbo v8, "protocoltype"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p3}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3904
    invoke-virtual {p3}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 3905
    .local v5, "tokenBundle":Landroid/os/Bundle;
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 3906
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3907
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3908
    .local v7, "value":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3909
    const-string v8, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3913
    invoke-direct {p0, v0, v6, v3, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3919
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "tokenBundle":Landroid/os/Bundle;
    .end local v6    # "tokenNode":Lorg/w3c/dom/Element;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3920
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v8, "GenericSSOService"

    const-string v9, "In addAppTokenToSecureStorageForUser: NullPointerException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3924
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v8, -0x1

    :goto_2
    return v8

    .line 3917
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "tokenBundle":Landroid/os/Bundle;
    .restart local v6    # "tokenNode":Lorg/w3c/dom/Element;
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3918
    const/4 v8, 0x0

    goto :goto_2

    .line 3921
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "tokenBundle":Landroid/os/Bundle;
    .end local v6    # "tokenNode":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v1

    .line 3922
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In addAppTokenToSecureStorageForUser: error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private addTokenToGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    .line 3596
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3597
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3598
    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: appPkgName is null or empty string"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3603
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3604
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3606
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3607
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3608
    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    :cond_1
    const/4 v3, -0x1

    .line 3621
    :goto_0
    return v3

    .line 3612
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3613
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3614
    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: appPkgName is authenticator packagename, we add share token"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    :cond_3
    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addUserAndDeviceCertificatesForUser(ILandroid/app/enterprise/sso/TokenInfo;)I

    move-result v3

    goto :goto_0

    .line 3618
    :cond_4
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 3619
    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: appPkgName is not application packagename, we add app token"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    :cond_5
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addAppTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I

    move-result v3

    goto :goto_0
.end method

.method private addTokenToSecureStorage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    .line 3836
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3838
    .local v0, "userId":I
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I

    move-result v1

    return v1
.end method

.method private addTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 13
    .param p1, "userId"    # I
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    .line 3933
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_2

    .line 3934
    :cond_0
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 3935
    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: token to save is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    :cond_1
    const/4 v10, -0x3

    .line 3997
    :goto_0
    return v10

    .line 3940
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3941
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 3942
    .local v8, "userCertNode":Lorg/w3c/dom/Element;
    if-nez v8, :cond_4

    .line 3943
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 3944
    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: the usercert doesn\'t exist"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    :cond_3
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v11, "usercertificate"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 3948
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3950
    :cond_4
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 3951
    .local v1, "deviceCertNode":Lorg/w3c/dom/Element;
    if-nez v1, :cond_6

    .line 3952
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_5

    .line 3953
    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: the deviceCert doesn\'t exist"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    :cond_5
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string v11, "devicecertificate"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 3957
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3959
    :cond_6
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    invoke-static {v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$2000(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 3960
    .local v7, "tokenNode":Lorg/w3c/dom/Element;
    if-nez v7, :cond_8

    .line 3961
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_7

    .line 3962
    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In addTokenToSecureStorageForUser: the token for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doesn\'t exist"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    :cond_7
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string v11, "apptoken"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 3966
    const-string/jumbo v10, "packagename"

    invoke-interface {v7, v10, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3967
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3969
    :cond_8
    const-string/jumbo v10, "protocoltype"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3973
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 3974
    .local v6, "tokenBundle":Landroid/os/Bundle;
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 3976
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3977
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3978
    .local v9, "value":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 3979
    const-string v10, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 3981
    :cond_a
    invoke-direct {p0, v0, v8, v4, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3992
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "tokenBundle":Landroid/os/Bundle;
    .end local v7    # "tokenNode":Lorg/w3c/dom/Element;
    .end local v8    # "userCertNode":Lorg/w3c/dom/Element;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3993
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: NullPointerException"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3997
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_2
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 3982
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "tokenBundle":Landroid/os/Bundle;
    .restart local v7    # "tokenNode":Lorg/w3c/dom/Element;
    .restart local v8    # "userCertNode":Lorg/w3c/dom/Element;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_b
    :try_start_1
    const-string v10, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 3984
    :cond_c
    invoke-direct {p0, v0, v1, v4, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3994
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "tokenBundle":Landroid/os/Bundle;
    .end local v7    # "tokenNode":Lorg/w3c/dom/Element;
    .end local v8    # "userCertNode":Lorg/w3c/dom/Element;
    .end local v9    # "value":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 3995
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: Exception"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3986
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "tokenBundle":Landroid/os/Bundle;
    .restart local v7    # "tokenNode":Lorg/w3c/dom/Element;
    .restart local v8    # "userCertNode":Lorg/w3c/dom/Element;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_d
    :try_start_2
    invoke-direct {p0, v0, v7, v4, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3990
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3991
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private addUserAndDeviceCertificatesForUser(ILandroid/app/enterprise/sso/TokenInfo;)I
    .locals 12
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    .line 3843
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3844
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 3845
    .local v7, "userCertNode":Lorg/w3c/dom/Element;
    if-nez v7, :cond_1

    .line 3846
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 3847
    const-string v9, "GenericSSOService"

    const-string v10, "In addUserAndDeviceCertificates: the usercert doesn\'t exist"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    :cond_0
    iget-object v9, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v10, "usercertificate"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 3851
    iget-object v9, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3853
    :cond_1
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 3854
    .local v1, "deviceCertNode":Lorg/w3c/dom/Element;
    if-nez v1, :cond_3

    .line 3855
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 3856
    const-string v9, "GenericSSOService"

    const-string v10, "In addUserAndDeviceCertificates: the deviceCert doesn\'t exist"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3858
    :cond_2
    iget-object v9, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string v10, "devicecertificate"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 3860
    iget-object v9, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3862
    :cond_3
    invoke-virtual {p2}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 3863
    .local v6, "tokenBundle":Landroid/os/Bundle;
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 3864
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3865
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3866
    .local v8, "value":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3867
    const-string v9, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3869
    :cond_5
    invoke-direct {p0, v0, v7, v4, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3878
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "tokenBundle":Landroid/os/Bundle;
    .end local v7    # "userCertNode":Lorg/w3c/dom/Element;
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3879
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v9, "GenericSSOService"

    const-string v10, "In addUserAndDeviceCertificates: NullPointerException"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3883
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v9, -0x1

    :goto_2
    return v9

    .line 3870
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "tokenBundle":Landroid/os/Bundle;
    .restart local v7    # "userCertNode":Lorg/w3c/dom/Element;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v9, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3872
    :cond_7
    invoke-direct {p0, v0, v1, v4, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3880
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "tokenBundle":Landroid/os/Bundle;
    .end local v7    # "userCertNode":Lorg/w3c/dom/Element;
    .end local v8    # "value":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 3881
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In addUserAndDeviceCertificates: error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3876
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "tokenBundle":Landroid/os/Bundle;
    .restart local v7    # "userCertNode":Lorg/w3c/dom/Element;
    :cond_8
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3877
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private bindToService(ILandroid/content/Intent;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1143
    new-instance v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;-><init>(I)V

    .line 1144
    .local v0, "connection":Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1145
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1146
    const-string v3, "GenericSSOService"

    const-string v4, "In bindToService: The SSO Service is already bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v4

    .line 1151
    :try_start_0
    const-string v3, "GenericSSOService"

    const-string v5, "In bindToService: Binding to the service..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, p2, v0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 1155
    :try_start_1
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1156
    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v6, 0x4e20

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 1158
    .local v1, "countDownTimeout":Z
    if-nez v1, :cond_2

    .line 1159
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1160
    const-string v3, "GenericSSOService"

    const-string v5, "In bindToService: CoutnDownLatch return false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1170
    .end local v1    # "countDownTimeout":Z
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1163
    :catch_0
    move-exception v2

    .line 1164
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "GenericSSOService"

    const-string v5, "In bindToService: InterruptedException"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1167
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-string v3, "GenericSSOService"

    const-string v5, "In bindToService: Fail to bind to sso service"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z
    .locals 7
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "configData"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1043
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1044
    const-string v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In callingAppIsPermitted: packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

    invoke-static {v4, v5, v3, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 1048
    .local v1, "whiteListstatus":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 1071
    :cond_1
    :goto_1
    return v2

    .end local v1    # "whiteListstatus":Z
    :cond_2
    move v1, v3

    .line 1046
    goto :goto_0

    .line 1050
    .restart local v1    # "whiteListstatus":Z
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1051
    :cond_4
    const-string v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In callingAppIsPermitted: Bundle configData is null or empty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not whitelisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1053
    goto :goto_1

    .line 1055
    :cond_5
    const-string v4, "clientpackagesignature"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1057
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 1058
    .local v0, "packageCert":Ljava/lang/String;
    const-string v4, "clientpackagesignature"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1061
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 1062
    const-string v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In callingAppIsPermitted: Fail to pass the callingApp cert check: (ondevice vs config) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "clientpackagesignature"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v2, v3

    .line 1068
    goto :goto_1
.end method

.method private cleanUpSSOConnections(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 2005
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2006
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->getService()Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2007
    iget-object v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2008
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2009
    const-string v0, "GenericSSOService"

    const-string v1, "In cleanUpSSOConnections: SSO service is unbounded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    const-string v0, "GenericSSOService"

    const-string v1, "In cleanUpSSOConnections: SSO connection is remove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_1
    return-void
.end method

.method private clearConfigAndTokenForAuthenticator(I)I
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 3108
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->unregisterByAuthenticator(I)I

    move-result v3

    .line 3109
    .local v3, "ret":I
    if-eqz v3, :cond_1

    .line 3110
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 3111
    const-string v4, "GenericSSOService"

    const-string v5, "In clearConfigAndTokenForAuthenticator: Fail to clear records remotely"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    :cond_0
    const/16 v3, -0x10

    .line 3134
    .end local v3    # "ret":I
    :goto_0
    return v3

    .line 3117
    .restart local v3    # "ret":I
    :cond_1
    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3118
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 3119
    .local v2, "filepath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3120
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3123
    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3124
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 3125
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3126
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3128
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filepath":Ljava/lang/String;
    .end local v3    # "ret":I
    :catch_0
    move-exception v0

    .line 3129
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "GenericSSOService"

    const-string v5, "clearConfigAndTokenForAuthenticator: SecurityException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3134
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    const/4 v3, -0x1

    goto :goto_0

    .line 3131
    :catch_1
    move-exception v0

    .line 3132
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "GenericSSOService"

    const-string v5, "clearConfigAndTokenForAuthenticator: Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private clearUserCertAndAppToken(Landroid/app/enterprise/ContextInfo;)I
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3139
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 3141
    .local v6, "userId":I
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3142
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhiteListPackages(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v4

    .line 3143
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 3144
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3145
    .local v3, "packageName":Ljava/lang/String;
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 3146
    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In clearUserCertAndAppToken: Processing packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    :cond_0
    invoke-direct {p0, v6, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->deleteAppTokenForUser(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3159
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "userId":I
    :catch_0
    move-exception v1

    .line 3160
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v7, "GenericSSOService"

    const-string v8, "In clearUserCertAndAppToken: NullPointerException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3164
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v7, -0x1

    :goto_2
    return v7

    .line 3153
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "userId":I
    :cond_1
    :try_start_1
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 3154
    .local v5, "userCertNode":Lorg/w3c/dom/Node;
    if-eqz v5, :cond_2

    .line 3155
    iget-object v7, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v7}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7, v5}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3157
    :cond_2
    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3158
    const/4 v7, 0x0

    goto :goto_2

    .line 3161
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "userCertNode":Lorg/w3c/dom/Node;
    .end local v6    # "userId":I
    :catch_1
    move-exception v1

    .line 3162
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "GenericSSOService"

    const-string v8, "In clearUserCertAndAppToken: Exception"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private configureSSOByFile2(Landroid/app/enterprise/ContextInfo;[BI)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "configData"    # [B
    .param p3, "userId"    # I

    .prologue
    .line 2527
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2528
    if-nez p1, :cond_1

    .line 2529
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2530
    const-string v2, "GenericSSOService"

    const-string v3, "In configureSSOByFile2: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    :cond_0
    const/4 v0, -0x3

    .line 2542
    :goto_0
    return v0

    .line 2533
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->_configureSSOByFile(Landroid/app/enterprise/ContextInfo;[BI)I

    move-result v0

    .line 2534
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 2535
    const-string v2, "GenericSSOService"

    const-string v3, "In configureSSOByFile2: success in unenrolling, removing whitelist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    const/4 v2, 0x0

    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    .line 2537
    .local v1, "status":Z
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In configureSSOByFile2: return from remove whitelisting all apps(Remove log later) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2540
    .end local v1    # "status":Z
    :cond_2
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In configureSSOByFile2: Failed to configure file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createSecretKey()Ljavax/crypto/SecretKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 1314
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 1315
    .local v1, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v2, 0x100

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 1316
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1317
    .local v0, "key":Ljavax/crypto/SecretKey;
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1318
    const-string v2, "GenericSSOService"

    const-string/jumbo v3, "secret key is created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :cond_0
    return-object v0
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1305
    .local v0, "_token":J
    :try_start_0
    const-string v2, "GenericSSOService"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "ciphertext"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1532
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1533
    :cond_0
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 1534
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: Key alias or token to encrypt is null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v7

    .line 1590
    :cond_2
    :goto_0
    return-object v2

    .line 1538
    :cond_3
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p2, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1539
    .local v1, "data":[B
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V

    .line 1540
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->loadKey(Ljava/lang/String;)V

    .line 1542
    sget-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    instance-of v6, v6, Ljavax/crypto/SecretKey;

    if-nez v6, :cond_5

    .line 1543
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 1544
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: the retrieved key in keystore is not SecretKey"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v2, v7

    .line 1546
    goto :goto_0

    .line 1549
    :cond_5
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1550
    .local v0, "cipher":Ljavax/crypto/Cipher;
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 1551
    const-string v6, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In decrypt: Provider is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :cond_6
    if-eqz v0, :cond_9

    .line 1553
    array-length v6, v1

    add-int/lit8 v4, v6, -0x10

    .line 1554
    .local v4, "ivIndex":I
    const/4 v8, 0x2

    sget-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    check-cast v6, Ljavax/crypto/SecretKey;

    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v10, 0x10

    invoke-direct {v9, v1, v4, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    invoke-virtual {v0, v8, v6, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1556
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    .line 1557
    .local v5, "out":[B
    new-instance v2, Ljava/lang/String;

    const-string v6, "UTF_8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1558
    .local v2, "decrypted":Ljava/lang/String;
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_7

    .line 1559
    const-string v6, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In decrypt: Decrypted output is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :cond_7
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 1561
    const-string v6, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In decrypt: the length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    goto/16 :goto_0

    .line 1567
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "data":[B
    .end local v2    # "decrypted":Ljava/lang/String;
    .end local v4    # "ivIndex":I
    .end local v5    # "out":[B
    :catch_0
    move-exception v3

    .line 1568
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: NoSuchAlgorithmException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_8
    :goto_1
    move-object v2, v7

    .line 1590
    goto/16 :goto_0

    .line 1564
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v1    # "data":[B
    :cond_9
    :try_start_1
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_8

    .line 1565
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: cipher is null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    goto :goto_1

    .line 1569
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "data":[B
    :catch_1
    move-exception v3

    .line 1570
    .local v3, "e":Ljava/security/KeyStoreException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: KeyStoreException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1571
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :catch_2
    move-exception v3

    .line 1572
    .local v3, "e":Ljava/security/InvalidKeyException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: InvalidKeyException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1573
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v3

    .line 1574
    .local v3, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v6, "GenericSSOService"

    const-string v8, "In encrypt: NoSuchPaddingException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1575
    .end local v3    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v3

    .line 1576
    .local v3, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: IllegalBlockSizeException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1577
    .end local v3    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v3

    .line 1578
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: BadPaddingException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1579
    .end local v3    # "e":Ljavax/crypto/BadPaddingException;
    :catch_6
    move-exception v3

    .line 1580
    .local v3, "e":Ljava/security/UnrecoverableKeyException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: UnrecoverableKeyException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1581
    .end local v3    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_7
    move-exception v3

    .line 1582
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: IOException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1583
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 1584
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: InvalidAlgorithmParameterException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1585
    .end local v3    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_9
    move-exception v3

    .line 1586
    .local v3, "e":Ljava/security/GeneralSecurityException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: GeneralSecurityException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1587
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catch_a
    move-exception v3

    .line 1588
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: Exception"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private deleteAppTokenForUser(ILjava/lang/String;)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3374
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3375
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3376
    const-string v3, "GenericSSOService"

    const-string v4, "In deleteAppTokenForUser: packageName is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    :cond_0
    const/4 v3, -0x3

    .line 3401
    :goto_0
    return v3

    .line 3380
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3381
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    invoke-static {v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$2000(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 3382
    .local v2, "tokenNode":Lorg/w3c/dom/Node;
    if-nez v2, :cond_3

    .line 3383
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 3384
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In deleteAppTokenForUser: the token for packageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    .line 3395
    const/4 v3, 0x0

    goto :goto_0

    .line 3388
    :cond_3
    iget-object v3, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3389
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 3390
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In deleteAppTokenForUser: the token for packageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3396
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v2    # "tokenNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v1

    .line 3397
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "GenericSSOService"

    const-string v4, "In deleteAppTokenForUser: NullPointerException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3401
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_2
    const/4 v3, -0x1

    goto :goto_0

    .line 3398
    :catch_1
    move-exception v1

    .line 3399
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "GenericSSOService"

    const-string v4, "In deleteAppTokenForUser: Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private deleteUserAndDeviceCertForUser(I)I
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 3406
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3407
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 3408
    .local v3, "userCertNode":Lorg/w3c/dom/Node;
    if-nez v3, :cond_2

    .line 3409
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 3410
    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: userCertNode is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    :cond_0
    :goto_0
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 3419
    .local v1, "deviceCertNode":Lorg/w3c/dom/Node;
    if-nez v1, :cond_3

    .line 3420
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 3421
    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: deviceCertNode is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    :cond_1
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    .line 3430
    const/4 v4, 0x0

    .line 3436
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Node;
    .end local v3    # "userCertNode":Lorg/w3c/dom/Node;
    :goto_2
    return v4

    .line 3413
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v3    # "userCertNode":Lorg/w3c/dom/Node;
    :cond_2
    iget-object v4, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3414
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 3415
    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: userCertNode is removed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3431
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v3    # "userCertNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v2

    .line 3432
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: NullPointerException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3436
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_3
    const/4 v4, -0x1

    goto :goto_2

    .line 3424
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v1    # "deviceCertNode":Lorg/w3c/dom/Node;
    .restart local v3    # "userCertNode":Lorg/w3c/dom/Node;
    :cond_3
    :try_start_1
    iget-object v4, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3425
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 3426
    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: deviceCertNode is removed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3433
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Node;
    .end local v3    # "userCertNode":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v2

    .line 3434
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: Exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1291
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1293
    .local v0, "_token":J
    :try_start_0
    const-string v2, "GenericSSOService"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1295
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1454
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1455
    :cond_0
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 1456
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: Key alias or token to encrypt is null"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v10

    .line 1524
    :cond_2
    :goto_0
    return-object v2

    .line 1461
    :cond_3
    :try_start_0
    const-string v9, "UTF_8"

    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1462
    .local v3, "data":[B
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V

    .line 1463
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->loadKey(Ljava/lang/String;)V

    .line 1465
    sget-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    instance-of v9, v9, Ljavax/crypto/SecretKey;

    if-nez v9, :cond_5

    .line 1466
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_4

    .line 1467
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: the retrieved key in keystore is not SecretKey"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v2, v10

    .line 1469
    goto :goto_0

    .line 1473
    :cond_5
    const/16 v9, 0x10

    new-array v5, v9, [B

    .line 1474
    .local v5, "iv":[B
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 1475
    .local v7, "mRandom":Ljava/security/SecureRandom;
    invoke-virtual {v7, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1476
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1478
    .local v6, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v9, "AES/CBC/PKCS5Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 1479
    .local v1, "cipher":Ljavax/crypto/Cipher;
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_6

    .line 1480
    const-string v9, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In encrypt: Provider is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_6
    if-eqz v1, :cond_8

    .line 1482
    const/4 v11, 0x1

    sget-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    check-cast v9, Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v11, v9, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1483
    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 1485
    .local v8, "out":[B
    array-length v9, v8

    array-length v11, v5

    add-int/2addr v9, v11

    new-array v0, v9, [B

    .line 1486
    .local v0, "EncryptedDataAndIV":[B
    const/4 v9, 0x0

    const/4 v11, 0x0

    array-length v12, v8

    invoke-static {v8, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1487
    const/4 v9, 0x0

    array-length v11, v8

    array-length v12, v5

    invoke-static {v5, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1490
    new-instance v2, Ljava/lang/String;

    const/4 v9, 0x2

    invoke-static {v0, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v9

    const-string v11, "UTF_8"

    invoke-direct {v2, v9, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1492
    .local v2, "ciphertext":Ljava/lang/String;
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 1493
    const-string v9, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In encrypt: Encrypted output "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_7
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 1495
    const-string v9, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In encrypt: the length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    goto/16 :goto_0

    .line 1499
    .end local v0    # "EncryptedDataAndIV":[B
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "ciphertext":Ljava/lang/String;
    .end local v3    # "data":[B
    .end local v5    # "iv":[B
    .end local v6    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v7    # "mRandom":Ljava/security/SecureRandom;
    .end local v8    # "out":[B
    :catch_0
    move-exception v4

    .line 1500
    .local v4, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: InvalidAlgorithmParameterException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_8
    :goto_1
    move-object v2, v10

    .line 1524
    goto/16 :goto_0

    .line 1501
    :catch_1
    move-exception v4

    .line 1502
    .local v4, "e":Ljava/security/InvalidKeyException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: InvalidKeyException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1503
    .end local v4    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v4

    .line 1504
    .local v4, "e":Ljava/security/NoSuchProviderException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: NoSuchProviderException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1505
    .end local v4    # "e":Ljava/security/NoSuchProviderException;
    :catch_3
    move-exception v4

    .line 1506
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: NoSuchAlgorithmException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1507
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v4

    .line 1508
    .local v4, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: NoSuchPaddingException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1509
    .end local v4    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_5
    move-exception v4

    .line 1510
    .local v4, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: IllegalBlockSizeException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1511
    .end local v4    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_6
    move-exception v4

    .line 1512
    .local v4, "e":Ljavax/crypto/BadPaddingException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: BadPaddingException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1513
    .end local v4    # "e":Ljavax/crypto/BadPaddingException;
    :catch_7
    move-exception v4

    .line 1514
    .local v4, "e":Ljava/security/ProviderException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: ProviderException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1515
    .end local v4    # "e":Ljava/security/ProviderException;
    :catch_8
    move-exception v4

    .line 1516
    .local v4, "e":Ljava/security/KeyStoreException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: KeyStoreException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1517
    .end local v4    # "e":Ljava/security/KeyStoreException;
    :catch_9
    move-exception v4

    .line 1518
    .local v4, "e":Ljava/security/UnrecoverableKeyException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: UnrecoverableKeyException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1519
    .end local v4    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_a
    move-exception v4

    .line 1520
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: IOException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1521
    .end local v4    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v4

    .line 1522
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: Exception"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.mdm.permission.MDM_SSO"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.mdm.permission.MDM_SSO"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enrollSSOVendor2(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "authenticatorPkgCert"    # Ljava/lang/String;
    .param p4, "ssoconfig"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    .prologue
    .line 2149
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2150
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor2: context infor before enforce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2152
    if-nez p1, :cond_2

    .line 2153
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2154
    const-string v0, "GenericSSOService"

    const-string v1, "In enrollSSOVendor2: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    :cond_1
    const/4 v7, -0x3

    .line 2168
    :goto_0
    return v7

    .line 2157
    :cond_2
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2158
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor2: context infor after enforce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :cond_3
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->_enrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I

    move-result v7

    .line 2160
    .local v7, "ret":I
    if-nez v7, :cond_4

    .line 2161
    const-string v0, "GenericSSOService"

    const-string v1, "In enrollSSOVendor2: success in enrolling, whitelisting false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    const/4 v0, 0x0

    invoke-direct {p0, v0, p5}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v8

    .line 2163
    .local v8, "status":Z
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor2: return from whitelisting all apps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2166
    .end local v8    # "status":Z
    :cond_4
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor2: Failed to enroll = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 8
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "childName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2067
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v5, v6

    .line 2088
    :goto_0
    return-object v5

    .line 2070
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 2071
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2072
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 2073
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 2074
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2076
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2072
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2079
    .end local v3    # "node":Lorg/w3c/dom/Node;
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 2080
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_4
    move-object v5, v6

    .line 2082
    goto :goto_0

    .line 2083
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 2084
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v5, "GenericSSOService"

    const-string v7, "In ExistedNode: NullPointerException"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_2
    move-object v5, v6

    .line 2088
    goto :goto_0

    .line 2085
    :catch_1
    move-exception v1

    .line 2086
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "GenericSSOService"

    const-string v7, "In ExistedNode: Exception"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "configDoc"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .param p2, "tokenNode"    # Lorg/w3c/dom/Element;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 3169
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 3170
    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3171
    const-string v3, "GenericSSOService"

    const-string v4, "In fillChildNodes: parameters are not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    :cond_1
    :goto_0
    return-void

    .line 3175
    :cond_2
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3176
    .local v2, "tokenNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v1, 0x0

    .line 3177
    .local v1, "tokenFieldNode":Lorg/w3c/dom/Element;
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 3178
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3179
    :cond_3
    iget-object v3, p1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3, p3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 3180
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3184
    :goto_1
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 3185
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the original value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    :cond_4
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/sso/GenericSSOService;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 3188
    if-nez p4, :cond_6

    .line 3189
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3190
    const-string v3, "GenericSSOService"

    const-string v4, "In fillChildNodes: encrypted token value is null, failed to fillChildNodes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3201
    .end local v1    # "tokenFieldNode":Lorg/w3c/dom/Element;
    .end local v2    # "tokenNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v0

    .line 3202
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "GenericSSOService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3182
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "tokenFieldNode":Lorg/w3c/dom/Element;
    .restart local v2    # "tokenNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_5
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tokenFieldNode":Lorg/w3c/dom/Element;
    check-cast v1, Lorg/w3c/dom/Element;

    .restart local v1    # "tokenFieldNode":Lorg/w3c/dom/Element;
    goto :goto_1

    .line 3194
    :cond_6
    const-string/jumbo v3, "value"

    invoke-interface {v1, v3, p4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3197
    :cond_7
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3198
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "attributeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Node;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v2, 0x0

    .line 1265
    if-nez p1, :cond_0

    move-object v1, v2

    .line 1273
    :goto_0
    return-object v1

    .line 1267
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 1268
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v1    # "node":Lorg/w3c/dom/Node;
    :cond_2
    move-object v1, v2

    .line 1273
    goto :goto_0
.end method

.method private getAccessTokenByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    const/4 v2, 0x0

    .line 1856
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1857
    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1858
    const-string v3, "GenericSSOService"

    const-string v4, "In getAccessTokenByProtocolType: token is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_1
    :goto_0
    return-object v2

    .line 1862
    :cond_2
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v0

    .line 1863
    .local v0, "protocolType":I
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1864
    .local v1, "responseBundle":Landroid/os/Bundle;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1866
    :pswitch_0
    const-string v2, "SAML_RESPONSE_ASSERTION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1869
    :pswitch_1
    const-string v2, "OAUTH_RESPONSE_ACCESS_TOKEN"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1872
    :pswitch_2
    const-string v2, "SAML_RESPONSE_ASSERTION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1864
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "appPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 3330
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3331
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 3332
    const-string v9, "GenericSSOService"

    const-string v10, "In getAppTokenFromSecureStorageForUser: appPkgName is null or empty"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v6, v8

    .line 3370
    :goto_0
    return-object v6

    .line 3337
    :cond_1
    :try_start_0
    new-instance v6, Landroid/app/enterprise/sso/TokenInfo;

    invoke-direct {v6}, Landroid/app/enterprise/sso/TokenInfo;-><init>()V

    .line 3338
    .local v6, "retToken":Landroid/app/enterprise/sso/TokenInfo;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v3

    .line 3339
    .local v3, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    invoke-static {v3, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$2000(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 3340
    .local v7, "tokenNode":Lorg/w3c/dom/Element;
    if-nez v7, :cond_3

    .line 3341
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 3342
    const-string v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In getAppTokenFromSecureStorageForUser: the token for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " doesn\'t exist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v6, v8

    .line 3345
    goto :goto_0

    .line 3347
    :cond_3
    const-string/jumbo v9, "protocoltype"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/app/enterprise/sso/TokenInfo;->setProtocolType(I)V

    .line 3350
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3351
    .local v2, "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3352
    .local v0, "cachedTokenItems":Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 3353
    .local v1, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 3355
    const-string/jumbo v9, "value"

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 3356
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "value"

    invoke-direct {p0, v1, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3365
    .end local v0    # "cachedTokenItems":Landroid/os/Bundle;
    .end local v1    # "childNode":Lorg/w3c/dom/Node;
    .end local v2    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "retToken":Landroid/app/enterprise/sso/TokenInfo;
    .end local v7    # "tokenNode":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v4

    .line 3366
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v9, "GenericSSOService"

    const-string v10, "In getAppTokenFromSecureStorageForUser: Exception"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/NullPointerException;
    :goto_2
    move-object v6, v8

    .line 3370
    goto/16 :goto_0

    .line 3362
    .restart local v0    # "cachedTokenItems":Landroid/os/Bundle;
    .restart local v2    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "retToken":Landroid/app/enterprise/sso/TokenInfo;
    .restart local v7    # "tokenNode":Lorg/w3c/dom/Element;
    :cond_5
    :try_start_1
    invoke-virtual {v6, v0}, Landroid/app/enterprise/sso/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3367
    .end local v0    # "cachedTokenItems":Landroid/os/Bundle;
    .end local v2    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "retToken":Landroid/app/enterprise/sso/TokenInfo;
    .end local v7    # "tokenNode":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v4

    .line 3368
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "GenericSSOService"

    const-string v10, "In getAppTokenFromSecureStorageForUser: Exception"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "attirbuteName"    # Ljava/lang/String;

    .prologue
    .line 1281
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1283
    :cond_0
    const/4 v0, 0x0

    .line 1284
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1234
    if-nez p1, :cond_1

    move-object v4, v5

    .line 1252
    :cond_0
    :goto_0
    return-object v4

    .line 1237
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1238
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1241
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1242
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1243
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1240
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1247
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 1248
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "GenericSSOService"

    const-string v7, "In getChildNodes: NullPointerException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_2
    move-object v4, v5

    .line 1252
    goto :goto_0

    .line 1249
    :catch_1
    move-exception v1

    .line 1250
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "GenericSSOService"

    const-string v7, "In getChildNodes: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "childName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1205
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v4, v5

    .line 1224
    :cond_1
    :goto_0
    return-object v4

    .line 1209
    :cond_2
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1210
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1212
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1213
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1215
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1211
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1219
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 1220
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "GenericSSOService"

    const-string v7, "In getChildNodes: NullPointerException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_2
    move-object v4, v5

    .line 1224
    goto :goto_0

    .line 1221
    :catch_1
    move-exception v1

    .line 1222
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "GenericSSOService"

    const-string v7, "In getChildNodes: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getConfigData(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v5

    .line 677
    .local v5, "vendorBundle":Landroid/os/Bundle;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 679
    .local v4, "packageBundle":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 680
    .local v3, "newBundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 681
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 682
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 683
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 684
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 685
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 688
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 689
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 690
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 691
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 692
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 695
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method private getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 753
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v4

    .line 754
    .local v4, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v4}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 755
    .local v9, "ssoNode":Lorg/w3c/dom/Node;
    if-nez v9, :cond_1

    .line 756
    const/4 v8, 0x0

    .line 800
    .end local v4    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v9    # "ssoNode":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    return-object v8

    .line 758
    .restart local v4    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v9    # "ssoNode":Lorg/w3c/dom/Node;
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v1

    .line 759
    .local v1, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    if-nez v1, :cond_2

    .line 760
    const/4 v8, 0x0

    goto :goto_0

    .line 762
    :cond_2
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 763
    .local v8, "ret":Landroid/os/Bundle;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 764
    .local v0, "allowedApp":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const-string v10, "clientpackagename"

    invoke-direct {p0, v0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 770
    const-string v10, "clientpackagename"

    invoke-virtual {v8, v10, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v10, "clientpackagesignature"

    invoke-direct {p0, v0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 774
    const-string v10, "clientpackagesignature"

    const-string v11, "clientpackagesignature"

    invoke-direct {p0, v0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v3

    .line 783
    .local v3, "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 784
    .local v2, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 786
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-direct {p0, v2, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 795
    .end local v0    # "allowedApp":Lorg/w3c/dom/Node;
    .end local v1    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v2    # "childNode":Lorg/w3c/dom/Node;
    .end local v3    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v4    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "ret":Landroid/os/Bundle;
    .end local v9    # "ssoNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v5

    .line 796
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string v10, "GenericSSOService"

    const-string v11, "In getConfigDataForPkgName: NullPointerException"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 797
    :catch_1
    move-exception v5

    .line 798
    .local v5, "e":Ljava/lang/Exception;
    const-string v10, "GenericSSOService"

    const-string v11, "In getConfigDataForPkgName: Exception"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getConfigDataForSSOVendor(I)Landroid/os/Bundle;
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 705
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 706
    const-string v10, "GenericSSOService"

    const-string v11, "In getConfigDataForSSOVendor: start getConfigDataForSSOVendor"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    const/4 v7, 0x0

    .line 710
    .local v7, "ret":Landroid/os/Bundle;
    :try_start_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 711
    .end local v7    # "ret":Landroid/os/Bundle;
    .local v8, "ret":Landroid/os/Bundle;
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v3

    .line 712
    .local v3, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 714
    .local v9, "ssoNode":Lorg/w3c/dom/Node;
    const-string/jumbo v10, "servicepackagename"

    const-string/jumbo v11, "servicepackagename"

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string/jumbo v10, "servicepackagesignature"

    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 721
    const-string/jumbo v10, "servicepackagesignature"

    const-string/jumbo v11, "servicepackagesignature"

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v1

    .line 730
    .local v1, "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 731
    .local v0, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "vendorconfigs"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 733
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 734
    .local v2, "configChildNode":Lorg/w3c/dom/Node;
    const-string/jumbo v10, "value"

    invoke-direct {p0, v2, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 735
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-direct {p0, v2, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 744
    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    .end local v1    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v2    # "configChildNode":Lorg/w3c/dom/Node;
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "ssoNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v4

    move-object v7, v8

    .line 745
    .end local v8    # "ret":Landroid/os/Bundle;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v7    # "ret":Landroid/os/Bundle;
    :goto_1
    const-string v10, "GenericSSOService"

    const-string v11, "In getConfigDataForSSOVendor: Exception"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v7

    .end local v7    # "ret":Landroid/os/Bundle;
    .restart local v1    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v8    # "ret":Landroid/os/Bundle;
    .restart local v9    # "ssoNode":Lorg/w3c/dom/Node;
    :cond_4
    move-object v7, v8

    .line 746
    .end local v8    # "ret":Landroid/os/Bundle;
    .restart local v7    # "ret":Landroid/os/Bundle;
    goto :goto_2

    .line 744
    .end local v1    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v9    # "ssoNode":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private getDeviceCertificate(I)Landroid/app/enterprise/sso/TokenInfo;
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 1987
    new-instance v6, Landroid/app/enterprise/sso/TokenInfo;

    invoke-direct {v6}, Landroid/app/enterprise/sso/TokenInfo;-><init>()V

    .line 1988
    .local v6, "retToken":Landroid/app/enterprise/sso/TokenInfo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1989
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v1

    .line 1990
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1991
    .local v2, "deviceCertNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 1992
    .local v5, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 1993
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1994
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1996
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2000
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_1
    invoke-virtual {v6, v0}, Landroid/app/enterprise/sso/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    .line 2001
    return-object v6
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getExpirationTimeByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    const/4 v2, 0x0

    .line 1897
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1898
    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1899
    const-string v3, "GenericSSOService"

    const-string/jumbo v4, "token is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :cond_1
    :goto_0
    return-object v2

    .line 1902
    :cond_2
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v0

    .line 1903
    .local v0, "protocolType":I
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1904
    .local v1, "responseBundle":Landroid/os/Bundle;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1906
    :pswitch_0
    const-string v2, "SAML_RESPONSE_EXPIRED_TIME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1909
    :pswitch_1
    const-string v2, "OAUTH_RESPONSE_EXPIRES_IN"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1912
    :pswitch_2
    const-string v2, "SAML_RESPONSE_EXPIRED_TIME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1904
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 457
    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    if-nez v2, :cond_0

    .line 458
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 459
    .local v0, "token":J
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "GenericSSOService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 460
    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 461
    new-instance v2, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;-><init>(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    .line 462
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 464
    .end local v0    # "token":J
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    return-object v2
.end method

.method private getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 6
    .param p1, "keystorename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1327
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 1328
    .local v1, "ks":Ljava/security/KeyStore;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1329
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1330
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keystore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is initialized"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1347
    .end local v1    # "ks":Ljava/security/KeyStore;
    :cond_0
    :goto_0
    return-object v1

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In getInstanceOfKeyStore: KeyStore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " initializaiton failed (Android API level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1337
    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: KeyStoreException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/security/KeyStoreException;
    :cond_1
    :goto_1
    move-object v1, v2

    .line 1347
    goto :goto_0

    .line 1338
    :catch_1
    move-exception v0

    .line 1339
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: NullPointerException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1340
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1341
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1342
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1343
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: NoSuchAlgorithmException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1344
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v0

    .line 1345
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: CertificateException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private declared-synchronized getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    .prologue
    .line 1698
    monitor-enter p0

    :try_start_0
    const-string v7, "AndroidKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 1699
    .local v4, "keyStore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1701
    const-string v7, "KnoxSSOKey"

    invoke-virtual {v4, v7}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1702
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 1703
    const-string v7, "GenericSSOService"

    const-string v8, "In getKeyPairFromAndroidKeyStore: Key entry is not available"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1707
    .local v6, "start":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1708
    .local v1, "end":Ljava/util/Calendar;
    const/4 v7, 0x1

    const/16 v8, 0x64

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 1712
    const-string v7, "CN=%s, OU=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "KnoxSSOKey"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1714
    .local v0, "certInfo":Ljava/lang/String;
    new-instance v7, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    const-string v8, "KnoxSSOKey"

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    new-instance v8, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v8, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v5

    .line 1721
    .local v5, "spec":Landroid/security/KeyPairGeneratorSpec;
    const-string v7, "RSA"

    const-string v8, "AndroidKeyStore"

    invoke-static {v7, v8}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    .line 1723
    .local v3, "generator":Ljava/security/KeyPairGenerator;
    invoke-virtual {v3, v5}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1724
    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 1725
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1726
    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key entry is generated for cert "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    .end local v0    # "certInfo":Ljava/lang/String;
    .end local v1    # "end":Ljava/util/Calendar;
    .end local v3    # "generator":Ljava/security/KeyPairGenerator;
    .end local v5    # "spec":Landroid/security/KeyPairGeneratorSpec;
    .end local v6    # "start":Ljava/util/Calendar;
    :cond_1
    :goto_0
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 1735
    const-string v7, "GenericSSOService"

    const-string v8, "In getKeyPairFromAndroidKeyStore: Reading Key entry"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_2
    const-string v7, "KnoxSSOKey"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 1738
    .local v2, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    new-instance v7, Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-virtual {v2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v7

    .line 1728
    .end local v2    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :cond_3
    :try_start_1
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1729
    const-string v7, "GenericSSOService"

    const-string v8, "In getKeyPairFromAndroidKeyStore: Key entry is available"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1698
    .end local v4    # "keyStore":Ljava/security/KeyStore;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 631
    const/4 v8, 0x0

    .line 632
    .local v8, "pkgCert":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 634
    .local v12, "token":J
    :try_start_0
    sget-boolean v14, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 635
    const-string v14, "GenericSSOService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "In getPackageCertForPkgname: User id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v6

    .line 638
    .local v6, "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    const/16 v14, 0x40

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v6, v0, v14, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 640
    .local v9, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v9, :cond_2

    .line 641
    sget-boolean v14, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_1

    .line 642
    const-string v14, "GenericSSOService"

    const-string v15, "In getPackageCertForPkgname: pkgInfo is null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :cond_1
    const/4 v14, 0x0

    .line 657
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 659
    .end local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v14

    .line 645
    .restart local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .restart local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_1
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 646
    .local v11, "signs":[Landroid/content/pm/Signature;
    move-object v2, v11

    .local v2, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v10, v2, v4

    .line 647
    .local v10, "sign":Landroid/content/pm/Signature;
    if-eqz v10, :cond_4

    .line 648
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 657
    .end local v10    # "sign":Landroid/content/pm/Signature;
    :cond_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "signs":[Landroid/content/pm/Signature;
    :goto_2
    move-object v14, v8

    .line 659
    goto :goto_0

    .line 646
    .restart local v2    # "arr$":[Landroid/content/pm/Signature;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .restart local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v10    # "sign":Landroid/content/pm/Signature;
    .restart local v11    # "signs":[Landroid/content/pm/Signature;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 652
    .end local v2    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "sign":Landroid/content/pm/Signature;
    .end local v11    # "signs":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v7

    .line 653
    .local v7, "npe":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v14, "GenericSSOService"

    const-string v15, "In getPackageCertForPkgname: NullPointerException"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 657
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 654
    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 655
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v14, "GenericSSOService"

    const-string v15, "In getPackageCertForPkgname: Exception"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 657
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
.end method

.method private getPackageInfoForPid(II)Ljava/lang/String;
    .locals 2
    .param p1, "pid"    # I
    .param p2, "type"    # I

    .prologue
    .line 663
    packed-switch p2, :pswitch_data_0

    .line 671
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 665
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageNameForPid(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 667
    :pswitch_1
    invoke-static {p1}, Landroid/os/Process;->getUidForPid(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 668
    .local v0, "userId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageNameForPid(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPackageNameForPid(I)Ljava/lang/String;
    .locals 11
    .param p1, "pid"    # I

    .prologue
    const/4 v9, 0x0

    .line 587
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    if-ne p1, v8, :cond_2

    .line 588
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 589
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In getPackageNameForPid:  pid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " package name = android"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    const-string v5, "android"

    .line 621
    :cond_1
    :goto_0
    return-object v5

    .line 593
    :cond_2
    const/4 v5, 0x0

    .line 595
    .local v5, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 597
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 598
    .local v7, "procList":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 599
    .local v3, "iter":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 600
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v0, v8

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v6, v0

    .line 602
    .local v6, "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, p1, :cond_3

    .line 603
    iget-object v5, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 618
    .end local v6    # "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 619
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In getPackageNameForPid:  pid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 607
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v7    # "procList":Ljava/util/List;
    :catch_0
    move-exception v4

    .line 608
    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v8, "GenericSSOService"

    const-string v10, "In getPackageNameForPid: null pointer exception in getPackageNameForPid"

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v9

    .line 611
    goto :goto_0

    .line 612
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 613
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "GenericSSOService"

    const-string v10, "In getPackageNameForPid: Exception in getPackageNameForPid"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v9

    .line 616
    goto :goto_0
.end method

.method private getRefreshTokenByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    const/4 v2, 0x0

    .line 1880
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1881
    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1882
    const-string v3, "GenericSSOService"

    const-string v4, "In getRefreshTokenByProtocolType: token is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    :cond_1
    :goto_0
    return-object v2

    .line 1885
    :cond_2
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v0

    .line 1886
    .local v0, "protocolType":I
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1887
    .local v1, "responseBundle":Landroid/os/Bundle;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1889
    :pswitch_0
    const-string v2, "OAUTH_RESPONSE_REFRESH_TOKEN"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1887
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getRequestConfigFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ssoconfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 910
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 911
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    .line 912
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :goto_0
    return-object v1

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "GenericSSOService"

    const-string v2, "In getSSOConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1131
    const/4 v0, 0x0

    .line 1132
    .local v0, "connection":Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1133
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "connection":Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    .line 1134
    .restart local v0    # "connection":Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1135
    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In getSSOService: SSO service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mUserId:I
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->access$1600(Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->getService()Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1137
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "servicePkgName"    # Ljava/lang/String;

    .prologue
    .line 1109
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1110
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".genericssoconnection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1114
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getSSOServiceIntent: action is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1123
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v1

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "GenericSSOService"

    const-string v3, "In getSSOServiceIntent: NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1123
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1120
    :catch_1
    move-exception v0

    .line 1121
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GenericSSOService"

    const-string v3, "In getSSOServiceIntent: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private final getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 1641
    sget-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKeyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1644
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    if-eqz v5, :cond_0

    .line 1645
    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    monitor-exit v6

    .line 1689
    :goto_0
    return-object v5

    .line 1659
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    .line 1660
    const-string v5, "RSA/ECB/PKCS1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 1661
    .local v4, "wrapCipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1663
    .local v2, "keyFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1664
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 1665
    const-string v5, "GenericSSOService"

    const-string v7, "In getSecretKeyFromAndroidKeyStore: Key file does not exists"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 1668
    .local v1, "key":Ljavax/crypto/SecretKey;
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 1669
    const-string v5, "GenericSSOService"

    const-string v7, "In getSecretKeyFromAndroidKeyStore: Wrapping SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_2
    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B

    move-result-object v3

    .line 1672
    .local v3, "keyWrapped":[B
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 1673
    const-string v5, "GenericSSOService"

    const-string v7, "In getSecretKeyFromAndroidKeyStore: Writing SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_3
    invoke-static {v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->writeKeyData(Ljava/io/File;[B)V

    .line 1676
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 1677
    const-string v5, "GenericSSOService"

    const-string v7, "In getSecretKeyFromAndroidKeyStore: Finished writing SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    .end local v1    # "key":Ljavax/crypto/SecretKey;
    .end local v3    # "keyWrapped":[B
    :cond_4
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 1683
    const-string v5, "GenericSSOService"

    const-string v7, "In getSecretKeyFromAndroidKeyStore: Reading SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_5
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->readKeyData(Ljava/io/File;)[B

    move-result-object v0

    .line 1685
    .local v0, "encryptedKey":[B
    invoke-direct {p0, v4, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    .line 1686
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 1687
    const-string v5, "GenericSSOService"

    const-string v7, "In getSecretKeyFromAndroidKeyStore: Finished reading SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_6
    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    monitor-exit v6

    goto :goto_0

    .line 1690
    .end local v0    # "encryptedKey":[B
    .end local v2    # "keyFile":Ljava/io/File;
    .end local v4    # "wrapCipher":Ljavax/crypto/Cipher;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private getTempConfigFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tmpssoconfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    .prologue
    .line 625
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 627
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private getTokenByRefreshToken(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 1922
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 1924
    .local v11, "userId":I
    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1926
    .local v8, "serviceIntent":Landroid/content/Intent;
    if-nez v8, :cond_2

    .line 1927
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1928
    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: cannot get SSO Service intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v10, v12

    .line 1965
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    .end local v11    # "userId":I
    :cond_1
    :goto_0
    return-object v10

    .line 1933
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    .restart local v11    # "userId":I
    :cond_2
    invoke-direct {p0, v11, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 1934
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v9

    .line 1935
    .local v9, "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v9, :cond_3

    .line 1936
    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: sso service is not ready to use"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v12

    .line 1937
    goto :goto_0

    .line 1940
    :cond_3
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientpackagename"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    .line 1947
    .local v0, "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    invoke-interface {v9, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireTokenByRefreshToken(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v10

    .line 1949
    .local v10, "tokenResponse":Landroid/app/enterprise/sso/TokenInfo;
    if-nez v10, :cond_1

    .line 1950
    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: Fail to acquire valid token from sso service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v10, v12

    .line 1951
    goto :goto_0

    .line 1958
    .end local v0    # "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    .end local v9    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .end local v10    # "tokenResponse":Landroid/app/enterprise/sso/TokenInfo;
    .end local v11    # "userId":I
    :catch_0
    move-exception v7

    .line 1959
    .local v7, "npe":Ljava/lang/NullPointerException;
    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: NullPointerException"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    move-object v10, v12

    .line 1965
    goto :goto_0

    .line 1960
    :catch_1
    move-exception v6

    .line 1961
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: RemoteException"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1962
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 1963
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: Exception"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getTokenConfigFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ssotoken.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 925
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 926
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->initTokenConfigDoc(I)V

    .line 927
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    :goto_0
    return-object v1

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 930
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTokenFromConfigData(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 3747
    :try_start_0
    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 3749
    .local v8, "serviceIntent":Landroid/content/Intent;
    if-nez v8, :cond_2

    .line 3750
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3751
    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: cannot get SSO Service intent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v10, v11

    .line 3792
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-object v10

    .line 3756
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 3757
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v9

    .line 3759
    .local v9, "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v9, :cond_4

    .line 3760
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 3761
    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: sso service is not ready to use"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v10, v11

    .line 3763
    goto :goto_0

    .line 3765
    :cond_4
    const-string v1, "clientpackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3769
    .local v2, "appPkgName":Ljava/lang/String;
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    .line 3774
    .local v0, "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    invoke-interface {v9, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireToken(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v10

    .line 3775
    .local v10, "tokenResponse":Landroid/app/enterprise/sso/TokenInfo;
    if-nez v10, :cond_1

    .line 3776
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 3777
    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: Fail to acquire valid token from sso service"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_5
    move-object v10, v11

    .line 3779
    goto :goto_0

    .line 3785
    .end local v0    # "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    .end local v2    # "appPkgName":Ljava/lang/String;
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    .end local v9    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .end local v10    # "tokenResponse":Landroid/app/enterprise/sso/TokenInfo;
    :catch_0
    move-exception v7

    .line 3786
    .local v7, "npe":Ljava/lang/NullPointerException;
    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: NullPointerException"

    invoke-static {v1, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    move-object v10, v11

    .line 3792
    goto :goto_0

    .line 3787
    :catch_1
    move-exception v6

    .line 3788
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: RemoteException"

    invoke-static {v1, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3789
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 3790
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: Exception"

    invoke-static {v1, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getTokenFromGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;

    .prologue
    .line 3530
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3531
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3532
    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: appPkgName is null or empty string"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3535
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3537
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3538
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3539
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3540
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3541
    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    :cond_1
    const/4 v3, 0x0

    .line 3554
    :goto_0
    return-object v3

    .line 3545
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3546
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3547
    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: appPkgName is authenticator packagename, we return share token back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserAndDeviceCertificatesForUser(I)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v3

    goto :goto_0

    .line 3551
    :cond_4
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 3552
    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: appPkgName is not application packagename, we return app token back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    :cond_5
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v3

    goto :goto_0
.end method

.method private getTokenFromLocalCache(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    .line 3797
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 3799
    .local v6, "userId":I
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 3800
    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In getTokenFromLocalCache: get Token from cache for user Id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    :cond_0
    :try_start_0
    const-string v7, "clientpackagename"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3806
    .local v1, "appPkgName":Ljava/lang/String;
    invoke-direct {p0, v6, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v4

    .line 3808
    .local v4, "tokenCached":Landroid/app/enterprise/sso/TokenInfo;
    if-eqz v4, :cond_3

    .line 3809
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAccessTokenByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3810
    .local v0, "accessTokenValue":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getExpirationTimeByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;

    move-result-object v5

    .line 3811
    .local v5, "tokenExpirationTime":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->hasTokenExpired(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3827
    .end local v0    # "accessTokenValue":Ljava/lang/String;
    .end local v1    # "appPkgName":Ljava/lang/String;
    .end local v4    # "tokenCached":Landroid/app/enterprise/sso/TokenInfo;
    .end local v5    # "tokenExpirationTime":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 3815
    .restart local v0    # "accessTokenValue":Ljava/lang/String;
    .restart local v1    # "appPkgName":Ljava/lang/String;
    .restart local v4    # "tokenCached":Landroid/app/enterprise/sso/TokenInfo;
    .restart local v5    # "tokenExpirationTime":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->hasTokenExpired(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3816
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 3817
    const-string v7, "GenericSSOService"

    const-string v8, "In getTokenFromLocalCache: token in cache expired, so getTokenByRefreshToken is called"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenByRefreshToken(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3820
    .local v3, "info":Landroid/app/enterprise/sso/TokenInfo;
    if-eqz v3, :cond_3

    move-object v4, v3

    .line 3821
    goto :goto_0

    .line 3824
    .end local v0    # "accessTokenValue":Ljava/lang/String;
    .end local v1    # "appPkgName":Ljava/lang/String;
    .end local v3    # "info":Landroid/app/enterprise/sso/TokenInfo;
    .end local v4    # "tokenCached":Landroid/app/enterprise/sso/TokenInfo;
    .end local v5    # "tokenExpirationTime":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3825
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "GenericSSOService"

    const-string v8, "In getTokenFromLocalCache: Exception"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3827
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getUserAndDeviceCertificatesForUser(I)Landroid/app/enterprise/sso/TokenInfo;
    .locals 12
    .param p1, "userId"    # I

    .prologue
    const/4 v11, 0x1

    .line 3440
    new-instance v6, Landroid/app/enterprise/sso/TokenInfo;

    invoke-direct {v6}, Landroid/app/enterprise/sso/TokenInfo;-><init>()V

    .line 3441
    .local v6, "retToken":Landroid/app/enterprise/sso/TokenInfo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3442
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v1

    .line 3443
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 3444
    .local v7, "userCertNode":Lorg/w3c/dom/Node;
    if-eqz v7, :cond_1

    .line 3445
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 3446
    .local v5, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 3447
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 3448
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v8, v11, :cond_0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3450
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string/jumbo v10, "value"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3446
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3456
    .end local v3    # "i":I
    .end local v4    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_1
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 3457
    .local v2, "deviceCertNode":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_3

    .line 3458
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 3459
    .restart local v5    # "nodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 3460
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 3461
    .restart local v4    # "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v8, v11, :cond_2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3463
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string/jumbo v10, "value"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3469
    .end local v3    # "i":I
    .end local v4    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3470
    const/4 v6, 0x0

    .line 3473
    .end local v6    # "retToken":Landroid/app/enterprise/sso/TokenInfo;
    :goto_2
    return-object v6

    .line 3472
    .restart local v6    # "retToken":Landroid/app/enterprise/sso/TokenInfo;
    :cond_4
    invoke-virtual {v6, v0}, Landroid/app/enterprise/sso/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method private getUserCertificate(I)Landroid/app/enterprise/sso/TokenInfo;
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 1969
    new-instance v5, Landroid/app/enterprise/sso/TokenInfo;

    invoke-direct {v5}, Landroid/app/enterprise/sso/TokenInfo;-><init>()V

    .line 1970
    .local v5, "retToken":Landroid/app/enterprise/sso/TokenInfo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1971
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v1

    .line 1972
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 1973
    .local v6, "userCertNode":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 1974
    .local v4, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 1975
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1976
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1978
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1982
    .end local v3    # "node":Lorg/w3c/dom/Node;
    :cond_1
    invoke-virtual {v5, v0}, Landroid/app/enterprise/sso/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    .line 1983
    return-object v5
.end method

.method private getUserId()I
    .locals 5

    .prologue
    .line 938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 939
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 940
    .local v1, "userId":I
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 941
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getUserId: The uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_0
    return v1
.end method

.method private getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "solution"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1178
    if-nez p1, :cond_1

    .line 1179
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1180
    const-string v0, "GenericSSOService"

    const-string v1, "In getWhitelistAppNode: In getWhitelistAppNode: solution node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_0
    const/4 v0, 0x0

    .line 1193
    :goto_0
    return-object v0

    .line 1184
    :cond_1
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1185
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In getWhitelistAppNode: In getWhitelistAppNode: child node whitelistpackage is searched for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string/jumbo v3, "servicepackagename"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_2
    const-string/jumbo v0, "whitelistpackage"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private hasTokenExpired(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "expireOn"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 1791
    iget-wide v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-wide v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 1792
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->setInitTime()V

    .line 1794
    :cond_1
    const/4 v3, 0x1

    .line 1796
    .local v3, "hasExipired":Z
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    add-long v0, v6, v8

    .line 1798
    .local v0, "currentUTCTime":J
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 1799
    const-string v6, "In hasTokenExpired: SystemClock.elapsedRealtime()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_2
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 1802
    const-string v6, "In hasTokenExpired: initElapsedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :cond_3
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 1805
    const-string v6, "In hasTokenExpired: initUTCTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_4
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 1809
    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentUTCtime vs expireOn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_5
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1812
    .local v4, "expireTime":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_6

    const/4 v3, 0x1

    .line 1813
    :goto_0
    if-eqz v3, :cond_7

    .line 1814
    const-string v6, "GenericSSOService"

    const-string v7, "In hasTokenExpired: the token obtained has expired"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    .end local v0    # "currentUTCTime":J
    .end local v4    # "expireTime":J
    :goto_1
    return v3

    .line 1812
    .restart local v0    # "currentUTCTime":J
    .restart local v4    # "expireTime":J
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .line 1816
    :cond_7
    const-string v6, "GenericSSOService"

    const-string v7, "In hasTokenExpired: the token obtained is still valid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1817
    .end local v0    # "currentUTCTime":J
    .end local v4    # "expireTime":J
    :catch_0
    move-exception v2

    .line 1818
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "GenericSSOService"

    const-string v7, "In hasTokenExpired: Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private initKeyStore()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1370
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v2, :cond_0

    .line 1371
    const-string v2, "TIMAKeyStore"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    .line 1385
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timakeystore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1386
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1389
    .local v0, "keyFile":Ljava/io/File;
    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 1390
    .local v1, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v1, v6}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1396
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "KnoxSSOKey"

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1398
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1399
    const-string v2, "GenericSSOService"

    const-string v3, "In initKeyStore: Starting doing the migration from AndroidKeyStore to TIMA keystore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    .line 1407
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1408
    const-string v2, "GenericSSOService"

    const-string v3, "In initKeyStore: Saving the secretKey to TIMA 3.0 KeyStore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_2
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    const-string v3, "GenericSSOService"

    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    const-string/jumbo v5, "password_for_secret_key"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 1417
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1418
    const-string v2, "GenericSSOService"

    const-string v3, "In initKeyStore: Cleaning up variables from memory, as well as keypair and keyfile from storage."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_3
    sput-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    .line 1422
    sput-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    .line 1424
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1425
    const-string v2, "KnoxSSOKey"

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 1429
    .end local v0    # "keyFile":Ljava/io/File;
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    :cond_4
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v2, :cond_5

    .line 1430
    const-string v2, "AndroidKeyStore"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    .line 1432
    :cond_5
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v2, :cond_7

    .line 1433
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 1434
    const-string v2, "GenericSSOService"

    const-string v3, "In initKeyStore: no KeyStore instance is running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_6
    :goto_0
    return-void

    .line 1436
    :cond_7
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 1437
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In initKeyStore: Keystore Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v4}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is running"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initRequestConfigDoc(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 807
    const/4 v6, 0x0

    .line 808
    .local v6, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 810
    .local v4, "filepath":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 812
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 814
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 816
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 817
    :cond_0
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 818
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In initRequestConfigDoc: ssoconfig.xml doesn\'t exist for userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", an empty config file is created"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 823
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string v8, "configuration"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 824
    .local v5, "root":Lorg/w3c/dom/Element;
    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 825
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    .line 826
    new-instance v8, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    invoke-direct {v8, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 835
    .end local v5    # "root":Lorg/w3c/dom/Element;
    :goto_0
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 836
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is loaded for userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    :cond_2
    if-eqz v6, :cond_3

    .line 846
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 853
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :cond_3
    :goto_1
    return-void

    .line 828
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_4
    :try_start_2
    const-string v8, "GenericSSOService"

    const-string v9, "In initRequestConfigDoc: ssoconfig.xml does exist"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 830
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 831
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    .line 832
    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    invoke-direct {v9, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 848
    :catch_0
    move-exception v3

    .line 849
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 837
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 838
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v8, "GenericSSOService"

    const-string v9, "In initRequestConfigDoc: IOException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 845
    if-eqz v6, :cond_3

    .line 846
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 848
    :catch_2
    move-exception v3

    .line 849
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 839
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 840
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    :try_start_6
    const-string v8, "GenericSSOService"

    const-string v9, "In initRequestConfigDoc: ParserConfigurationException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 845
    if-eqz v6, :cond_3

    .line 846
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 848
    :catch_4
    move-exception v3

    .line 849
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 841
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 842
    .local v3, "e":Lorg/xml/sax/SAXException;
    :goto_4
    :try_start_8
    const-string v8, "GenericSSOService"

    const-string v9, "In initRequestConfigDoc: SAXException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 845
    if-eqz v6, :cond_3

    .line 846
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 848
    :catch_6
    move-exception v3

    .line 849
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 844
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 845
    :goto_5
    if-eqz v6, :cond_5

    .line 846
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 850
    :cond_5
    :goto_6
    throw v8

    .line 848
    :catch_7
    move-exception v3

    .line 849
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 844
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 841
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 839
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 837
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private initTokenConfigDoc(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 859
    const/4 v6, 0x0

    .line 860
    .local v6, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 862
    .local v4, "filepath":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 864
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 866
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 868
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 869
    :cond_0
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 870
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In initTokenConfigDoc: ssotoken.xml doesn\'t exist for userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", an empty config file is created"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 875
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v8, "ssotoken"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 876
    .local v5, "root":Lorg/w3c/dom/Element;
    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 877
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    .line 878
    new-instance v8, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    invoke-direct {v8, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    .line 887
    .end local v5    # "root":Lorg/w3c/dom/Element;
    :goto_0
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 888
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In initTokenConfigDoc: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is loaded for userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    :cond_2
    if-eqz v6, :cond_3

    .line 899
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 906
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :cond_3
    :goto_1
    return-void

    .line 880
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_4
    :try_start_2
    const-string v8, "GenericSSOService"

    const-string v9, "In initTokenConfigDoc: ssotoken.xml does exist"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 882
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 883
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    .line 884
    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    invoke-direct {v9, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 901
    :catch_0
    move-exception v3

    .line 902
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 890
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 891
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v8, "GenericSSOService"

    const-string v9, "In initTokenConfigDoc: IOException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 898
    if-eqz v6, :cond_3

    .line 899
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 901
    :catch_2
    move-exception v3

    .line 902
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 892
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 893
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    :try_start_6
    const-string v8, "GenericSSOService"

    const-string v9, "In initTokenConfigDoc: ParserConfigurationException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 898
    if-eqz v6, :cond_3

    .line 899
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 901
    :catch_4
    move-exception v3

    .line 902
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 894
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 895
    .local v3, "e":Lorg/xml/sax/SAXException;
    :goto_4
    :try_start_8
    const-string v8, "GenericSSOService"

    const-string v9, "In initTokenConfigDoc: SAXException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 898
    if-eqz v6, :cond_3

    .line 899
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 901
    :catch_6
    move-exception v3

    .line 902
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 897
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 898
    :goto_5
    if-eqz v6, :cond_5

    .line 899
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 903
    :cond_5
    :goto_6
    throw v8

    .line 901
    :catch_7
    move-exception v3

    .line 902
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 897
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 894
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 892
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 890
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private installedServiceIsPermitted(ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1076
    :try_start_0
    const-string/jumbo v6, "servicepackagename"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1078
    .local v3, "servicePkgName":Ljava/lang/String;
    const-string/jumbo v6, "servicepackagesignature"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1080
    .local v2, "servicePkgCert":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1081
    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In installedServiceIsPermitted: service package cert is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    .end local v2    # "servicePkgCert":Ljava/lang/String;
    .end local v3    # "servicePkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 1084
    .restart local v2    # "servicePkgCert":Ljava/lang/String;
    .restart local v3    # "servicePkgName":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1086
    .local v1, "installedServicePkgCert":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1087
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1088
    const-string v6, "GenericSSOService"

    const-string v7, "In installedServiceIsPermitted: service package cert is matched between configured and installed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1101
    .end local v1    # "installedServicePkgCert":Ljava/lang/String;
    .end local v2    # "servicePkgCert":Ljava/lang/String;
    .end local v3    # "servicePkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1102
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "GenericSSOService"

    const-string v6, "In installedServiceIsPermitted: Exception"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 1104
    goto :goto_0

    .line 1092
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "installedServicePkgCert":Ljava/lang/String;
    .restart local v2    # "servicePkgCert":Ljava/lang/String;
    .restart local v3    # "servicePkgName":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 1093
    const-string v4, "GenericSSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In installedServiceIsPermitted: Fail to pass the servicePkg cert check: (ondevice vs config) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move v4, v5

    .line 1098
    goto :goto_0
.end method

.method private isCallingMDMMatch(II)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "mdmUid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2342
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    .line 2343
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    const/4 v2, 0x0

    .line 2344
    .local v2, "enrolledVendor":Lorg/w3c/dom/Node;
    const/4 v3, 0x0

    .line 2345
    .local v3, "mdmUidNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_4

    .line 2346
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 2347
    if-nez v2, :cond_1

    .line 2349
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 2350
    const-string v6, "GenericSSOService"

    const-string v7, "In isCallingMDMMatch: the enrolledVendor is null, return true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v2    # "enrolledVendor":Lorg/w3c/dom/Node;
    .end local v3    # "mdmUidNode":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    return v4

    .line 2354
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v2    # "enrolledVendor":Lorg/w3c/dom/Node;
    .restart local v3    # "mdmUidNode":Lorg/w3c/dom/Node;
    :cond_1
    const-string/jumbo v6, "mdmuid"

    invoke-direct {p0, v2, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 2356
    if-nez v3, :cond_3

    .line 2357
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 2358
    const-string v4, "GenericSSOService"

    const-string v6, "In isCallingMDMMatch: the mDmUidNode is null, return false"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v5

    .line 2360
    goto :goto_0

    .line 2362
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    .line 2363
    goto :goto_0

    .line 2369
    :cond_4
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 2370
    const-string v6, "GenericSSOService"

    const-string v7, "In isCallingMDMMatch: the configDoc is null, return true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2374
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v2    # "enrolledVendor":Lorg/w3c/dom/Node;
    .end local v3    # "mdmUidNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v1

    .line 2375
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "GenericSSOService"

    const-string v6, "In isCallingMDMMatch: NullPointerException"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 2377
    goto :goto_0
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1127
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private isNetworkAvailable()Z
    .locals 8

    .prologue
    .line 4001
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4002
    .local v4, "token1":J
    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 4004
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4005
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 4007
    .local v2, "isConnected":Z
    :goto_0
    if-eqz v0, :cond_0

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 4008
    const-string v3, "GenericSSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network type detected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4009
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4010
    return v2

    .line 4005
    .end local v2    # "isConnected":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNullOrEmpty(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/os/Bundle;

    .prologue
    .line 581
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    :cond_0
    const/4 v0, 0x1

    .line 583
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 575
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 576
    :cond_0
    const/4 v0, 0x1

    .line 577
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadKey(Ljava/lang/String;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1596
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    if-eqz v2, :cond_1

    .line 1597
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1598
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: SecretKey is already loaded. It\'s "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_0
    :goto_0
    return-void

    .line 1603
    :cond_1
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v2, :cond_2

    .line 1604
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1605
    const-string v2, "GenericSSOService"

    const-string v3, "In loadKey: loadkey() failed, because keystore is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1610
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1611
    .local v0, "token":J
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timakeystore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1612
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1613
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    .line 1614
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    const-string/jumbo v4, "password_for_secret_key"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v3, v4, v5}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 1616
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1617
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: keystore doesn\'t contain key with alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", so a new one is stored"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_3
    :goto_1
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1625
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: secreteKey got from TIMAKeystore is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :cond_4
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1621
    :cond_5
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    const-string/jumbo v3, "password_for_secret_key"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    goto :goto_1

    .line 1627
    :cond_6
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidkeystore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1628
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    .line 1629
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1631
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: secreteKey protected by AndroidKeyStore is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private nextSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1851
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1852
    .local v0, "random":Ljava/security/SecureRandom;
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x82

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I
    .locals 10
    .param p1, "userId"    # I
    .param p2, "servicePackageName"    # Ljava/lang/String;
    .param p3, "ssoConfig"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 4016
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 4017
    .local v4, "serviceIntent":Landroid/content/Intent;
    if-nez v4, :cond_2

    .line 4018
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 4019
    const-string v7, "GenericSSOService"

    const-string v8, "In pushAuthenticatorConfig: cannot get SSO Service intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v6

    .line 4056
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return v1

    .line 4024
    .restart local v4    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4025
    .local v2, "identity":J
    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 4026
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v5

    .line 4028
    .local v5, "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v5, :cond_4

    .line 4029
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 4030
    const-string v7, "GenericSSOService"

    const-string v8, "In pushAuthenticatorConfig: sso service is not ready to use"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v6

    .line 4032
    goto :goto_0

    .line 4035
    :cond_4
    invoke-interface {v5, p3}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    move-result v1

    .line 4036
    .local v1, "ret":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4038
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 4039
    if-nez v1, :cond_5

    .line 4040
    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In pushAuthenticatorConfig: sso vendor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " successfully complete this request"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4051
    .end local v1    # "ret":I
    .end local v2    # "identity":J
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    .end local v5    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    :catch_0
    move-exception v0

    .line 4052
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "GenericSSOService"

    const-string v8, "In pushAuthenticatorConfig: RemoteException"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    move v1, v6

    .line 4056
    goto :goto_0

    .line 4044
    .restart local v1    # "ret":I
    .restart local v2    # "identity":J
    .restart local v4    # "serviceIntent":Landroid/content/Intent;
    .restart local v5    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    :cond_5
    :try_start_1
    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In pushAuthenticatorConfig: sso vendor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fails to complete this request with error code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4053
    .end local v1    # "ret":I
    .end local v2    # "identity":J
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    .end local v5    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    :catch_1
    move-exception v0

    .line 4054
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "GenericSSOService"

    const-string v8, "In pushAuthenticatorConfig: Exception"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private reAuthenInAuthenticator(I)I
    .locals 14
    .param p1, "userId"    # I

    .prologue
    .line 2962
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v3

    .line 2963
    .local v3, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 2964
    .local v8, "ssoNode":Lorg/w3c/dom/Node;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2965
    .local v2, "configData":Landroid/os/Bundle;
    const-string/jumbo v12, "servicepackagename"

    invoke-direct {p0, v8, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 2968
    .local v11, "vendorAuthPkgName":Ljava/lang/String;
    const-string/jumbo v12, "servicepackagename"

    invoke-virtual {v2, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2970
    const/4 v10, 0x0

    .line 2971
    .local v10, "vendorAuthPkgCert":Ljava/lang/String;
    const-string/jumbo v12, "servicepackagesignature"

    invoke-direct {p0, v8, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 2973
    const-string/jumbo v12, "servicepackagesignature"

    invoke-direct {p0, v8, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 2976
    const-string/jumbo v12, "servicepackagesignature"

    invoke-virtual {v2, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 2981
    sget-boolean v12, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_1

    .line 2982
    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: Fail to pass the service package cert check"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    :cond_1
    const/16 v12, -0xd

    .line 3019
    .end local v2    # "configData":Landroid/os/Bundle;
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v10    # "vendorAuthPkgCert":Ljava/lang/String;
    .end local v11    # "vendorAuthPkgName":Ljava/lang/String;
    :goto_0
    return v12

    .line 2987
    .restart local v2    # "configData":Landroid/os/Bundle;
    .restart local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .restart local v10    # "vendorAuthPkgCert":Ljava/lang/String;
    .restart local v11    # "vendorAuthPkgName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 2988
    .local v6, "serviceIntent":Landroid/content/Intent;
    if-nez v6, :cond_4

    .line 2989
    sget-boolean v12, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_3

    .line 2990
    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: cannot get SSO Service intent"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    :cond_3
    const/4 v12, -0x1

    goto :goto_0

    .line 2994
    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 2995
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v9

    .line 2996
    .local v9, "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v9, :cond_6

    .line 2997
    sget-boolean v12, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_5

    .line 2998
    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: sso service is not ready to use"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    :cond_5
    const/4 v12, -0x1

    goto :goto_0

    .line 3002
    :cond_6
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3003
    .local v0, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v1, 0x0

    .line 3004
    .local v1, "appPkgName":Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 3005
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Node;

    const-string v13, "clientpackagename"

    invoke-direct {p0, v12, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 3009
    :cond_7
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 3011
    .local v7, "ssoConfig":Landroid/os/Bundle;
    invoke-interface {v9, v7}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->forceAuthenticate(Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    goto :goto_0

    .line 3012
    .end local v0    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v1    # "appPkgName":Ljava/lang/String;
    .end local v2    # "configData":Landroid/os/Bundle;
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v6    # "serviceIntent":Landroid/content/Intent;
    .end local v7    # "ssoConfig":Landroid/os/Bundle;
    .end local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v9    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .end local v10    # "vendorAuthPkgCert":Ljava/lang/String;
    .end local v11    # "vendorAuthPkgName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 3013
    .local v5, "npe":Ljava/lang/NullPointerException;
    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: NullPointerException"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3019
    .end local v5    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v12, -0x1

    goto :goto_0

    .line 3014
    :catch_1
    move-exception v4

    .line 3015
    .local v4, "e":Landroid/os/RemoteException;
    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: RemoteException"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3016
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v4

    .line 3017
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: Exception"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static readKeyData(Ljava/io/File;)[B
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1769
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1770
    const-string v4, "GenericSSOService"

    const-string v5, "In readKeyData: Reading key data from a file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1774
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1775
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 1777
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 1778
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1783
    .end local v0    # "buffer":[B
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "count":I
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v4

    .line 1781
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "count":I
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1783
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    return-object v4
.end method

.method private registerReceiverForKeyClear()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 471
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 472
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    const-string v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;

    invoke-direct {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;-><init>()V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 476
    return-void
.end method

.method private saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 10
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 991
    const/4 v3, 0x0

    .line 992
    .local v3, "stream":Ljava/io/FileOutputStream;
    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 994
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v6

    .line 996
    .local v6, "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 998
    .local v5, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v4, p2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 1000
    .local v2, "source":Ljavax/xml/transform/dom/DOMSource;
    if-nez p1, :cond_0

    .line 1001
    :try_start_1
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    .end local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-direct {v2}, Ljavax/xml/transform/dom/DOMSource;-><init>()V

    .line 1005
    .restart local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_0
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 1006
    .local v1, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v5, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1007
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 1019
    .end local v1    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .end local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v6    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1020
    return-void

    .line 1003
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v6    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    :cond_0
    :try_start_3
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    .end local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto :goto_0

    .line 1008
    .end local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .end local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v6    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    :goto_2
    :try_start_4
    const-string v7, "GenericSSOService"

    const-string v9, "In getTokenConfigForUserId: TransformerConfigurationException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1019
    .end local v0    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catchall_0
    move-exception v7

    :goto_3
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 1010
    :catch_1
    move-exception v0

    .line 1011
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    :goto_4
    :try_start_5
    const-string v7, "GenericSSOService"

    const-string v9, "In getTokenConfigForUserId: TransformerException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1012
    .end local v0    # "e":Ljavax/xml/transform/TransformerException;
    :catch_2
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_5
    const-string v7, "GenericSSOService"

    const-string v9, "In getTokenConfigForUserId: FileNotFoundException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1014
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 1015
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_6
    const-string v7, "GenericSSOService"

    const-string v9, "In getTokenConfigForUserId: NullPointerException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1016
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    const-string v7, "GenericSSOService"

    const-string v9, "In getTokenConfigForUserId: IOException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1019
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v6    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1016
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 1014
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 1012
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 1010
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1008
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private setInitTime()V
    .locals 6

    .prologue
    .line 1829
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    .line 1830
    new-instance v2, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;-><init>(Lcom/android/server/enterprise/sso/GenericSSOService;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1832
    :try_start_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    .line 1833
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 1835
    .local v0, "countDownTimeout":Z
    if-nez v0, :cond_0

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1836
    const-string v2, "GenericSSOService"

    const-string v3, "In setInitTime: CountDownLatch return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1841
    .end local v0    # "countDownTimeout":Z
    :cond_0
    :goto_0
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1842
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setInitTime: UTC time when service is up is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :cond_1
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1845
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setInitTime: elapsedRealtime() when service is up is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_2
    return-void

    .line 1837
    :catch_0
    move-exception v1

    .line 1838
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setInitTime: exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setWhitelistAllAppsState(ZI)Z
    .locals 6
    .param p1, "state"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 2415
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2416
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-static {v4, v5, v1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    .line 2418
    .local v0, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2419
    return v0

    .line 2416
    .end local v0    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private stopAuthenticatorApplication(Ljava/lang/String;I)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2017
    if-nez p1, :cond_1

    .line 2018
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 2019
    const-string v10, "GenericSSOService"

    const-string v11, "In stopAuthenticatorApplication: packageName is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    :cond_0
    :goto_0
    return-void

    .line 2022
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2024
    .local v8, "token":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2027
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11, p2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v6

    .line 2029
    .local v6, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 2032
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2033
    .local v7, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v4, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2034
    .local v4, "origInt":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2035
    .local v1, "cmp":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 2036
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2038
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2039
    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->removeTask(I)Z

    .line 2040
    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In stopAuthenticatorApplication: the task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "has been removed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2045
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "cmp":Landroid/content/ComponentName;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "origInt":Landroid/content/Intent;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v7    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :catch_0
    move-exception v2

    .line 2046
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In stopAuthenticatorApplication: could not stop app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method private unRegisterInAuthenticator(ILjava/lang/String;Landroid/os/Bundle;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "vendorAuthPkgName"    # Ljava/lang/String;
    .param p3, "ssoConfig"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 3026
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 3027
    .local v2, "serviceIntent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 3028
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 3029
    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator: cannot get SSO Service intent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 3033
    .restart local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 3034
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v3

    .line 3035
    .local v3, "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v3, :cond_2

    .line 3036
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 3037
    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator: sso service is not ready to use"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 3042
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    .end local v3    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    :catch_0
    move-exception v1

    .line 3043
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator: NullPointerException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3041
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    .restart local v2    # "serviceIntent":Landroid/content/Intent;
    .restart local v3    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    :cond_2
    :try_start_1
    invoke-interface {v3, p3}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->unregister(Landroid/os/Bundle;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    goto :goto_0

    .line 3044
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    .end local v3    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    :catch_1
    move-exception v0

    .line 3045
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator: RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3046
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 3047
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unregisterByAuthenticator(I)I
    .locals 17
    .param p1, "userId"    # I

    .prologue
    .line 3053
    const/4 v10, 0x0

    .line 3055
    .local v10, "ret":I
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v5

    .line 3056
    .local v5, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 3057
    .local v12, "ssoNode":Lorg/w3c/dom/Node;
    if-nez v12, :cond_0

    move v15, v10

    .line 3102
    .end local v5    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v12    # "ssoNode":Lorg/w3c/dom/Node;
    :goto_0
    return v15

    .line 3060
    .restart local v5    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v12    # "ssoNode":Lorg/w3c/dom/Node;
    :cond_0
    const-string/jumbo v15, "servicepackagename"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v14

    .line 3063
    .local v14, "vendorAuthPkgName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 3064
    .local v13, "vendorAuthPkgCert":Ljava/lang/String;
    const-string/jumbo v15, "servicepackagesignature"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 3066
    const-string/jumbo v15, "servicepackagesignature"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 3070
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3071
    .local v4, "configData":Landroid/os/Bundle;
    const-string/jumbo v15, "servicepackagename"

    invoke-virtual {v4, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    const-string/jumbo v15, "servicepackagesignature"

    invoke-virtual {v4, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3076
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 3077
    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_2

    .line 3078
    const-string v15, "GenericSSOService"

    const-string v16, "In unregisterByAuthenticator: Fail to pass the service package cert check"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    :cond_2
    const/16 v15, -0xd

    goto :goto_0

    .line 3083
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3084
    .local v2, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v3, 0x0

    .line 3085
    .local v3, "appPkgName":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_4

    .line 3086
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Node;

    const-string v16, "clientpackagename"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 3090
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 3091
    .local v11, "ssoConfig":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3092
    .local v8, "identity":J
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v14, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->unRegisterInAuthenticator(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v10

    .line 3094
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v3    # "appPkgName":Ljava/lang/String;
    .end local v4    # "configData":Landroid/os/Bundle;
    .end local v5    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v8    # "identity":J
    .end local v11    # "ssoConfig":Landroid/os/Bundle;
    .end local v12    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v13    # "vendorAuthPkgCert":Ljava/lang/String;
    .end local v14    # "vendorAuthPkgName":Ljava/lang/String;
    :goto_1
    move v15, v10

    .line 3102
    goto/16 :goto_0

    .line 3095
    :catch_0
    move-exception v7

    .line 3096
    .local v7, "npe":Ljava/lang/NullPointerException;
    const-string v15, "GenericSSOService"

    const-string v16, "In unregisterByAuthenticator: NullPointerException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3097
    const/4 v10, -0x1

    .line 3101
    goto :goto_1

    .line 3098
    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v6

    .line 3099
    .local v6, "e":Ljava/lang/Exception;
    const-string v15, "GenericSSOService"

    const-string v16, "In unregisterByAuthenticator: Exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3100
    const/4 v10, -0x1

    goto :goto_1
.end method

.method private unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "wrapCipher"    # Ljavax/crypto/Cipher;
    .param p2, "keyBlob"    # [B
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 1752
    const/4 v0, 0x4

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1753
    const-string v0, "AES"

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "configDoc"    # Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    .prologue
    .line 953
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->update()V
    invoke-static {p2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 954
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 955
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 956
    const-string v1, "GenericSSOService"

    const-string v2, "In updateCacheAndFile: updated sso config doc is updated in requestConfigXMLDocs array"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, "filepath":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 961
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 962
    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In updateCacheAndFile: updated sso request config doc is saved at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_1
    return-void
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "configDoc"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    .prologue
    .line 974
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->update()V
    invoke-static {p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1500(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    .line 975
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 976
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 977
    const-string v1, "GenericSSOService"

    const-string v2, "In updateCacheAndFile: updated sso token doc is updated in tokenConfigXMLDocs array"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, "filepath":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 982
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 983
    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In updateCacheAndFile: updated sso token config doc is saved at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_1
    return-void
.end method

.method private vendorPermissionCheck(ILjava/lang/String;)Z
    .locals 13
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 3479
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    .line 3480
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 3481
    .local v5, "ssoNode":Lorg/w3c/dom/Node;
    const-string/jumbo v10, "servicepackagename"

    invoke-direct {p0, v5, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 3483
    .local v6, "vendorAuthPkg":Lorg/w3c/dom/Node;
    const/4 v8, 0x0

    .line 3485
    .local v8, "vendorAuthPkgName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 3486
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 3488
    :cond_0
    const-string/jumbo v10, "servicepackagesignature"

    invoke-direct {p0, v5, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-nez v10, :cond_2

    .line 3490
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3522
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v5    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v6    # "vendorAuthPkg":Lorg/w3c/dom/Node;
    .end local v8    # "vendorAuthPkgName":Ljava/lang/String;
    :cond_1
    :goto_0
    return v9

    .line 3494
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v5    # "ssoNode":Lorg/w3c/dom/Node;
    .restart local v6    # "vendorAuthPkg":Lorg/w3c/dom/Node;
    .restart local v8    # "vendorAuthPkgName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v10, "servicepackagesignature"

    invoke-direct {p0, v5, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 3497
    .local v7, "vendorAuthPkgCert":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3499
    .local v4, "packageCert":Ljava/lang/String;
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_1

    .line 3509
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v4    # "packageCert":Ljava/lang/String;
    .end local v5    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v6    # "vendorAuthPkg":Lorg/w3c/dom/Node;
    .end local v7    # "vendorAuthPkgCert":Ljava/lang/String;
    .end local v8    # "vendorAuthPkgName":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 3510
    .local v3, "isSharedDevice":Z
    iget-object v10, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v11, "enterprise_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3511
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v2, :cond_4

    .line 3512
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 3513
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v3

    .line 3514
    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SharedDevice: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    :cond_4
    if-eqz v3, :cond_5

    const-string v10, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 3520
    :cond_5
    const-string v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UserId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "pkgName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 3504
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "isSharedDevice":Z
    :catch_0
    move-exception v1

    .line 3505
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In vendorPermissionCheck: exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B
    .locals 2
    .param p1, "wrapCipher"    # Ljavax/crypto/Cipher;
    .param p2, "key"    # Ljavax/crypto/SecretKey;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 1745
    const/4 v0, 0x3

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1746
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method

.method private static writeKeyData(Ljava/io/File;[B)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1758
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1759
    const-string v1, "GenericSSOService"

    const-string v2, "In writeKeyData: Writing key data to a file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1762
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1764
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1766
    return-void

    .line 1764
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method


# virtual methods
.method public _unenrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 2449
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2450
    .local v3, "mdmUid":I
    invoke-direct {p0, p3, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2451
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 2452
    const-string v8, "GenericSSOService"

    const-string v9, "In unenrollSSOVendor: MDM uid is not matched"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    :cond_0
    const/16 v5, -0xa

    .line 2500
    :cond_1
    :goto_0
    return v5

    .line 2455
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2456
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 2457
    const-string v8, "GenericSSOService"

    const-string v9, "In unenrollSSOVendor: authenticatorPkgName is null or empty"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :cond_3
    const/4 v5, -0x3

    goto :goto_0

    .line 2462
    :cond_4
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    .line 2463
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 2464
    .local v2, "enrolledVendor":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_5

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOPackageName()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1900(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 2466
    :cond_5
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_6

    .line 2467
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In unenrollSSOVendor: this authenticator "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not enrolled"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :cond_6
    const/4 v5, -0x6

    goto :goto_0

    .line 2472
    :cond_7
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->clearConfigAndTokenForAuthenticator(I)I

    move-result v5

    .line 2473
    .local v5, "ret":I
    if-eqz v5, :cond_8

    .line 2474
    const-string v8, "GenericSSOService"

    const-string v9, "In unenrollSSOVendor: failed clearConfigAndTokenFor Authenticator"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    const/16 v5, -0x10

    goto :goto_0

    .line 2478
    :cond_8
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V

    .line 2479
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->stopAuthenticatorApplication(Ljava/lang/String;I)V

    .line 2482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2483
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "genericsso.INTENT.ACTION.tokens_cleared"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2484
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2487
    const/16 v8, 0x64

    if-lt p3, v8, :cond_1

    .line 2488
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2489
    .local v4, "message":Landroid/os/Message;
    iput p3, v4, Landroid/os/Message;->arg1:I

    .line 2490
    const/4 v8, 0x1

    iput v8, v4, Landroid/os/Message;->arg2:I

    .line 2491
    iput-object p2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2492
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 2495
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v2    # "enrolledVendor":Lorg/w3c/dom/Node;
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "ret":I
    .end local v6    # "token":J
    :catch_0
    move-exception v1

    .line 2496
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v8, "GenericSSOService"

    const-string v9, "In unenrollSSOVendor: NullPointerException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2500
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2497
    :catch_1
    move-exception v1

    .line 2498
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "GenericSSOService"

    const-string v9, "In unenrollSSOVendor: Exception"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected acquireUserInfo(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/UserInfo;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 4186
    :try_start_0
    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 4188
    .local v8, "serviceIntent":Landroid/content/Intent;
    if-nez v8, :cond_1

    .line 4189
    const-string v1, "GenericSSOService"

    const-string v2, "In acquireUserInfo: cannot get SSO Service intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 4223
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v10

    .line 4194
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 4196
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v9

    .line 4197
    .local v9, "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v9, :cond_2

    .line 4198
    const-string v1, "GenericSSOService"

    const-string v2, "In acquireUserInfo: sso service is not ready to use"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 4199
    goto :goto_0

    .line 4202
    :cond_2
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientpackagename"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    .line 4209
    .local v0, "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    invoke-interface {v9, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireUserInfo(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/UserInfo;

    move-result-object v10

    .line 4210
    .local v10, "userInfo":Landroid/app/enterprise/sso/UserInfo;
    if-nez v10, :cond_0

    .line 4211
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 4212
    const-string v1, "GenericSSOService"

    const-string v2, "In acquireUserInfo: Fail to get valid UserInfo from sso service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_3
    move-object v10, v11

    .line 4213
    goto :goto_0

    .line 4216
    .end local v0    # "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    .end local v9    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .end local v10    # "userInfo":Landroid/app/enterprise/sso/UserInfo;
    :catch_0
    move-exception v7

    .line 4217
    .local v7, "npe":Ljava/lang/NullPointerException;
    const-string v1, "GenericSSOService"

    const-string v2, "In acquireUserInfo: null pointer exception in getToken"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    move-object v10, v11

    .line 4223
    goto :goto_0

    .line 4218
    :catch_1
    move-exception v6

    .line 4219
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "GenericSSOService"

    const-string v2, "In acquireUserInfo: Remote Exception error"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4220
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 4221
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "GenericSSOService"

    const-string v2, "In acquireUserInfo: Exception in getToken"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public addAppTokenToGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    .line 3627
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3629
    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3630
    const-string v3, "GenericSSOService"

    const-string v4, "In addAppTokenToGenericSSO: appPkgName is null or empty string or token is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    :cond_1
    const/4 v3, -0x3

    .line 3645
    :goto_0
    return v3

    .line 3634
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3636
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3637
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3639
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3640
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3641
    const-string v3, "GenericSSOService"

    const-string v4, "In addAppTokenToGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 3645
    :cond_4
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addAppTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I

    move-result v3

    goto :goto_0
.end method

.method public addUserAndDeviceCertToGenericSSO(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    .line 3651
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3652
    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3653
    const-string v3, "GenericSSOService"

    const-string v4, "In addUserAndDeviceCertToGenericSSO: token is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    :cond_1
    const/4 v3, -0x3

    .line 3668
    :goto_0
    return v3

    .line 3657
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3659
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3660
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3662
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3663
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3664
    const-string v3, "GenericSSOService"

    const-string v4, "In addUserAndDeviceCertToGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 3668
    :cond_4
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->addUserAndDeviceCertificatesForUser(ILandroid/app/enterprise/sso/TokenInfo;)I

    move-result v3

    goto :goto_0
.end method

.method public addWhiteListPackages(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/sso/WhiteListPackage;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2843
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/sso/WhiteListPackage;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2844
    if-nez p1, :cond_1

    .line 2845
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2846
    const-string v1, "GenericSSOService"

    const-string v2, "In addWhiteListPackages: cxtInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    :cond_0
    const/4 v1, -0x3

    .line 2851
    :goto_0
    return v1

    .line 2849
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2851
    .local v0, "userId":I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->_addWhiteListPackages(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)I

    move-result v1

    goto :goto_0
.end method

.method public addWhiteListPackages2(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)I
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/sso/WhiteListPackage;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 2729
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/sso/WhiteListPackage;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2730
    if-nez p1, :cond_1

    .line 2731
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2732
    const-string v0, "GenericSSOService"

    const-string v1, "In addWhiteListPackages2: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    :cond_0
    const/4 v0, -0x3

    .line 2735
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->_addWhiteListPackages(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)I

    move-result v0

    goto :goto_0
.end method

.method public configureSSOByFile(Landroid/app/enterprise/ContextInfo;[B)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "configData"    # [B

    .prologue
    .line 2706
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2707
    if-nez p1, :cond_1

    .line 2708
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2709
    const-string v3, "GenericSSOService"

    const-string v4, "In configureSSOByFile: cxtInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    :cond_0
    const/4 v0, -0x3

    .line 2723
    :goto_0
    return v0

    .line 2712
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2714
    .local v2, "userId":I
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->_configureSSOByFile(Landroid/app/enterprise/ContextInfo;[BI)I

    move-result v0

    .line 2715
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 2716
    const-string v3, "GenericSSOService"

    const-string v4, "In configureSSOByFile: success in unenrolling, removing whitelist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    .line 2718
    .local v1, "status":Z
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In configureSSOByFile: return from remove whitelisting all apps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2721
    .end local v1    # "status":Z
    :cond_2
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In configureSSOByFile: Failed to configure file = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteWhiteListPackages(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2859
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2860
    if-nez p1, :cond_1

    .line 2861
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 2862
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: cxtInfo is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    :cond_0
    const/4 v10, -0x3

    .line 2922
    :goto_0
    return v10

    .line 2865
    :cond_1
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2867
    .local v4, "mdmUID":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 2869
    .local v8, "userId":I
    invoke-direct {p0, v8, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2870
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 2871
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: MDM uid is not matched"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    :cond_2
    const/16 v10, -0xa

    goto :goto_0

    .line 2874
    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 2875
    :cond_4
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_5

    .line 2876
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: Invalid Parameters."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    :cond_5
    const/4 v10, -0x3

    goto :goto_0

    .line 2879
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_8

    .line 2880
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_7

    .line 2881
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: No SSO Vendors have been enrolled."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    :cond_7
    const/4 v10, -0x6

    goto :goto_0

    .line 2886
    :cond_8
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    .line 2887
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 2888
    .local v6, "solution":Lorg/w3c/dom/Node;
    if-nez v6, :cond_a

    .line 2889
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_9

    .line 2890
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: this sso vendor is not registered"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    :cond_9
    const/4 v10, -0x6

    goto :goto_0

    .line 2893
    :cond_a
    const/4 v0, 0x0

    .line 2894
    .local v0, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2895
    .local v5, "pack":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2896
    const-string v10, "clientpackagename"

    invoke-direct {p0, v0, v10, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 2898
    .local v9, "whitelistApp":Lorg/w3c/dom/Node;
    if-nez v9, :cond_c

    .line 2899
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_b

    .line 2900
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: the package hasn\'t been whitelisted"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2917
    .end local v0    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pack":Ljava/lang/String;
    .end local v6    # "solution":Lorg/w3c/dom/Node;
    .end local v9    # "whitelistApp":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v2

    .line 2918
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: NullPointerException."

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2922
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_2
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 2903
    .restart local v0    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "pack":Ljava/lang/String;
    .restart local v6    # "solution":Lorg/w3c/dom/Node;
    .restart local v9    # "whitelistApp":Lorg/w3c/dom/Node;
    :cond_c
    :try_start_1
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_d

    .line 2904
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: package name is found in the whitelist of the given sso ssolution service"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    :cond_d
    invoke-interface {v6, v9}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2907
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_b

    .line 2908
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: package name is removed from the whitelist of the given sso ssolution service"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2919
    .end local v0    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pack":Ljava/lang/String;
    .end local v6    # "solution":Lorg/w3c/dom/Node;
    .end local v9    # "whitelistApp":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v2

    .line 2920
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: Exception."

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2912
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "solution":Lorg/w3c/dom/Node;
    :cond_e
    :try_start_2
    invoke-direct {p0, v8, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 2913
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: removing whitelistall flag"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    const/4 v10, 0x0

    invoke-direct {p0, v10, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v7

    .line 2915
    .local v7, "status":Z
    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In deleteWhiteListPackages: return from remove whitelisting all apps(Remove log later) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2916
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public enrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "authenticatorPkgCert"    # Ljava/lang/String;
    .param p4, "ssoconfig"    # Landroid/os/Bundle;

    .prologue
    .line 2120
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor context infor before enforce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    const/4 v7, 0x0

    .line 2122
    .local v7, "isRegistered":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2123
    if-nez p1, :cond_1

    .line 2124
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2125
    const-string v0, "GenericSSOService"

    const-string v1, "In enrollSSOVendor: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    :cond_0
    const/4 v9, -0x3

    .line 2143
    :goto_0
    return v9

    .line 2129
    :cond_1
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2130
    .local v8, "mdmUid":I
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor: mdmUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2134
    .local v5, "userId":I
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->_enrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I

    move-result v9

    .line 2135
    .local v9, "ret":I
    if-nez v9, :cond_2

    .line 2136
    const-string v0, "GenericSSOService"

    const-string v1, "In enrollSSOVendor: success in enrolling, whitelisting false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    const/4 v0, 0x0

    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v10

    .line 2138
    .local v10, "status":Z
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor: return from whitelisting all apps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2141
    .end local v10    # "status":Z
    :cond_2
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor: Failed to enroll = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enrollSSOVendorInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "authenticatorPkgCert"    # Ljava/lang/String;
    .param p4, "ssoconfig"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    .prologue
    .line 2095
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2096
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need to be system process"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2098
    :cond_0
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v8

    .line 2099
    .local v8, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v8}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 2101
    .local v9, "enrolledVendor":Lorg/w3c/dom/Node;
    if-eqz v9, :cond_3

    .line 2102
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2103
    const-string v1, "GenericSSOService"

    const-string v2, "In enrollSSOVendorInternal: there\'s already one sso vendor enrolled so user configuration is rejected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :cond_1
    const/16 v10, -0x9

    .line 2113
    :cond_2
    :goto_0
    return v10

    .line 2107
    :cond_3
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->_enrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I

    move-result v10

    .line 2108
    .local v10, "ret":I
    if-nez v10, :cond_2

    .line 2109
    const-string v1, "GenericSSOService"

    const-string v2, "In enrollSSOVendorInternal: success in enrolling, whitelisting all apps."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    const/4 v1, 0x1

    move/from16 v0, p5

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v11

    .line 2111
    .local v11, "status":Z
    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In enrollSSOVendorInternal: return from whitelisting all apps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public forceAuthenticate(Landroid/app/enterprise/ContextInfo;)I
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3207
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3208
    if-nez p1, :cond_1

    .line 3209
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 3210
    const-string v8, "GenericSSOService"

    const-string v9, "In forceAuthenticate: cxtInfo is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    :cond_0
    const/4 v4, -0x3

    .line 3244
    :goto_0
    return v4

    .line 3213
    :cond_1
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3216
    .local v1, "mdmUID":I
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3218
    .local v5, "userId":I
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3219
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 3220
    const-string v8, "GenericSSOService"

    const-string v9, "In forceAuthenticate: MDM uid is not matched"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    :cond_2
    const/16 v4, -0xa

    goto :goto_0

    .line 3223
    :cond_3
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 3224
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In forceAuthenticate: UserID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3227
    .local v2, "identity":J
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->reAuthenInAuthenticator(I)I

    move-result v4

    .line 3228
    .local v4, "ret":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3229
    if-eqz v4, :cond_5

    .line 3230
    const-string v8, "GenericSSOService"

    const-string v9, "In forceAuthenticate: Fail to clear authenticator\'s records"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    const/16 v4, -0x10

    goto :goto_0

    .line 3233
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->clearUserCertAndAppToken(Landroid/app/enterprise/ContextInfo;)I

    .line 3236
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3237
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "genericsso.INTENT.ACTION.tokens_cleared"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3238
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3241
    .end local v2    # "identity":J
    .end local v4    # "ret":I
    .end local v5    # "userId":I
    .end local v6    # "token":J
    :catch_0
    move-exception v0

    .line 3242
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "GenericSSOService"

    const-string v9, "In forceAuthenticate: Exception"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3244
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public getAppTokenFromGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3560
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3561
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 3562
    const-string v4, "GenericSSOService"

    const-string v5, "In getAppTokenFromGenericSSO: appPkgName is null or empty string"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    :cond_0
    :goto_0
    return-object v3

    .line 3566
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3568
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3569
    .local v1, "pid":I
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3570
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3571
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 3572
    const-string v4, "GenericSSOService"

    const-string v5, "In getAppTokenFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3576
    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v3

    goto :goto_0
.end method

.method public getAuthenticationConfig(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/identity/AuthenticationConfig;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2387
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthenticationConfig(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/identity/AuthenticationConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfigDataForSSOVendorInternal(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 699
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 700
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need to be system process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerBrandInfo(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3708
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 3710
    .local v12, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 3711
    .local v10, "pid":I
    const/4 v13, 0x0

    invoke-direct {p0, v10, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v9

    .line 3712
    .local v9, "packageName":Ljava/lang/String;
    invoke-direct {p0, v12, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 3713
    sget-boolean v13, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 3714
    const-string v13, "GenericSSOService"

    const-string v14, "In getCustomerBrandInfo: authenticator is not permitted to call this API"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    :cond_0
    const/4 v5, 0x0

    .line 3742
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "pid":I
    .end local v12    # "userId":I
    :cond_1
    :goto_0
    return-object v5

    .line 3718
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "pid":I
    .restart local v12    # "userId":I
    :cond_2
    invoke-direct {p0, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v4

    .line 3719
    .local v4, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v4}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 3720
    .local v11, "solution":Lorg/w3c/dom/Node;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3721
    .local v5, "customerInfo":Landroid/os/Bundle;
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3722
    .local v2, "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 3723
    .local v1, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "customerbrand"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 3726
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 3727
    .local v3, "configChildNode":Lorg/w3c/dom/Node;
    const-string/jumbo v13, "value"

    invoke-direct {p0, v3, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 3728
    const-string/jumbo v13, "value"

    invoke-direct {p0, v3, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3732
    .local v0, "byteValue":[B
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3739
    .end local v0    # "byteValue":[B
    .end local v1    # "childNode":Lorg/w3c/dom/Node;
    .end local v2    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v3    # "configChildNode":Lorg/w3c/dom/Node;
    .end local v4    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v5    # "customerInfo":Landroid/os/Bundle;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "pid":I
    .end local v11    # "solution":Lorg/w3c/dom/Node;
    .end local v12    # "userId":I
    :catch_0
    move-exception v6

    .line 3740
    .local v6, "e":Ljava/lang/Exception;
    const-string v13, "GenericSSOService"

    const-string v14, "In getCustomerBrandInfo: Exception"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3742
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getEnrolledSSOVendor(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2059
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    .line 2060
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    if-eqz v0, :cond_0

    .line 2061
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOPackageName()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1900(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;

    move-result-object v1

    .line 2063
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2052
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2053
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2055
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getToken(Landroid/app/enterprise/ContextInfo;ZLandroid/app/enterprise/sso/IGenericSSOCallback;)V
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "getFromLocalCache"    # Z
    .param p3, "callback"    # Landroid/app/enterprise/sso/IGenericSSOCallback;

    .prologue
    .line 4062
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v11

    if-nez v11, :cond_1

    .line 4063
    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: Checking networking connection - Failed."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4064
    if-eqz p3, :cond_0

    .line 4065
    const/16 v11, -0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    .line 4132
    :cond_0
    :goto_0
    return-void

    .line 4068
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 4070
    .local v10, "userId":I
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v2

    .line 4071
    .local v2, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 4072
    .local v8, "ssoNode":Lorg/w3c/dom/Node;
    if-nez v8, :cond_2

    .line 4073
    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: the SSO Vendor is not registered"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    if-eqz p3, :cond_0

    .line 4075
    const/4 v11, -0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4127
    .end local v2    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v10    # "userId":I
    :catch_0
    move-exception v5

    .line 4128
    .local v5, "npe":Ljava/lang/NullPointerException;
    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: null pointer exception in getToken"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4078
    .end local v5    # "npe":Ljava/lang/NullPointerException;
    .restart local v2    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .restart local v10    # "userId":I
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 4079
    .local v7, "pid":I
    const/4 v11, 0x0

    invoke-direct {p0, v7, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v6

    .line 4080
    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 4081
    const-string v11, "GenericSSOService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In getToken: cannot find the package name based on the pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    if-eqz p3, :cond_0

    .line 4085
    const/4 v11, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4129
    .end local v2    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "pid":I
    .end local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v10    # "userId":I
    :catch_1
    move-exception v3

    .line 4130
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: Exception in getToken"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4090
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "pid":I
    .restart local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .restart local v10    # "userId":I
    :cond_3
    :try_start_2
    invoke-direct {p0, v10, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 4092
    .local v1, "configData":Landroid/os/Bundle;
    invoke-direct {p0, v7, v6, v1, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 4093
    const-string v11, "GenericSSOService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In getToken: the callingApp "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "is not permitted"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    if-eqz p3, :cond_0

    .line 4095
    const/4 v11, -0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    goto/16 :goto_0

    .line 4099
    :cond_4
    invoke-direct {p0, v10, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 4100
    if-eqz p2, :cond_5

    .line 4101
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromLocalCache(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v9

    .line 4103
    .local v9, "tokenCached":Landroid/app/enterprise/sso/TokenInfo;
    if-eqz v9, :cond_5

    .line 4104
    if-eqz p3, :cond_0

    .line 4105
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/app/enterprise/sso/IGenericSSOCallback;->tokenInfoSuccess(Landroid/app/enterprise/sso/TokenInfo;)V

    .line 4106
    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: Getting a token successfully"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4111
    .end local v9    # "tokenCached":Landroid/app/enterprise/sso/TokenInfo;
    :cond_5
    invoke-direct {p0, v10, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 4112
    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: Fail to pass the service package cert check"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4113
    if-eqz p3, :cond_0

    .line 4114
    const/16 v11, -0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    goto/16 :goto_0

    .line 4121
    :cond_6
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4122
    .local v4, "message":Landroid/os/Message;
    iput v10, v4, Landroid/os/Message;->arg1:I

    .line 4123
    move-object/from16 v0, p3

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4124
    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4125
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public getUserAndDeviceCertFromGenericSSO(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3580
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3582
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3583
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3584
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3585
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3586
    const-string v3, "GenericSSOService"

    const-string v4, "In getUserAndDeviceCertFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    :cond_0
    const/4 v3, 0x0

    .line 3591
    :goto_0
    return-object v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserAndDeviceCertificatesForUser(I)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v3

    goto :goto_0
.end method

.method public getUserInfo(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/sso/IGenericSSOCallback;)V
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callback"    # Landroid/app/enterprise/sso/IGenericSSOCallback;

    .prologue
    .line 4136
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4137
    const-string v8, "GenericSSOService"

    const-string v9, "In getUserInfo: Checking networking connection - Failed."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4138
    if-eqz p2, :cond_0

    .line 4139
    const/16 v8, -0xf

    invoke-interface {p2, v8}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    .line 4182
    :cond_0
    :goto_0
    return-void

    .line 4142
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 4144
    .local v7, "userId":I
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    .line 4145
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 4146
    .local v6, "ssoNode":Lorg/w3c/dom/Node;
    if-nez v6, :cond_2

    .line 4147
    const-string v8, "GenericSSOService"

    const-string v9, "In getUserInfo: the SSO Vendor is not registered"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    if-eqz p2, :cond_0

    .line 4149
    const/4 v8, -0x6

    invoke-interface {p2, v8}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4179
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v6    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v7    # "userId":I
    :catch_0
    move-exception v2

    .line 4180
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "GenericSSOService"

    const-string v9, "In getUserInfo: exception in getUserInfo"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4152
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v6    # "ssoNode":Lorg/w3c/dom/Node;
    .restart local v7    # "userId":I
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 4153
    .local v5, "pid":I
    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v4

    .line 4154
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 4156
    .local v0, "configData":Landroid/os/Bundle;
    invoke-direct {p0, v5, v4, v0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 4157
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In getUserInfo: the callingApp "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "is not permitted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4158
    if-eqz p2, :cond_0

    .line 4159
    const/4 v8, -0x7

    invoke-interface {p2, v8}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    goto :goto_0

    .line 4164
    :cond_3
    invoke-direct {p0, v7, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 4165
    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 4166
    const-string v8, "GenericSSOService"

    const-string v9, "In getUserInfo: Fail to pass the service package cert check"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    if-eqz p2, :cond_0

    .line 4168
    const/16 v8, -0xd

    invoke-interface {p2, v8}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    goto :goto_0

    .line 4173
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4174
    .local v3, "message":Landroid/os/Message;
    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 4175
    iput-object p2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4176
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4177
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4178
    const-string v8, "GenericSSOService"

    const-string v9, "In getUserInfo: Getting user info successfully"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getWhiteListPackages(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 11
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
    const/4 v8, 0x0

    .line 2926
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2928
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 2930
    .local v7, "userId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 2931
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 2932
    const-string v9, "GenericSSOService"

    const-string v10, "In getWhiteListPackages: No SSO Vendors have been enrolled."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v5, v8

    .line 2957
    :cond_1
    :goto_0
    return-object v5

    .line 2936
    :cond_2
    :try_start_0
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    .line 2937
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 2938
    .local v6, "parent":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 2939
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2940
    .local v5, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 2941
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 2942
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "whitelistpackage"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2944
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string v10, "clientpackagename"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2940
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2952
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v3    # "i":I
    .end local v4    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "parent":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v2

    .line 2953
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v9, "GenericSSOService"

    const-string v10, "In getWhiteListPackages: NullPointerException."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_2
    move-object v5, v8

    .line 2957
    goto :goto_0

    .line 2954
    :catch_1
    move-exception v2

    .line 2955
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "GenericSSOService"

    const-string v10, "In getWhiteListPackages: Exception."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public isNetworkAuthenticationEnforced(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2410
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNetworkAuthenticationEnforced(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 4693
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 12
    .param p1, "uid"    # I

    .prologue
    .line 4706
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 4707
    const-string v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In onAdminRemoved: Admin removed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4708
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4713
    .local v8, "userId":I
    :try_start_0
    invoke-direct {p0, v8, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v9

    if-nez v9, :cond_2

    .line 4714
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 4715
    const-string v9, "GenericSSOService"

    const-string v10, "In onAdminRemoved: MDM uid is not matched"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    :cond_1
    :goto_0
    return-void

    .line 4720
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->unregisterByAuthenticator(I)I

    move-result v9

    if-eqz v9, :cond_3

    .line 4721
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 4722
    const-string v9, "GenericSSOService"

    const-string v10, "In onAdminRemoved: Fail to clear records remotely"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    :cond_3
    const/4 v5, 0x0

    .line 4726
    .local v5, "sendBroadcast":Z
    sget-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    .line 4727
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    if-eqz v0, :cond_4

    .line 4728
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOPackageName()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1900(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 4730
    const/4 v5, 0x1

    .line 4734
    :cond_4
    sget-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->delete(I)V

    .line 4735
    sget-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->delete(I)V

    .line 4740
    const/4 v2, 0x0

    .line 4741
    .local v2, "file":Ljava/io/File;
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 4742
    .local v3, "filepath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4743
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4744
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4746
    :cond_5
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 4747
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4748
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4749
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4752
    :cond_6
    if-nez v8, :cond_7

    .line 4753
    const/4 v9, 0x1

    if-ne v5, v9, :cond_7

    .line 4754
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4755
    .local v6, "token":J
    iget-object v9, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "genericsso.INTENT.ACTION.tokens_cleared"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4756
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4760
    .end local v6    # "token":J
    :cond_7
    const/4 v9, 0x0

    sput-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    .line 4761
    const/4 v9, 0x0

    sput-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    .line 4762
    const/4 v9, 0x0

    sput-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    .line 4767
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4768
    .local v4, "message":Landroid/os/Message;
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 4769
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4771
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 4772
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "sendBroadcast":Z
    :catch_0
    move-exception v1

    .line 4773
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v9, "GenericSSOService"

    const-string v10, "In onAdminRemoved: SecurityException"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4774
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 4775
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "GenericSSOService"

    const-string v10, "In onAdminRemoved: Exception"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 4698
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->onAdminRemoved(I)V

    .line 4699
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre Admin removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4700
    return-void
.end method

.method public performUserAuthentication(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "request"    # Lcom/sec/enterprise/identity/AuthenticationConfig;

    .prologue
    .line 2382
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->performUserAuthentication(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public processWebServiceRequest(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/sso/WebServiceRequest;)Landroid/app/enterprise/sso/WebServiceResponse;
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "webServiceRequest"    # Landroid/app/enterprise/sso/WebServiceRequest;

    .prologue
    .line 4229
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4230
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Checking networking connection - Failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4231
    const/4 v11, 0x0

    .line 4291
    :goto_0
    return-object v11

    .line 4233
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .line 4235
    .local v13, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 4236
    .local v9, "pid":I
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v8

    .line 4237
    .local v8, "packageName":Ljava/lang/String;
    invoke-direct {p0, v13, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 4239
    .local v4, "configData":Landroid/os/Bundle;
    invoke-direct {p0, v9, v8, v4, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4240
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 4241
    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In processWebServiceRequest: the callingApp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is not permitted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 4245
    :cond_2
    invoke-direct {p0, v13, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 4246
    invoke-direct {p0, v13, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4247
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 4248
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Fail to pass the service package cert check"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 4251
    :cond_4
    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 4253
    .local v10, "serviceIntent":Landroid/content/Intent;
    if-nez v10, :cond_6

    .line 4254
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 4255
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: cannot get SSO Service intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 4260
    :cond_6
    invoke-direct {p0, v13, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 4262
    invoke-direct {p0, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v12

    .line 4263
    .local v12, "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v12, :cond_7

    .line 4264
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: sso service is not ready to use"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4265
    const/4 v11, 0x0

    goto :goto_0

    .line 4268
    :cond_7
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientpackagename"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    .line 4274
    .local v0, "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    invoke-interface {v12, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireWebService(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/WebServiceResponse;

    move-result-object v11

    .line 4277
    .local v11, "serviceResponse":Landroid/app/enterprise/sso/WebServiceResponse;
    if-nez v11, :cond_9

    .line 4278
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 4279
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Fail to acquire valid service response from sso service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4282
    :cond_9
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: serviceResponse don\'t have any fault"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 4284
    .end local v0    # "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    .end local v4    # "configData":Landroid/os/Bundle;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pid":I
    .end local v10    # "serviceIntent":Landroid/content/Intent;
    .end local v11    # "serviceResponse":Landroid/app/enterprise/sso/WebServiceResponse;
    .end local v12    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .end local v13    # "userId":I
    :catch_0
    move-exception v7

    .line 4285
    .local v7, "npe":Ljava/lang/NullPointerException;
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: null pointer exception in getToken"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4291
    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4286
    :catch_1
    move-exception v6

    .line 4287
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Remote Exception error"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4288
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 4289
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Exception in getToken"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public removeAppTokenFromGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;

    .prologue
    .line 3673
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3674
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3675
    const-string v3, "GenericSSOService"

    const-string v4, "In removeAppTokenFromGenericSSO: appPkgName is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3678
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3680
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3681
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3682
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3683
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3684
    const-string v3, "GenericSSOService"

    const-string v4, "In removeAppTokenFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    :cond_1
    const/4 v3, -0x1

    .line 3688
    :goto_0
    return v3

    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->deleteAppTokenForUser(ILjava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public removeUserAndDeviceCertFromGenericSSO(Landroid/app/enterprise/ContextInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3692
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3694
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3695
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3696
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3697
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3698
    const-string v3, "GenericSSOService"

    const-string v4, "In removeUserAndDeviceCertFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    :cond_0
    const/4 v3, -0x1

    .line 3702
    :goto_0
    return v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->deleteUserAndDeviceCertForUser(I)I

    move-result v3

    goto :goto_0
.end method

.method public setAuthenticationConfig(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "request"    # Lcom/sec/enterprise/identity/AuthenticationConfig;

    .prologue
    .line 2392
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setAuthenticationConfig(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)I

    move-result v0

    return v0
.end method

.method public setAuthenticationConfigForContainer(Lcom/sec/enterprise/identity/AuthenticationConfig;I)I
    .locals 1
    .param p1, "request"    # Lcom/sec/enterprise/identity/AuthenticationConfig;
    .param p2, "containerId"    # I

    .prologue
    .line 2396
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setAuthenticationConfigForContainer(Lcom/sec/enterprise/identity/AuthenticationConfig;I)I

    move-result v0

    return v0
.end method

.method public setCustomerBrandInfo(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)I
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 3248
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3249
    if-nez p1, :cond_1

    .line 3250
    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_0

    .line 3251
    const-string v15, "GenericSSOService"

    const-string v16, "In setCustomerBrandInfo: cxtInfo is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    :cond_0
    const/4 v15, -0x3

    .line 3325
    :goto_0
    return v15

    .line 3254
    :cond_1
    move-object/from16 v0, p1

    iget v9, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3256
    .local v9, "mdmUID":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 3257
    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_2

    .line 3258
    const-string v15, "GenericSSOService"

    const-string v16, "In setCustomizedBrandingInfo: invalid parameters"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    :cond_2
    const/4 v15, -0x3

    goto :goto_0

    .line 3262
    :cond_3
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .line 3264
    .local v13, "userId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v15

    if-nez v15, :cond_5

    .line 3265
    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_4

    .line 3266
    const-string v15, "GenericSSOService"

    const-string v16, "In setCustomerBrandInfo: MDM uid is not matched"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    :cond_4
    const/16 v15, -0xa

    goto :goto_0

    .line 3270
    :cond_5
    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_6

    .line 3271
    const-string v15, "GenericSSOService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "In setCustomizedBrandingInfo: UserID = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_8

    .line 3273
    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_7

    .line 3274
    const-string v15, "GenericSSOService"

    const-string v16, "In setCustomizedBrandingInfo: No SSO Vendors have been enrolled."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    :cond_7
    const/4 v15, -0x6

    goto :goto_0

    .line 3278
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v3

    .line 3279
    .local v3, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 3280
    .local v11, "solution":Lorg/w3c/dom/Node;
    iget-object v4, v3, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 3282
    .local v4, "doc":Lorg/w3c/dom/Document;
    const/4 v2, 0x0

    .line 3283
    .local v2, "brandInfo":Lorg/w3c/dom/Element;
    const-string v15, "customerbrand"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .end local v2    # "brandInfo":Lorg/w3c/dom/Element;
    check-cast v2, Lorg/w3c/dom/Element;

    .restart local v2    # "brandInfo":Lorg/w3c/dom/Element;
    if-nez v2, :cond_9

    .line 3285
    const-string v15, "customerbrand"

    invoke-interface {v4, v15}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 3286
    invoke-interface {v11, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3294
    :cond_9
    const-string v15, "customer_brand_logo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 3295
    const-string v15, "customer_brand_logo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 3297
    .local v7, "image":[B
    const/4 v15, 0x0

    array-length v0, v7

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v7, v15, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v15

    if-nez v15, :cond_a

    .line 3299
    const/4 v15, -0x3

    goto/16 :goto_0

    .line 3302
    .end local v7    # "image":[B
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3303
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v14

    .line 3304
    .local v14, "value":[B
    if-eqz v14, :cond_b

    array-length v15, v14

    if-lez v15, :cond_b

    .line 3305
    const/4 v10, 0x0

    .line 3306
    .local v10, "newNode":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .end local v10    # "newNode":Lorg/w3c/dom/Element;
    check-cast v10, Lorg/w3c/dom/Element;

    .restart local v10    # "newNode":Lorg/w3c/dom/Element;
    if-nez v10, :cond_c

    .line 3307
    invoke-interface {v4, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 3308
    invoke-interface {v2, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3310
    :cond_c
    new-instance v12, Ljava/lang/String;

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v15

    const-string v16, "UTF_8"

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3312
    .local v12, "strValue":Ljava/lang/String;
    const-string/jumbo v15, "value"

    invoke-interface {v10, v15, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_b

    .line 3314
    const-string v15, "GenericSSOService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "In setCustomizedBrandingInfo:  <"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "> is added"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3320
    .end local v2    # "brandInfo":Lorg/w3c/dom/Element;
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "newNode":Lorg/w3c/dom/Element;
    .end local v11    # "solution":Lorg/w3c/dom/Node;
    .end local v12    # "strValue":Ljava/lang/String;
    .end local v13    # "userId":I
    .end local v14    # "value":[B
    :catch_0
    move-exception v5

    .line 3321
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string v15, "GenericSSOService"

    const-string v16, "In setCustomizedBrandingInfo: NullPointerException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3325
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :goto_2
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 3318
    .restart local v2    # "brandInfo":Lorg/w3c/dom/Element;
    .restart local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v11    # "solution":Lorg/w3c/dom/Node;
    .restart local v13    # "userId":I
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3319
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3322
    .end local v2    # "brandInfo":Lorg/w3c/dom/Element;
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v11    # "solution":Lorg/w3c/dom/Node;
    .end local v13    # "userId":I
    :catch_1
    move-exception v5

    .line 3323
    .local v5, "e":Ljava/lang/Exception;
    const-string v15, "GenericSSOService"

    const-string v16, "In setCustomizedBrandingInfo: Exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public setGenericSSOConfig(IILandroid/app/enterprise/sso/GenericSSOConfig;)V
    .locals 3
    .param p1, "adminUid"    # I
    .param p2, "containerID"    # I
    .param p3, "config"    # Landroid/app/enterprise/sso/GenericSSOConfig;

    .prologue
    .line 2330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 2331
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2333
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2334
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2335
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2336
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2337
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2338
    return-void
.end method

.method public setUpdatedAuthenticationConfig(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authConfig"    # Lcom/sec/enterprise/identity/AuthenticationConfig;

    .prologue
    .line 2422
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setUpdatedAuthenticationConfig(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 4687
    return-void
.end method

.method public unenrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;

    .prologue
    .line 2505
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2506
    if-nez p1, :cond_1

    .line 2507
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2508
    const-string v3, "GenericSSOService"

    const-string v4, "In unenrollSSOVendor: cxtInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :cond_0
    const/4 v0, -0x3

    .line 2522
    :goto_0
    return v0

    .line 2511
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2513
    .local v2, "userId":I
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->_unenrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I

    move-result v0

    .line 2514
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 2515
    const-string v3, "GenericSSOService"

    const-string v4, "In unenrollSSOVendor: success in unenrolling, removing whitelist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    .line 2517
    .local v1, "status":Z
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In unenrollSSOVendor: return from remove whitelisting all apps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2520
    .end local v1    # "status":Z
    :cond_2
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In unenrollSSOVendor: Failed to unenroll = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unenrollSSOVendor2(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 2429
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2430
    if-nez p1, :cond_1

    .line 2431
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2432
    const-string v2, "GenericSSOService"

    const-string v3, "In unenrollSSOVendor2: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_0
    const/4 v0, -0x3

    .line 2444
    :goto_0
    return v0

    .line 2435
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->_unenrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I

    move-result v0

    .line 2436
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 2437
    const-string v2, "GenericSSOService"

    const-string v3, "In unenrollSSOVendor2: success in unenrolling, removing whitelist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    const/4 v2, 0x0

    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    .line 2439
    .local v1, "status":Z
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In unenrollSSOVendor2: return from remove whitelisting all apps = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2442
    .end local v1    # "status":Z
    :cond_2
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In unenrollSSOVendor2: Failed to unenroll = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public validateUserAuthentication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 2406
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->validateUserAuthentication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    return-void
.end method

.method public verifyUserAuthentication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 2401
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->verifyUserAuthentication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v0

    return-object v0
.end method