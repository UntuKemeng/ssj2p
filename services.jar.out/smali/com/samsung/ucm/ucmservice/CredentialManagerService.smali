.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.super Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    }
.end annotation


# static fields
.field private static final ACTION_ENFORCE_LOCKTYPE:Ljava/lang/String; = "ACTION_ENFORCE_LOCKTYPE"

.field private static final ALIASACCESSIBLE:I = 0x1

.field private static final ALIASINACCESSIBLE:I = 0x0

.field private static final ALIASUNKNOWN:I = 0x2

.field private static final BAI_PCSCLITE_SERVICE:Ljava/lang/String; = "com.baimobile.android.pcsclite.service"

.field private static final BOOT_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.boot"

.field private static final CMC_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmc"

.field private static final CMP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmp"

.field private static final CREDENTIAL_AGENT_INTENT:Ljava/lang/String; = "com.samsung.ucm.agent"

.field private static final CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

.field private static final CREDENTIAL_AGENT_PERMISSION:Ljava/lang/String; = "com.samsung.ucm.permission.agent"

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final ESE_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.ese"

.field private static final EVENT_LICENSE_ACTIVATE:I = 0x1

.field private static final EVENT_LICENSE_EXPIRED:I = 0x2

.field private static final KEYGUARD_ATTRIBUTE_CONTAINER_OWNER:Ljava/lang/String; = "container_owner"

.field private static final KEYGUARD_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final KEYGUARD_ATTRIBUTE_OWNER:Ljava/lang/String; = "owner"

.field private static final KNOX_UCSM_PLUGIN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

.field private static final MSG_CREDENTIAL_STORAGE_AVAILABLE:I = 0x3

.field private static final MSG_CREDENTIAL_STORAGE_CHANGED:I = 0x2

.field private static final MSG_PACKAGE_LICENSE_UPDATE:I = 0x4

.field private static final MSG_REFRESH_ACTIVE_AGENTS:I = 0x1

.field private static final MSG_REFRESH_APPLET_INFO:I = 0x5

.field private static final ODE_CONFIG_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field private static final OLD_SAMSUNG_BAI_PLUGIN:Ljava/lang/String; = "com.sec.smartcard.manager"

.field private static final SAMSUNG_BAI_PLUGIN:Ljava/lang/String; = "com.samsung.ucm.baiplugin"

.field private static final SCEP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.scep"

.field private static final STORAGE_CONFIG_PATH:Ljava/lang/String; = "/data/system"

.field private static final TAG:Ljava/lang/String; = "UcmService"

.field private static final UCM_CREDENTIAL_STORAGE_NAME:Ljava/lang/String; = "lockscreen.ucscredentialstoragename"

.field private static final UCM_ENFORCE_LOCKTYPE_NOTIFICATION_ID:I = 0x1f40

.field private static final UCS_ODE_CHECK_PROPERTY:Ljava/lang/String; = "persist.security.ucs"

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private activeAgentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private certEnrollSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isSystemReadyCalled:Z

.field private final mAppletsInfoLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerthread:Landroid/os/HandlerThread;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeReceiver:Landroid/content/BroadcastReceiver;

.field private final mPersistentAppletInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentAppletInfoFile:Landroid/util/AtomicFile;

.field private mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

.field private final mPersistentServices:Ljava/util/HashMap;
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

.field private final mPersistentServicesFile:Landroid/util/AtomicFile;

.field private mPersistentServicesFileDidNotExist:Z

.field private mPersona:Landroid/os/PersonaManager;

.field protected mPersonaManager:Landroid/os/PersonaManager;

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

.field private final mServicesLock:Ljava/lang/Object;

.field private mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

.field private mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

.field private systemPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private test_status_for_ode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ucm.agent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 209
    invoke-direct {p0}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;-><init>()V

    .line 149
    new-instance v5, Ljava/util/ArrayList;

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "com.samsung.ucm.baiplugin"

    aput-object v7, v6, v8

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemPlugins:Ljava/util/ArrayList;

    .line 151
    iput-boolean v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    .line 169
    iput-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    .line 170
    iput-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 171
    iput-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    .line 172
    iput-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 173
    iput-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 174
    iput-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Landroid/os/PersonaManager;

    .line 178
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    .line 179
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    .line 180
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    .line 181
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    .line 182
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mServicesLock:Ljava/lang/Object;

    .line 183
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    .line 185
    iput-boolean v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemReadyCalled:Z

    .line 186
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    .line 351
    new-instance v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;

    invoke-direct {v5, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockTypeReceiver:Landroid/content/BroadcastReceiver;

    .line 3401
    iput-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    .line 212
    new-instance v5, Lcom/samsung/ucm/ucmservice/PolicyManager;

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/ucm/ucmservice/PolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    .line 213
    new-instance v5, Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-direct {v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;-><init>()V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    .line 214
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 215
    new-instance v5, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 217
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 218
    .local v0, "dataDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "system"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    .local v4, "systemDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v5, "registered_ucm_services"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    .local v3, "syncDir":Ljava/io/File;
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    const-string v7, "com.samsung.ucm.agent.xml"

    invoke-direct {v6, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    .line 221
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system"

    const-string v8, "appletsConfig.xml"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    .line 222
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentServicesLocked()V

    .line 224
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "CredentialManagerServiceThread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandlerthread:Landroid/os/HandlerThread;

    .line 225
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 226
    new-instance v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    .line 281
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 282
    .local v2, "locktypeFilter":Landroid/content/IntentFilter;
    const-string v5, "ACTION_ENFORCE_LOCKTYPE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockTypeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2, v9, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 285
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 286
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v5, "package"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 291
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;

    invoke-direct {v6, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 320
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    monitor-enter v6

    .line 321
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    .line 322
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    const-string v5, "ro.crypto.state"

    const-string v6, "none"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "unencrypted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "vold.decrypt"

    const-string v6, "none"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "trigger_restart_framework"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "vold.decrypt"

    const-string v6, "none"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "trigger_reset_main"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 327
    :cond_0
    const-string v5, "persist.security.ucs"

    const-string v6, "none"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "ro.boot.ucs_mode"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteODEConfigInFileIfExist()V

    .line 332
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateKeyguardConfig(I)V

    .line 335
    :cond_2
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v6, "com.samsung.android.certenrollservice.scep"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v6, "com.samsung.android.certenrollservice.cmp"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v6, "com.samsung.android.certenrollservice.cmc"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->registerPersonaObserver()V

    .line 340
    return-void

    .line 322
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method static synthetic access$000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentAppletsInfoLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateMDMPolicies(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemUCMPlugin(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPCSCService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isUCMPlugin(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceLockType(ILjava/lang/String;)V

    return-void
.end method

.method private applyMDMPolicies(ZIILjava/lang/String;I)Z
    .locals 26
    .param p1, "apply"    # Z
    .param p2, "adminUid"    # I
    .param p3, "userId"    # I
    .param p4, "pluginPkg"    # Ljava/lang/String;
    .param p5, "configuratorId"    # I

    .prologue
    .line 3866
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies adminUid-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", userId-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", pluginPkg-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", apply-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    const/16 v21, 0x0

    .line 3868
    .local v21, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3870
    .local v12, "id":J
    if-eqz p3, :cond_0

    const/16 v23, 0x64

    move/from16 v0, p3

    move/from16 v1, v23

    if-lt v0, v1, :cond_a

    .line 3871
    :cond_0
    :try_start_0
    new-instance v9, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v9, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .line 3872
    .local v9, "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v9, :cond_a

    if-eqz p2, :cond_a

    if-eqz p4, :cond_a

    .line 3873
    const/4 v14, 0x0

    .line 3874
    .local v14, "isBYODContainer":Z
    const/4 v15, 0x0

    .line 3875
    .local v15, "isContainer":Z
    const/16 v23, 0x64

    move/from16 v0, p3

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 3876
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 3877
    .local v5, "adminUserId":I
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies adminUserId -"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    move/from16 v0, p3

    if-ne v5, v0, :cond_2

    const/4 v14, 0x1

    .line 3879
    :goto_0
    const/4 v15, 0x1

    .line 3881
    .end local v5    # "adminUserId":I
    :cond_1
    if-eqz p1, :cond_b

    .line 3882
    const/16 v22, 0x0

    .line 3883
    .local v22, "status":Z
    if-nez v14, :cond_7

    .line 3884
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3885
    .local v18, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 3887
    .local v4, "adminPkg":[Ljava/lang/String;
    if-nez v15, :cond_3

    .line 3888
    if-eqz v4, :cond_3

    .line 3889
    move-object v6, v4

    .local v6, "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    move/from16 v0, v17

    if-ge v11, v0, :cond_3

    aget-object v20, v6, v11

    .line 3890
    .local v20, "pkg":Ljava/lang/String;
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies admin pkg -"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3889
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 3878
    .end local v4    # "adminPkg":[Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v17    # "len$":I
    .end local v18    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "pkg":Ljava/lang/String;
    .end local v22    # "status":Z
    .restart local v5    # "adminUserId":I
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 3895
    .end local v5    # "adminUserId":I
    .restart local v4    # "adminPkg":[Ljava/lang/String;
    .restart local v18    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "status":Z
    :cond_3
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3896
    const-string v23, "com.samsung.ucm.baiplugin"

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 3897
    const-string v23, "com.baimobile.android.pcsclite.service"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3899
    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    .line 3901
    .local v19, "packages":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v22

    .line 3902
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies addPackagesToForceStopBlackList status-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    const/16 v22, 0x0

    .line 3905
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v22

    .line 3906
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies addPackagesToClearCacheBlackList status-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3907
    const/16 v22, 0x0

    .line 3909
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    move-result v22

    .line 3910
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies addPackagesToClearDataBlackList status-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    if-nez v15, :cond_6

    .line 3913
    if-eqz v4, :cond_5

    .line 3914
    move-object v6, v4

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_5

    aget-object v20, v6, v11

    .line 3915
    .restart local v20    # "pkg":Ljava/lang/String;
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->setAdminRemovable(ZLjava/lang/String;)Z

    move-result v22

    .line 3916
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies setAdminRemovable status-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 3914
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 3921
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v17    # "len$":I
    .end local v20    # "pkg":Ljava/lang/String;
    :cond_5
    const/16 v22, 0x0

    .line 3924
    :cond_6
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 3925
    const-string v23, "com.samsung.ucm.baiplugin"

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 3927
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    const-string v24, "com.baimobile.android.pcsclite.service"

    invoke-virtual/range {v23 .. v24}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 3930
    .end local v4    # "adminPkg":[Ljava/lang/String;
    .end local v18    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "packages":[Ljava/lang/String;
    :cond_7
    if-eqz v15, :cond_9

    const/16 v23, -0x1

    move/from16 v0, p5

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    .line 3931
    const-string v23, "UcmService"

    const-string v24, "applyMDMPolicies inside container logic"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3933
    .restart local v18    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v10

    .line 3934
    .local v10, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v24

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v16

    .line 3935
    .local v16, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-eqz v16, :cond_9

    .line 3936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 3937
    .local v7, "configuratorPkg":[Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 3938
    move-object v6, v7

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_3
    move/from16 v0, v17

    if-ge v11, v0, :cond_8

    aget-object v20, v6, v11

    .line 3939
    .restart local v20    # "pkg":Ljava/lang/String;
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies disable uninstall pkg -"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 3942
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3938
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 3946
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v17    # "len$":I
    .end local v20    # "pkg":Ljava/lang/String;
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_9

    .line 3948
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v22

    .line 3949
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies inside container addPackagesToForceStopBlackList status-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    const/16 v22, 0x0

    .line 3952
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v22

    .line 3953
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies inside container addPackagesToClearCacheBlackList status-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    const/16 v22, 0x0

    .line 3956
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    move-result v22

    .line 3957
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies inside container addPackagesToClearDataBlackList status-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3961
    .end local v7    # "configuratorPkg":[Ljava/lang/String;
    .end local v10    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v16    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v18    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    const/16 v21, 0x1

    .line 4047
    .end local v9    # "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v14    # "isBYODContainer":Z
    .end local v15    # "isContainer":Z
    .end local v22    # "status":Z
    :cond_a
    :goto_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4049
    :goto_5
    return v21

    .line 3963
    .restart local v9    # "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v14    # "isBYODContainer":Z
    .restart local v15    # "isContainer":Z
    :cond_b
    const/16 v22, 0x0

    .line 3964
    .restart local v22    # "status":Z
    if-nez v14, :cond_10

    .line 3965
    :try_start_1
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3966
    .restart local v18    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 3967
    .restart local v4    # "adminPkg":[Ljava/lang/String;
    if-nez v15, :cond_c

    .line 3968
    if-eqz v4, :cond_c

    .line 3969
    move-object v6, v4

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_6
    move/from16 v0, v17

    if-ge v11, v0, :cond_c

    aget-object v20, v6, v11

    .line 3970
    .restart local v20    # "pkg":Ljava/lang/String;
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies admin pkg -"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3969
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 3975
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v17    # "len$":I
    .end local v20    # "pkg":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3976
    const-string v23, "com.samsung.ucm.baiplugin"

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 3977
    const-string v23, "com.baimobile.android.pcsclite.service"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3979
    :cond_d
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    .line 3981
    .restart local v19    # "packages":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v22

    .line 3982
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies removePackagesFromForceStopBlackList status-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3983
    const/16 v22, 0x0

    .line 3985
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v22

    .line 3986
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies removePackagesFromClearCacheBlackList status-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    const/16 v22, 0x0

    .line 3989
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v22

    .line 3990
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies removePackagesFromClearDataBlackList status-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    const/16 v22, 0x0

    .line 3992
    if-nez v15, :cond_f

    .line 3993
    if-eqz v4, :cond_e

    .line 3994
    move-object v6, v4

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_7
    move/from16 v0, v17

    if-ge v11, v0, :cond_e

    aget-object v20, v6, v11

    .line 3996
    .restart local v20    # "pkg":Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->setAdminRemovable(ZLjava/lang/String;)Z

    move-result v22

    .line 3997
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies setAdminRemovable status-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3999
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 3994
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 4002
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v17    # "len$":I
    .end local v20    # "pkg":Ljava/lang/String;
    :cond_e
    const/16 v22, 0x0

    .line 4005
    :cond_f
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 4006
    const-string v23, "com.samsung.ucm.baiplugin"

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 4008
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    const-string v24, "com.baimobile.android.pcsclite.service"

    invoke-virtual/range {v23 .. v24}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 4011
    .end local v4    # "adminPkg":[Ljava/lang/String;
    .end local v18    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "packages":[Ljava/lang/String;
    :cond_10
    if-eqz v15, :cond_12

    const/16 v23, -0x1

    move/from16 v0, p5

    move/from16 v1, v23

    if-eq v0, v1, :cond_12

    .line 4012
    const-string v23, "UcmService"

    const-string v24, "applyMDMPolicies inside container logic"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 4014
    .restart local v18    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v10

    .line 4015
    .restart local v10    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v24

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v16

    .line 4016
    .restart local v16    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 4017
    .restart local v7    # "configuratorPkg":[Ljava/lang/String;
    if-eqz v7, :cond_11

    .line 4018
    move-object v6, v7

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_8
    move/from16 v0, v17

    if-ge v11, v0, :cond_11

    aget-object v20, v6, v11

    .line 4019
    .restart local v20    # "pkg":Ljava/lang/String;
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies disable uninstall pkg -"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 4022
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4018
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 4026
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v17    # "len$":I
    .end local v20    # "pkg":Ljava/lang/String;
    :cond_11
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_12

    .line 4027
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v22

    .line 4028
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies inside container removePackagesFromForceStopBlackList status-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4029
    const/16 v22, 0x0

    .line 4031
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v22

    .line 4032
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies inside container removePackagesFromClearCacheBlackList status-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    const/16 v22, 0x0

    .line 4035
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v22

    .line 4036
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies inside container removePackagesFromClearDataBlackList status-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4039
    .end local v7    # "configuratorPkg":[Ljava/lang/String;
    .end local v10    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v16    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v18    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    const/16 v21, 0x1

    goto/16 :goto_4

    .line 4044
    .end local v9    # "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v14    # "isBYODContainer":Z
    .end local v15    # "isContainer":Z
    .end local v22    # "status":Z
    :catch_0
    move-exception v8

    .line 4045
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v23, "UcmService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "applyMDMPolicies exception"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4047
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23
.end method

.method private checkCaller(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "expectedPackage"    # Ljava/lang/String;

    .prologue
    .line 4967
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 4968
    .local v0, "actualPackage":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "actualPackage":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "actualPackage":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 504
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCallerPermissionFor is called for method-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v1, "CredentialManagerService"

    .line 506
    .local v1, "serviceName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-nez v2, :cond_1

    .line 516
    :cond_0
    return v5

    .line 509
    :cond_1
    sget-object v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 513
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 514
    throw v0
.end method

.method private checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .locals 11
    .param p1, "activeAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 1227
    new-instance v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 1228
    .local v0, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v8, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 1229
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1230
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 1231
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIfNotify for cs Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v1, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    .line 1238
    .local v1, "enforceManagement":Z
    if-eqz v1, :cond_3

    .line 1239
    const-string v8, "UcmService"

    const-string v9, "notifying to managed plugin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1241
    .local v3, "mUm":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 1243
    .local v7, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x0

    .line 1244
    .local v4, "notify":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1245
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v5, v6, Landroid/content/pm/UserInfo;->id:I

    .line 1246
    .local v5, "userId":I
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIfNotify: Valid userid - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, v5, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    .line 1248
    if-eqz v4, :cond_0

    .line 1254
    .end local v1    # "enforceManagement":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mUm":Landroid/os/UserManager;
    .end local v4    # "notify":Z
    .end local v5    # "userId":I
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v7    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    :goto_0
    return v4

    .line 1233
    :cond_2
    const-string v8, "UcmService"

    const-string v9, "Package name for CS found NULL. Cannot notify."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v4, 0x0

    goto :goto_0

    .line 1253
    .restart local v1    # "enforceManagement":Z
    :cond_3
    const-string v8, "UcmService"

    const-string v9, "notifying to unmanaged plugin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private checkPluginUsed(ILjava/lang/String;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 3307
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkPluginUsed for the uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkPluginUsed for the uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v1

    .line 3310
    .local v1, "keyguardCSName":Ljava/lang/String;
    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3311
    .local v2, "source":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    .line 3312
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 3313
    const-string v4, "UcmService"

    const-string v5, "This plugin is already used in keyguard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    :goto_0
    return v3

    .line 3319
    :cond_0
    const-string v4, "persist.security.ucs.csname"

    const-string v5, "None"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3320
    .local v0, "ODECSName":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 3321
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_1

    .line 3322
    const-string v4, "UcmService"

    const-string v5, "This plugin is already used in ODE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3326
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkSystemCaller()V
    .locals 2

    .prologue
    .line 4960
    const-string v1, "android.uid.system:1000"

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCaller(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4961
    .local v0, "actual":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4962
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4964
    :cond_0
    return-void
.end method

.method private compareCallingPkg([B[B)Z
    .locals 18
    .param p1, "storedPkg"    # [B
    .param p2, "callingPkg"    # [B

    .prologue
    .line 4407
    const-string v15, "UcmService"

    const-string v16, "compareCallingPkg is called..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4408
    const/4 v14, 0x0

    .line 4410
    .local v14, "status":Z
    :try_start_0
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 4411
    .local v7, "configuratorPackage":Ljava/lang/String;
    const-string v15, ","

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4412
    .local v6, "confPkgs":[Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 4413
    .local v4, "callingPackages":Ljava/lang/String;
    const-string v15, ","

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4415
    .local v5, "callingPkgs":[Ljava/lang/String;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v11, v1

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v13, v1, v10

    .line 4416
    .local v13, "pkg":Ljava/lang/String;
    const-string v15, "UcmService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "compareCallingPkg pkg - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4417
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    array-length v12, v2

    .local v12, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_1
    if-ge v9, v12, :cond_0

    aget-object v3, v2, v9

    .line 4418
    .local v3, "cachePkg":Ljava/lang/String;
    const-string v15, "UcmService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "compareCallingPkg cachePkg -"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 4420
    const/4 v14, 0x1

    .line 4421
    const-string v15, "UcmService"

    const-string v16, "compareCallingPkg match found..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4415
    .end local v3    # "cachePkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_0

    .line 4417
    .end local v10    # "i$":I
    .restart local v3    # "cachePkg":Ljava/lang/String;
    .restart local v9    # "i$":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 4426
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "cachePkg":Ljava/lang/String;
    .end local v4    # "callingPackages":Ljava/lang/String;
    .end local v5    # "callingPkgs":[Ljava/lang/String;
    .end local v6    # "confPkgs":[Ljava/lang/String;
    .end local v7    # "configuratorPackage":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 4427
    .local v8, "e":Ljava/lang/Exception;
    const-string v15, "UcmService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in getConfiguratorPkg -"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4429
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    return v14
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 9
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v6, 0x0

    .line 467
    if-nez p0, :cond_0

    .line 468
    const-string v7, "UcmService"

    const-string v8, "Signature s1 is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :goto_0
    return v6

    .line 471
    :cond_0
    if-nez p1, :cond_1

    .line 472
    const-string v7, "UcmService"

    const-string v8, "Signature s2 is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 476
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 477
    .local v3, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 478
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 480
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 481
    .local v4, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 482
    .restart local v5    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 485
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 486
    const-string v6, "UcmService"

    const-string v7, "  Signature match"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v6, 0x1

    goto :goto_0

    .line 489
    :cond_4
    const-string v7, "UcmService"

    const-string v8, "  Signature doesn\'t match"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertByteToString([B)Ljava/lang/String;
    .locals 10
    .param p1, "data"    # [B

    .prologue
    .line 984
    const-string v2, ""

    .line 985
    .local v2, "byteString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 986
    const/4 v5, 0x0

    .line 992
    :goto_0
    return-object v5

    .line 988
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-byte v1, v0, v3

    .line 989
    .local v1, "b":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 988
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 991
    .end local v1    # "b":B
    :cond_1
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertByteToString result - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v2

    .line 992
    goto :goto_0
.end method

.method private deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "ismdmcaller"    # Z
    .param p3, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2670
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2672
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2673
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2674
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteInternal : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2676
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2734
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    :goto_0
    return-object v10

    .line 2681
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2682
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2683
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 2684
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    .line 2685
    move/from16 v0, v16

    if-eq v5, v0, :cond_2

    .line 2686
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2687
    :cond_1
    move/from16 v5, v16

    .line 2691
    :cond_2
    if-eqz p2, :cond_5

    move/from16 v4, p3

    .line 2692
    .local v4, "user_id":I
    :goto_1
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .line 2693
    .local v13, "uriresource":I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_3

    const/4 v13, 0x1

    .line 2695
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2696
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v17

    .line 2697
    .local v17, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_6

    .line 2698
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 2699
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    .end local v17    # "userId":I
    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2706
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 2707
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! deleteInternal is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2709
    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2691
    .end local v4    # "user_id":I
    .end local v13    # "uriresource":I
    .end local v14    # "id":J
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    goto/16 :goto_1

    .line 2701
    .restart local v4    # "user_id":I
    .restart local v13    # "uriresource":I
    .restart local v17    # "userId":I
    :cond_6
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete. Keeping same userid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2712
    .end local v17    # "userId":I
    .restart local v14    # "id":J
    :cond_7
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2715
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2716
    .local v12, "argBundle":Landroid/os/Bundle;
    if-eqz p2, :cond_8

    const-string v2, "ismdm"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2717
    :cond_8
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2718
    const-string v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2719
    const-string v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2720
    const-string v2, "resource"

    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2722
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 2728
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_9

    .line 2729
    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2731
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2734
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private deleteODEConfigInFileIfExist()V
    .locals 4

    .prologue
    .line 4576
    const-string v2, "UcmService"

    const-string v3, "deleteODEConfigInFile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4577
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "odeConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4578
    .local v1, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 4579
    .local v0, "existFile":Z
    if-nez v0, :cond_0

    .line 4580
    const-string v2, "UcmService"

    const-string v3, "ODE config file does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4586
    :goto_0
    return-void

    .line 4582
    :cond_0
    const-string v2, "UcmService"

    const-string v3, "ODE config file exist so delete it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4583
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private enforceLockType(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "csName"    # Ljava/lang/String;

    .prologue
    .line 5073
    :try_start_0
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 5074
    .local v2, "uh":Landroid/os/UserHandle;
    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enforceLockType called for userID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5075
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5076
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.ConfirmUCMLockPassword"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5077
    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " csName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5078
    const-string v3, "lockscreen.ucscredentialstoragename"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5079
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5080
    const/high16 v3, 0x400000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5081
    const/high16 v3, 0x800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5082
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5086
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uh":Landroid/os/UserHandle;
    :goto_0
    return-void

    .line 5083
    :catch_0
    move-exception v0

    .line 5084
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UcmService"

    const-string v4, "handled expected Exception in enforceLockType()."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "isSystem"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2776
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyPairMain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2778
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2779
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2780
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyPairMain : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2782
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2844
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    :goto_0
    return-object v10

    .line 2787
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2788
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2789
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 2790
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    .line 2791
    move/from16 v0, v16

    if-eq v5, v0, :cond_2

    .line 2792
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2793
    :cond_1
    move/from16 v5, v16

    .line 2797
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2798
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .line 2799
    .local v13, "uriresource":I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_3

    const/4 v13, 0x1

    .line 2801
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2802
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v17

    .line 2803
    .local v17, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_5

    .line 2804
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 2805
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyPairMain new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    .end local v17    # "userId":I
    :cond_4
    :goto_1
    if-nez p5, :cond_7

    .line 2813
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2814
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 2815
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! generateKeyPairMain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2817
    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2807
    .end local v14    # "id":J
    .restart local v17    # "userId":I
    :cond_5
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyPairMain. Keeping same userid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2820
    .end local v17    # "userId":I
    .restart local v14    # "id":J
    :cond_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2825
    .end local v14    # "id":J
    :cond_7
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2826
    .local v12, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2827
    const-string v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2828
    const-string v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2829
    const-string v2, "resource"

    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2830
    const-string v2, "extraArgs"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2832
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyPair KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyPair KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyPair KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 2838
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_8

    .line 2839
    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2841
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2844
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;
    .locals 4
    .param p1, "credAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2437
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2438
    .local v0, "agentInfoBundle":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    .line 2439
    .local v1, "credAgentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v1, :cond_6

    .line 2440
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "uniqueId"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    :cond_0
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "id"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    :cond_1
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "summary"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    :cond_2
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "title"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    :cond_3
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "vendorId"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    :cond_4
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "storageType"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    :cond_5
    const-string v2, "isDetachable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isDetachable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2447
    const-string v2, "reqUserVerification"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->reqUserVerification:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2448
    const-string v2, "isHardwareBacked"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isHardwareBacked:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2449
    const-string v2, "isReadOnly"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2450
    const-string v2, "isManageable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2451
    const-string v2, "enforceManagement"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2452
    const-string v2, "isPUKSupported"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isPUKSupported:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2453
    const-string v2, "isGeneratePasswordAvailable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2454
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v2, "configuratorList"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    :cond_6
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_7

    .line 2457
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2458
    const-string v2, "packageName"

    iget-object v3, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    :cond_7
    return-object v0
.end method

.method private getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .locals 4
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    .line 911
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppletInfo is called for pluginName-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 914
    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v0, :cond_0

    .line 917
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppletInfo pluginName-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConfiguratorPkg(I)[B
    .locals 8
    .param p1, "adminId"    # I

    .prologue
    .line 4433
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getConfiguratorPkg is called for adminId-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    const/4 v0, 0x0

    .line 4436
    .local v0, "data":[B
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 4437
    .local v3, "packageNames":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 4438
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4439
    .local v4, "tempBaos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 4440
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packageName -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 4442
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_0

    .line 4443
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4439
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4446
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 4447
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 4448
    if-eqz v0, :cond_2

    .line 4449
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data size -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4455
    .end local v2    # "i":I
    .end local v3    # "packageNames":[Ljava/lang/String;
    .end local v4    # "tempBaos":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_1
    return-object v0

    .line 4452
    :catch_0
    move-exception v1

    .line 4453
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in getConfiguratorPkg -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getConfiguratorSignature(I)[B
    .locals 11
    .param p1, "adminId"    # I

    .prologue
    .line 4459
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getConfiguratorSignature is called for adminId-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4460
    const/4 v0, 0x0

    .line 4462
    .local v0, "data":[B
    :try_start_0
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 4463
    .local v4, "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 4464
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v4

    if-ge v2, v8, :cond_1

    .line 4465
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    const-string v6, ""

    .line 4467
    .local v6, "sig":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    aget-object v9, v4, v2

    const/16 v10, 0x40

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 4468
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-lez v8, :cond_3

    .line 4469
    const-string v8, "UcmService"

    const-string v9, "Found signature..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    new-array v7, v8, [Ljava/lang/String;

    .line 4471
    .local v7, "sigStrins":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-ge v3, v8, :cond_0

    .line 4472
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 4471
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4474
    :cond_0
    const-string v8, ","

    invoke-static {v8, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 4476
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getDigestOfBytes([B)[B

    move-result-object v0

    .line 4480
    .end local v3    # "j":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sig":Ljava/lang/String;
    .end local v7    # "sigStrins":[Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 4481
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data size -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4487
    .end local v2    # "i":I
    .end local v4    # "packageNames":[Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v0

    .line 4464
    .restart local v2    # "i":I
    .restart local v4    # "packageNames":[Ljava/lang/String;
    .restart local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "sig":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 4484
    .end local v2    # "i":I
    .end local v4    # "packageNames":[Ljava/lang/String;
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sig":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4485
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in getConfiguratorPkg -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getDigestOfBytes([B)[B
    .locals 10
    .param p1, "inBytes"    # [B

    .prologue
    .line 4492
    const/4 v5, 0x0

    .line 4493
    .local v5, "dis":Ljava/security/DigestInputStream;
    const/4 v3, 0x0

    .line 4494
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 4496
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    const-string v9, "SHA256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 4497
    .local v8, "md":Ljava/security/MessageDigest;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4498
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v6, Ljava/security/DigestInputStream;

    invoke-direct {v6, v2, v8}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4499
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .local v6, "dis":Ljava/security/DigestInputStream;
    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4501
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v4, "bis":Ljava/io/BufferedInputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 4502
    .local v0, "b":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_0

    .line 4505
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v9

    .line 4516
    if-eqz v6, :cond_1

    .line 4517
    :try_start_4
    invoke-virtual {v6}, Ljava/security/DigestInputStream;->close()V

    .line 4518
    :cond_1
    if-eqz v4, :cond_2

    .line 4519
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 4520
    :cond_2
    if-eqz v2, :cond_3

    .line 4521
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    :goto_0
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 4526
    .end local v0    # "b":I
    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .end local v8    # "md":Ljava/security/MessageDigest;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    :goto_1
    return-object v9

    .line 4522
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v0    # "b":I
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v8    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v7

    .line 4523
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4506
    .end local v0    # "b":I
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "md":Ljava/security/MessageDigest;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    :catch_1
    move-exception v7

    .line 4507
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    :try_start_5
    invoke-virtual {v7}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4516
    if-eqz v5, :cond_4

    .line 4517
    :try_start_6
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 4518
    :cond_4
    if-eqz v3, :cond_5

    .line 4519
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4520
    :cond_5
    if-eqz v1, :cond_6

    .line 4521
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 4526
    .end local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_6
    :goto_3
    const/4 v9, 0x0

    goto :goto_1

    .line 4522
    .restart local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v7

    .line 4523
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 4508
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 4509
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4516
    if-eqz v5, :cond_7

    .line 4517
    :try_start_8
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 4518
    :cond_7
    if-eqz v3, :cond_8

    .line 4519
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4520
    :cond_8
    if-eqz v1, :cond_6

    .line 4521
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 4522
    :catch_4
    move-exception v7

    .line 4523
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 4510
    .end local v7    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 4511
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4516
    if-eqz v5, :cond_9

    .line 4517
    :try_start_a
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 4518
    :cond_9
    if-eqz v3, :cond_a

    .line 4519
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4520
    :cond_a
    if-eqz v1, :cond_6

    .line 4521
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 4522
    :catch_6
    move-exception v7

    .line 4523
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 4512
    .end local v7    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v7

    .line 4513
    .local v7, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_b
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4516
    if-eqz v5, :cond_b

    .line 4517
    :try_start_c
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 4518
    :cond_b
    if-eqz v3, :cond_c

    .line 4519
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4520
    :cond_c
    if-eqz v1, :cond_6

    .line 4521
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_3

    .line 4522
    :catch_8
    move-exception v7

    .line 4523
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 4515
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 4516
    :goto_7
    if-eqz v5, :cond_d

    .line 4517
    :try_start_d
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 4518
    :cond_d
    if-eqz v3, :cond_e

    .line 4519
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4520
    :cond_e
    if-eqz v1, :cond_f

    .line 4521
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 4524
    :cond_f
    :goto_8
    throw v9

    .line 4522
    :catch_9
    move-exception v7

    .line 4523
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 4515
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "md":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catchall_2
    move-exception v9

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_7

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catchall_3
    move-exception v9

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_7

    .line 4512
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_a
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_b
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_6

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_c
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_6

    .line 4510
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_d
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_e
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_5

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_f
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_5

    .line 4508
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_10
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_4

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_11
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_4

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_12
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_4

    .line 4506
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_13
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_2

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_14
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_2

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_15
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_2
.end method

.method private getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;
    .locals 13
    .param p1, "userId"    # I

    .prologue
    .line 3810
    const-string v10, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getKeyguardStorageOwnerForCurrentUser : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 3812
    .local v0, "dataDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v10, "system"

    invoke-direct {v7, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3813
    .local v7, "systemDir":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "users/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3814
    .local v9, "userDir":Ljava/io/File;
    new-instance v10, Landroid/util/AtomicFile;

    new-instance v11, Ljava/io/File;

    const-string v12, "ucm_keyguardconfig.xml"

    invoke-direct {v11, v9, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    .line 3815
    const/4 v3, 0x0

    .line 3816
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 3817
    .local v4, "isFileExist":Z
    const/4 v5, 0x0

    .line 3818
    .local v5, "ownerId":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    .line 3819
    const-string v10, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isFileExist : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    if-nez v4, :cond_0

    .line 3821
    const/4 v10, 0x0

    .line 3862
    :goto_0
    return-object v10

    .line 3824
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 3825
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 3826
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v6, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3827
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 3828
    .local v2, "eventType":I
    :goto_1
    const/4 v10, 0x2

    if-eq v2, v10, :cond_1

    const/4 v10, 0x1

    if-eq v2, v10, :cond_1

    .line 3829
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_1

    .line 3831
    :cond_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3832
    .local v8, "tagName":Ljava/lang/String;
    const-string v10, "keyguard"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3833
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 3835
    :cond_2
    const/4 v10, 0x2

    if-ne v2, v10, :cond_3

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 3836
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3837
    const-string v10, "vendor"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3838
    const/4 v10, 0x0

    const-string v11, "owner"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3841
    :cond_3
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3842
    const/4 v10, 0x1

    if-ne v2, v10, :cond_2

    .line 3854
    :cond_4
    if-eqz v3, :cond_5

    .line 3856
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "eventType":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_5
    :goto_2
    move-object v10, v5

    .line 3862
    goto :goto_0

    .line 3857
    .restart local v2    # "eventType":I
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3858
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3844
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "eventType":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3846
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3854
    if-eqz v3, :cond_5

    .line 3856
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 3857
    :catch_2
    move-exception v1

    .line 3858
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3847
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 3849
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3854
    if-eqz v3, :cond_5

    .line 3856
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 3857
    :catch_4
    move-exception v1

    .line 3858
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3850
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 3852
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3854
    if-eqz v3, :cond_5

    .line 3856
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    .line 3857
    :catch_6
    move-exception v1

    .line 3858
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3854
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    if-eqz v3, :cond_6

    .line 3856
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 3859
    :cond_6
    :goto_3
    throw v10

    .line 3857
    :catch_7
    move-exception v1

    .line 3858
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private getPersonaService()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Landroid/os/PersonaManager;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 3
    .param p1, "agentResponse"    # Landroid/os/Bundle;

    .prologue
    .line 2848
    const-string v2, "errorresponse"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2849
    .local v1, "errorcode":I
    const-string v2, "bytearrayresponse"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 2850
    .local v0, "data":[B
    new-instance v2, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    invoke-direct {v2, v1, v0}, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;-><init>(I[B)V

    return-object v2
.end method

.method private getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "storageName"    # Ljava/lang/String;

    .prologue
    .line 4089
    if-eqz p1, :cond_0

    .line 4090
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4091
    .local v0, "pkgs":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 4092
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 4095
    .end local v0    # "pkgs":[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .locals 1

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_0

    .line 201
    const-string v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v0, :cond_0

    .line 194
    const-string v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getuseridforuid(I)I
    .locals 1
    .param p1, "callingUid"    # I

    .prologue
    .line 1899
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1900
    .local v0, "callerUserId":I
    return v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 996
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 997
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 998
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 999
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1001
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1003
    :cond_0
    return-object v0
.end method

.method private importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2570
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKeyPair "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2573
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2574
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2575
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKeyPair : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2577
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2642
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    :goto_0
    return-object v10

    .line 2580
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "agent= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2584
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2585
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 2586
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    .line 2587
    move/from16 v0, v16

    if-eq v5, v0, :cond_1

    .line 2588
    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    .line 2589
    move/from16 v5, v16

    .line 2593
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2594
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .line 2595
    .local v13, "uriresource":I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_2

    const/4 v13, 0x1

    .line 2597
    :cond_2
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2598
    .local v12, "argBundle":Landroid/os/Bundle;
    const-string v2, "ismdm"

    move/from16 v0, p5

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2600
    if-eqz p5, :cond_4

    if-eqz p4, :cond_4

    .line 2601
    const-string v2, "callerUid"

    const-string v3, "admin_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2602
    const-string v2, "ownerUid"

    const-string v3, "admin_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2603
    const-string v2, "renew"

    const-string v3, "renew"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2605
    const-string v2, "allow_wifi"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2606
    const-string v2, "resource"

    const/4 v3, 0x3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2610
    :goto_1
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userd id from MDM = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    const-string v2, "user_id"

    const-string v3, "user_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2612
    const-string v2, "extraArgs"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2620
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2621
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 2622
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! importKeyPairInternal is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2624
    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2608
    .end local v14    # "id":J
    :cond_3
    const-string v2, "resource"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2614
    :cond_4
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2615
    const-string v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2616
    const-string v2, "resource"

    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2617
    const-string v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 2627
    .restart local v14    # "id":J
    :cond_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2630
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKeyPairInternal KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKeyPairInternal KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKeyPairInternal KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 2636
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_6

    .line 2637
    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2639
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2642
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private isCallFromSystem(I)Z
    .locals 11
    .param p1, "adminUid"    # I

    .prologue
    .line 4983
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCallFromSystem adminUid-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4984
    const/4 v6, 0x0

    .line 4986
    .local v6, "status":Z
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4987
    .local v7, "userId":I
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 4988
    .local v5, "pkgs":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 4989
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 4990
    .local v4, "pkgName":Ljava/lang/String;
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCallFromSystem pkgName-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v4, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4992
    const-string v8, "UcmService"

    const-string v9, "isCallFromSystem match found...."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4993
    const/4 v6, 0x1

    .line 5001
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":[Ljava/lang/String;
    .end local v7    # "userId":I
    :cond_0
    :goto_1
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCallFromSystem status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5002
    return v6

    .line 4989
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgs":[Ljava/lang/String;
    .restart local v7    # "userId":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4998
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":[Ljava/lang/String;
    .end local v7    # "userId":I
    :catch_0
    move-exception v1

    .line 4999
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCallFromSystem e-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isPCSCService(I)Z
    .locals 10
    .param p1, "uid"    # I

    .prologue
    .line 388
    const/4 v6, 0x0

    .line 390
    .local v6, "status":Z
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 391
    .local v5, "pkgs":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 392
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 393
    .local v4, "pkgName":Ljava/lang/String;
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPCSCService pkgName-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v7, "com.baimobile.android.pcsclite.service"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 395
    const/4 v6, 0x1

    .line 404
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v6

    .line 392
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgs":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPCSCService exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isPackageExisted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    .line 494
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 496
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isPersona(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 3394
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    .line 3395
    const/4 v0, 0x1

    .line 3397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPluginUsedInOtherUser(Ljava/lang/String;II)Z
    .locals 12
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "currentUserId"    # I
    .param p3, "configuratorId"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v8, 0x0

    .line 644
    const-string v9, "UcmService"

    const-string v10, "isPluginUsedInOtherUser"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    if-eqz p1, :cond_0

    if-eq p2, v11, :cond_0

    if-ne p3, v11, :cond_1

    .line 693
    :cond_0
    :goto_0
    return v8

    .line 649
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 650
    .local v2, "mUm":Landroid/os/UserManager;
    if-eqz v2, :cond_0

    .line 653
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 654
    .local v7, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v7, :cond_0

    .line 657
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 658
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_2

    .line 660
    const-string v9, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UCM keyguard check "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, v9, :cond_3

    .line 663
    const-string v9, "UcmService"

    const-string v10, "skip current user"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 690
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mUm":Landroid/os/UserManager;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v7    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPluginUsed exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mUm":Landroid/os/UserManager;
    .restart local v6    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v7    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    :try_start_1
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v5

    .line 668
    .local v5, "usedVendorName":Ljava/lang/String;
    if-eqz v5, :cond_4

    const-string v9, "none"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 669
    :cond_4
    const-string v9, "UcmService"

    const-string v10, "UCM keyguard is not enabled"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 673
    :cond_5
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 674
    const-string v9, "UcmService"

    const-string v10, "this plugin is used in other user"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 676
    .local v3, "usedConfigurator":Ljava/lang/String;
    const/4 v4, -0x1

    .line 678
    .local v4, "usedConfiguratorId":I
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    .line 683
    if-ne p3, v4, :cond_2

    .line 684
    :try_start_3
    const-string v9, "UcmService"

    const-string v10, "And it is enabled by same configurator"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 686
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 679
    :catch_1
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method private isSystemApp(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 450
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const/16 v6, 0x40

    invoke-interface {v5, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 453
    .local v3, "targetPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 456
    .local v2, "sys":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v5, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 462
    .end local v2    # "sys":Landroid/content/pm/PackageInfo;
    .end local v3    # "targetPkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v4

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSystemApp exception e -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 460
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 461
    .local v1, "e1":Ljava/lang/Exception;
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSystemApp exception e -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSystemStorage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 430
    const-string v0, "com.samsung.ucs.agent.ese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.ucs.agent.boot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    :cond_0
    const/4 v0, 0x1

    .line 433
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemUCMPlugin(I)Z
    .locals 10
    .param p1, "uid"    # I

    .prologue
    .line 367
    const/4 v6, 0x0

    .line 369
    .local v6, "status":Z
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "pkgs":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 371
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 372
    .local v4, "pkgName":Ljava/lang/String;
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSystemUCMPlugin pkgName-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemPlugins:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-direct {p0, v4, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 374
    const-string v7, "UcmService"

    const-string v8, "isSystemUCMPlugin match found...."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    const/4 v6, 0x1

    .line 384
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v6

    .line 371
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgs":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSystemUCMPlugin exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isUCMPlugin(I)Z
    .locals 11
    .param p1, "uid"    # I

    .prologue
    .line 408
    const/4 v7, 0x0

    .line 410
    .local v7, "status":Z
    :try_start_0
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, "pkgs":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 412
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 413
    .local v6, "pm":Landroid/content/pm/PackageManager;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 414
    .local v4, "pkgName":Ljava/lang/String;
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isUCMPlugin pkgName-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v8, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-virtual {v6, v8, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 416
    const-string v8, "UcmService"

    const-string v9, "isUCMPlugin match found...."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    const/4 v7, 0x1

    .line 426
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    return v7

    .line 413
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgs":[Ljava/lang/String;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isUCMPlugin exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isValidFormFactor(Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 888
    const/4 v0, 0x0

    .line 889
    .local v0, "status":Z
    if-eqz p1, :cond_1

    .line 890
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 902
    const/4 v0, 0x0

    .line 905
    :cond_1
    :goto_1
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidFormFactor type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return v0

    .line 890
    :sswitch_0
    const-string v2, "eSE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "eSE1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "SIM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "SIM1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "SIM2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "SD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "SD1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    .line 899
    :pswitch_0
    const/4 v0, 0x1

    .line 900
    goto :goto_1

    .line 890
    :sswitch_data_0
    .sparse-switch
        0xa51 -> :sswitch_5
        0x14000 -> :sswitch_6
        0x140b7 -> :sswitch_2
        0x18577 -> :sswitch_0
        0x26d65a -> :sswitch_3
        0x26d65b -> :sswitch_4
        0x2f299a -> :sswitch_1
        0x6761d4f -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidMsgType(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1520
    const/4 v0, 0x0

    .line 1521
    .local v0, "status":Z
    packed-switch p1, :pswitch_data_0

    .line 1528
    const/4 v0, 0x0

    .line 1530
    :goto_0
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidMsgType type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    return v0

    .line 1525
    :pswitch_0
    const/4 v0, 0x1

    .line 1526
    goto :goto_0

    .line 1521
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidSCPProtocol(I)Z
    .locals 4
    .param p1, "protocolType"    # I

    .prologue
    .line 1504
    const/4 v0, 0x0

    .line 1505
    .local v0, "status":Z
    packed-switch p1, :pswitch_data_0

    .line 1513
    const/4 v0, 0x0

    .line 1515
    :goto_0
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidSCPProtocol protocolType-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    return v0

    .line 1510
    :pswitch_0
    const/4 v0, 0x1

    .line 1511
    goto :goto_0

    .line 1505
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private listExposedProvidersInternal(Z)[Landroid/os/Bundle;
    .locals 8
    .param p1, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2952
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2953
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2955
    .local v3, "finalagents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 2956
    .local v0, "agent":Landroid/os/Bundle;
    const-string v5, "uniqueId"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2957
    .local v2, "cs_id":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2958
    :cond_0
    const-string v5, "UcmService"

    const-string v6, "WARNING!!!! null/empty ID returned for agent bundle. Skipping agent."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2961
    :cond_1
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2962
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! Obscure CS agent bundle. Skipping agent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2965
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2967
    .end local v0    # "agent":Landroid/os/Bundle;
    .end local v2    # "cs_id":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Bundle;

    return-object v5
.end method

.method private listProvidersInternal(Z)[Landroid/os/Bundle;
    .locals 12
    .param p1, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2971
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2972
    .local v3, "uid":I
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 2973
    .local v2, "user_id":I
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2996
    :goto_0
    return-object v5

    .line 2976
    :cond_0
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "listProviders "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " and ismdmcaller-"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2978
    .local v6, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 2979
    .local v1, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v1, :cond_1

    .line 2983
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2984
    .local v10, "id":J
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2985
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WARNING!!!! access NOT allowed for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2990
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v7

    .line 2991
    .local v7, "cs":Landroid/os/Bundle;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2993
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 2995
    .end local v1    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v7    # "cs":Landroid/os/Bundle;
    .end local v10    # "id":J
    :cond_3
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listProviders filtered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    move-object v5, v0

    goto/16 :goto_0
.end method

.method private processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "adminId"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 929
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAdminConfigRequest is called...adminId-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uri-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/4 v7, 0x1

    .line 932
    .local v7, "status":Z
    if-eqz p3, :cond_1

    .line 933
    :try_start_0
    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 934
    .local v4, "pluginName":Ljava/lang/String;
    const-string v1, "applet_location"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 935
    .local v2, "appletLocation":Ljava/lang/String;
    const-string v1, "applet_id"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 936
    .local v3, "aid":[B
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAdminConfigRequest is called...appletLocation-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidFormFactor(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 939
    const-string v1, "reset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 940
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAdminConfigRequest removed pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 965
    .end local v2    # "appletLocation":Ljava/lang/String;
    .end local v3    # "aid":[B
    .end local v4    # "pluginName":Ljava/lang/String;
    :cond_1
    :goto_1
    return v7

    .line 945
    .restart local v2    # "appletLocation":Ljava/lang/String;
    .restart local v3    # "aid":[B
    .restart local v4    # "pluginName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 946
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    :cond_3
    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLjava/lang/String;I)V

    .line 949
    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 950
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAdminConfigRequest added pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 962
    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v2    # "appletLocation":Ljava/lang/String;
    .end local v3    # "aid":[B
    .end local v4    # "pluginName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 963
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAdminConfigRequest Exception"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 956
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "appletLocation":Ljava/lang/String;
    .restart local v3    # "aid":[B
    .restart local v4    # "pluginName":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_1

    .line 957
    const/4 v7, 0x0

    .line 958
    :try_start_1
    const-string v1, "UcmService"

    const-string v5, "processAdminConfigRequest not valid form factor"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private readPersistentAppletsInfoLocked()V
    .locals 21

    .prologue
    .line 1046
    const-string v3, "UcmService"

    const-string v19, "readPersistentAppletsInfoLocked is called..."

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v13, 0x0

    .line 1050
    .local v13, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1051
    const-string v3, "UcmService"

    const-string v19, "readPersistentAppletsInfoLocked mPersistentAppletInfoFile not exist..."

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    if-eqz v13, :cond_0

    .line 1096
    :try_start_1
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v13

    .line 1057
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    .line 1058
    .local v16, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1059
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    .line 1061
    .local v12, "eventType":I
    :goto_1
    const/4 v3, 0x2

    if-eq v12, v3, :cond_2

    const/4 v3, 0x1

    if-eq v12, v3, :cond_2

    .line 1062
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_1

    .line 1064
    :cond_2
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1065
    .local v17, "tagName":Ljava/lang/String;
    const-string v3, "applets"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1066
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .line 1068
    :cond_3
    const/4 v3, 0x2

    if-ne v12, v3, :cond_5

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v3, v0, :cond_5

    .line 1069
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1070
    const-string v3, "applet"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1072
    const/4 v3, 0x0

    const-string v19, "pluginName"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1073
    .local v6, "pluginName":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v19, "appletLocation"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1074
    .local v4, "appletLocation":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v19, "adminId"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1075
    .local v8, "adminId":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v19, "aid"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1077
    .local v9, "aid":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1078
    .local v7, "admin":I
    const/4 v5, 0x0

    .line 1079
    .local v5, "aidByte":[B
    if-eqz v9, :cond_4

    .line 1080
    invoke-static {v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1082
    :cond_4
    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLjava/lang/String;I)V

    .line 1083
    .local v2, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1084
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    .end local v2    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v4    # "appletLocation":Ljava/lang/String;
    .end local v5    # "aidByte":[B
    .end local v6    # "pluginName":Ljava/lang/String;
    .end local v7    # "admin":I
    .end local v8    # "adminId":Ljava/lang/String;
    .end local v9    # "aid":Ljava/lang/String;
    :cond_5
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    .line 1089
    const/4 v3, 0x1

    if-ne v12, v3, :cond_3

    .line 1094
    :cond_6
    if-eqz v13, :cond_7

    .line 1096
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1102
    .end local v12    # "eventType":I
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tagName":Ljava/lang/String;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1103
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1104
    .local v15, "key":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 1105
    .local v18, "value":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    const-string v3, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PersistentApplet  key-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const-string v3, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PersistentApplet  pluginName-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const-string v3, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PersistentApplet  AID-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const-string v3, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PersistentApplet  appletLocation-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const-string v3, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PersistentApplet  adminId-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1091
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":Ljava/lang/String;
    .end local v18    # "value":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    :catch_0
    move-exception v10

    .line 1092
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "UcmService"

    const-string v19, "Error reading persistent applet info, starting from scratch"

    move-object/from16 v0, v19

    invoke-static {v3, v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1094
    if-eqz v13, :cond_7

    .line 1096
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 1097
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 1094
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_8

    .line 1096
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1098
    :cond_8
    :goto_4
    throw v3

    .line 1097
    :catch_2
    move-exception v3

    goto/16 :goto_0

    .restart local v12    # "eventType":I
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "tagName":Ljava/lang/String;
    :catch_3
    move-exception v3

    goto/16 :goto_2

    .end local v12    # "eventType":I
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tagName":Ljava/lang/String;
    :catch_4
    move-exception v19

    goto :goto_4
.end method

.method private readPersistentServicesLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v12, 0x1

    .line 1146
    const-string v11, "UcmService"

    const-string v13, "readPersistentServicesLocked is called..."

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/4 v3, 0x0

    .line 1150
    .local v3, "fis":Ljava/io/FileInputStream;
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    if-nez v11, :cond_1

    .line 1151
    const-string v11, "UcmService"

    const-string v12, "persistent service list is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1156
    :cond_1
    :try_start_0
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    move v11, v12

    :goto_1
    iput-boolean v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFileDidNotExist:Z

    .line 1157
    iget-boolean v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFileDidNotExist:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_3

    .line 1188
    if-eqz v3, :cond_0

    .line 1190
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1191
    :catch_0
    move-exception v11

    goto :goto_0

    .line 1156
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 1161
    :cond_3
    :try_start_2
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 1162
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 1163
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 1164
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v6, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1165
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1167
    .local v2, "eventType":I
    :goto_2
    if-eq v2, v14, :cond_4

    if-eq v2, v12, :cond_4

    .line 1168
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_2

    .line 1170
    :cond_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1171
    .local v7, "tagName":Ljava/lang/String;
    const-string v11, "services"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1172
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1174
    :cond_5
    if-ne v2, v14, :cond_6

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-ne v11, v14, :cond_6

    .line 1175
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1176
    const-string v11, "service"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1177
    const/4 v11, 0x0

    const-string v13, "uid"

    invoke-interface {v6, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1178
    .local v8, "uidString":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v13, "uniqueId"

    invoke-interface {v6, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1179
    .local v9, "uniqueString":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    .end local v8    # "uidString":Ljava/lang/String;
    .end local v9    # "uniqueString":Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 1183
    if-ne v2, v12, :cond_5

    .line 1188
    :cond_7
    if-eqz v3, :cond_8

    .line 1190
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1196
    .end local v2    # "eventType":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_8
    :goto_3
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1197
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1198
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1199
    .local v10, "value":Ljava/lang/Integer;
    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PersistentServices  key-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PersistentServices  value-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1185
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Integer;
    :catch_1
    move-exception v0

    .line 1186
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v11, "UcmService"

    const-string v12, "Error reading persistent services, starting from scratch"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1188
    if-eqz v3, :cond_8

    .line 1190
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 1191
    :catch_2
    move-exception v11

    goto :goto_3

    .line 1188
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    if-eqz v3, :cond_9

    .line 1190
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1192
    :cond_9
    :goto_5
    throw v11

    .line 1191
    .restart local v2    # "eventType":I
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "tagName":Ljava/lang/String;
    :catch_3
    move-exception v11

    goto :goto_3

    .end local v2    # "eventType":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    :catch_4
    move-exception v12

    goto :goto_5
.end method

.method private refreshAgentList(ILandroid/os/Bundle;)V
    .locals 24
    .param p1, "userId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 715
    :try_start_0
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "*****refreshAgentList userId-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is called***"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemReadyCalled:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 717
    const-string v21, "UcmService"

    const-string v22, "refreshAgentList system ready is not called yet. Ignoring agent refresh logic"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :goto_0
    return-void

    .line 721
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 722
    .local v15, "pm":Landroid/content/pm/PackageManager;
    move/from16 v0, p1

    invoke-static {v15, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->resolveAllowedAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v17

    .line 723
    .local v17, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 724
    .local v13, "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 725
    const/4 v3, 0x0

    .line 726
    .local v3, "activatedPackage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 728
    .local v8, "expiredPackage":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 729
    const-string v21, "event"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 730
    .local v7, "event":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_4

    .line 731
    const-string v21, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 735
    :cond_1
    :goto_1
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "event "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", activatedPackage-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",expiredPackage-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .end local v7    # "event":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 738
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mPersistentServices size is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 741
    .local v16, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static/range {v16 .. v16}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v12

    .line 742
    .local v12, "name":Landroid/content/ComponentName;
    if-nez v12, :cond_5

    .line 743
    const-string v21, "UcmService"

    const-string v22, "name is empty"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 882
    .end local v3    # "activatedPackage":Ljava/lang/String;
    .end local v8    # "expiredPackage":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v13    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v16    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v17    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v6

    .line 883
    .local v6, "e":Ljava/lang/Exception;
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exceptioon in refreshAgentList main- "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 732
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "activatedPackage":Ljava/lang/String;
    .restart local v7    # "event":I
    .restart local v8    # "expiredPackage":Ljava/lang/String;
    .restart local v13    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v7, v0, :cond_1

    .line 733
    :try_start_1
    const-string v21, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 746
    .end local v7    # "event":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "name":Landroid/content/ComponentName;
    .restart local v16    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    new-instance v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v4, v0, v1, v12}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;-><init>(Landroid/content/Context;Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/content/ComponentName;)V

    .line 747
    .local v4, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v11, 0x0

    .line 748
    .local v11, "isValidAgent":Z
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 752
    .local v5, "agentPackageName":Ljava/lang/String;
    :try_start_2
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "-------Processing started for agentPackageName----- -"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    if-eqz v8, :cond_6

    .line 754
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 755
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "agentPackageName -"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not an active plugin. Its license is expired. Ignoring it..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 858
    :catch_1
    move-exception v6

    .line 859
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exceptioon in refreshAgentList loop - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 760
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_4
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "  agentPackageName -"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is an active plugin"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const-string v21, "UcmService"

    const-string v22, "  Check if caller has UCS Plugin permission..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 763
    :try_start_5
    const-string v21, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_9

    .line 764
    const-string v21, "UcmService"

    const-string v22, "  Agent has UCS PLUGIN permission. Processing further..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemStorage(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 766
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "  agentPackageName "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is system storage. Checking system signature"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v21

    if-nez v21, :cond_7

    .line 768
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "  system storage found - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not valid. Ignoring it..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 778
    :catch_2
    move-exception v18

    .line 779
    .local v18, "se":Ljava/lang/Exception;
    :try_start_6
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "  Exception se-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 771
    .end local v18    # "se":Ljava/lang/Exception;
    :cond_7
    :try_start_7
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "  Valid system storage found is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 784
    :cond_8
    :try_start_8
    const-string v21, "com.samsung.ucm.baiplugin"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isCACCardRegistered()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 786
    const-string v21, "UcmService"

    const-string v22, "  Old Bai solution is registered. Ignore binding to new Bai plugin..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 775
    :cond_9
    :try_start_9
    const-string v21, "UcmService"

    const-string v22, "  Agent don\'t has UCS PLUGIN permission. Ignoring it..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_2

    .line 790
    :cond_a
    :try_start_a
    const-string v21, "com.sec.smartcard.manager"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 791
    const-string v21, "com.baimobile.android.pcsclite.service"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 793
    const-string v21, "UcmService"

    const-string v22, "PCSC Service doesn\'t exist. Ignore binidng to old Bai plugin..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 796
    :cond_b
    const-string v21, "com.samsung.ucm.baiplugin"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isCACCardRegistered()Z

    move-result v21

    if-nez v21, :cond_c

    .line 798
    const-string v21, "UcmService"

    const-string v22, "New Bai solution is installed. Ignore binding to old Bai plugin..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 804
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_16

    .line 805
    if-eqz v16, :cond_d

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    if-nez v21, :cond_e

    .line 807
    :cond_d
    const-string v21, "UcmService"

    const-string v22, "resolveInfo null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 810
    :cond_e
    new-instance v21, Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->initialize(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    if-lez v21, :cond_14

    .line 813
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 814
    .local v20, "uniqueId":Ljava/lang/String;
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    move/from16 v19, v0

    .line 815
    .local v19, "serviceUid":I
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "  Agent uniqueId-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " and serviceUid-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 818
    .local v14, "persistUid":I
    move/from16 v0, v19

    if-ne v14, v0, :cond_10

    .line 819
    const-string v21, "UcmService"

    const-string v22, "  Matched found in mPersistentServices map"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v11, 0x1

    .line 847
    .end local v14    # "persistUid":I
    .end local v19    # "serviceUid":I
    .end local v20    # "uniqueId":Ljava/lang/String;
    :cond_f
    :goto_3
    if-eqz v11, :cond_15

    .line 848
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "  Adding new agent -"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 822
    .restart local v14    # "persistUid":I
    .restart local v19    # "serviceUid":I
    .restart local v20    # "uniqueId":Ljava/lang/String;
    :cond_10
    const-string v21, "UcmService"

    const-string v22, "  UID comparision failed for agent. Ignoring it.."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 825
    .end local v14    # "persistUid":I
    :cond_11
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 826
    const-string v21, "UcmService"

    const-string v22, "  Agent entry is not in PersistentServices but its system signed agent. Ading it.."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v11, 0x1

    goto :goto_3

    .line 829
    :cond_12
    if-eqz v3, :cond_13

    .line 830
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 831
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "  agentPackageName -"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is an active plugin"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 834
    :cond_13
    if-nez v3, :cond_f

    .line 835
    const-string v21, "UcmService"

    const-string v22, "  Agent entry is not in PersistentServices and it\'s not system signed agent. Ignoring it.."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 840
    .end local v19    # "serviceUid":I
    .end local v20    # "uniqueId":Ljava/lang/String;
    :cond_14
    const-string v21, "UcmService"

    const-string v22, "  mPersistentServices size is 0. Trying to add new agent "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 842
    const-string v21, "UcmService"

    const-string v22, "  Adding system signed agent"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 851
    :cond_15
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " Unbind agent -"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    goto/16 :goto_2

    .line 856
    :cond_16
    invoke-virtual {v13, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    .line 863
    .end local v4    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v5    # "agentPackageName":Ljava/lang/String;
    .end local v11    # "isValidAgent":Z
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v16    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_17
    const/4 v3, 0x0

    .line 864
    const/4 v8, 0x0

    .line 867
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    :try_start_b
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_19

    .line 868
    invoke-virtual {v13, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 869
    .restart local v4    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    .line 870
    const-string v21, "UcmService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "  Removing unwanted agent- "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_18
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 867
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 876
    .end local v4    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mServicesLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 877
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentServicesLocked()V

    .line 879
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentServicesLocked()V

    .line 880
    monitor-exit v22

    goto/16 :goto_0

    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v21
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
.end method

.method private registerPersonaObserver()V
    .locals 4

    .prologue
    .line 534
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getPersonaService()Landroid/os/PersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 535
    const-string v1, "UcmService"

    const-string v2, "registerPersonaObserver is called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getPersonaService()Landroid/os/PersonaManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;

    invoke-direct {v2, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerPersonaObserver exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeMDMPolicies(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adminUid"    # I

    .prologue
    .line 605
    const-string v4, "UcmService"

    const-string v5, "removeMDMPolicies"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    .line 607
    :cond_0
    const-string v4, "UcmService"

    const-string v5, "invalid argument"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_1
    :goto_0
    return-void

    .line 611
    :cond_2
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PackageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", admin UID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, p2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .line 614
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v0

    .line 615
    .local v0, "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    if-nez v0, :cond_3

    .line 616
    const-string v4, "UcmService"

    const-string v5, "Failed to get APP Policy"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    const-string v4, "com.samsung.ucm.baiplugin"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 622
    const-string v4, "com.baimobile.android.pcsclite.service"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_4
    invoke-virtual {v0, v2}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v3

    .line 627
    .local v3, "status":Z
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeMDMPolicies removePackagesFromForceStopBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual {v0, v2}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v3

    .line 630
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeMDMPolicies removePackagesFromClearCacheBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {v0, v2}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v3

    .line 633
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeMDMPolicies removePackagesFromClearDataBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v0, p1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 636
    const-string v4, "com.samsung.ucm.baiplugin"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 638
    const-string v4, "com.baimobile.android.pcsclite.service"

    invoke-virtual {v0, v4}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static resolveAllowedAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1209
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolveAllowedAgents for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    sget-object v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

    const/16 v6, 0x80

    invoke-virtual {p0, v5, v6, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 1212
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1213
    .local v0, "allowedAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1214
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    .line 1216
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 1218
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1219
    .local v2, "packageName":Ljava/lang/String;
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1223
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v0
.end method

.method private sendStateChangeBroadcast(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 3403
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.ucs.ucsservice.stateblocked"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3404
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3405
    .local v0, "csname":Ljava/lang/String;
    const-string v5, "UCS_STATE"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3406
    const-string v5, "UCS_CSNAME"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3407
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcast CSNAME "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3411
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v5, :cond_0

    .line 3412
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 3414
    :cond_0
    const/4 v4, 0x0

    .line 3415
    .local v4, "personaIds":[I
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v5, :cond_1

    .line 3416
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v5}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v4

    .line 3418
    :cond_1
    if-eqz v4, :cond_3

    .line 3419
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 3420
    aget v5, v4, v2

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3421
    const-string v5, "KnoxKeyguardReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send personaId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3422
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.knox.kss"

    const-string v7, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3424
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    aget v7, v4, v2

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3419
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3428
    .end local v2    # "i":I
    .end local v4    # "personaIds":[I
    :catch_0
    move-exception v1

    .line 3429
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxKeyguardReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start: threw an exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3432
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method

.method private sendUCMKeyguardIntent(ZILjava/lang/String;)V
    .locals 6
    .param p1, "set"    # Z
    .param p2, "userId"    # I
    .param p3, "storagePkg"    # Ljava/lang/String;

    .prologue
    .line 4099
    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendUCMKeyguardIntent set - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", storage-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4101
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4102
    .local v2, "ucmKeyguardIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 4103
    const-string v3, "com.sec.enterprise.intent.action.UCM_KEYGUARD_SET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4107
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4108
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "userId"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4109
    const-string v3, "package_name"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4110
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4111
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4112
    const-string v3, "UcmService"

    const-string v4, "sendUCMKeyguardIntent intent sent to all..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4116
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "ucmKeyguardIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 4105
    .restart local v2    # "ucmKeyguardIntent":Landroid/content/Intent;
    :cond_0
    const-string v3, "com.sec.enterprise.intent.action.UCM_KEYGUARD_UNSET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4113
    .end local v2    # "ucmKeyguardIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 4114
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "vendor"    # Ljava/lang/String;
    .param p3, "ownerId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 4052
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setKeyguardStorageForCurrentUser called : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4053
    const/4 v4, 0x0

    .line 4054
    .local v4, "result":Z
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 4055
    .local v0, "dataDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v7, "system"

    invoke-direct {v5, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4056
    .local v5, "systemDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "users/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4057
    .local v6, "userDir":Ljava/io/File;
    new-instance v7, Landroid/util/AtomicFile;

    new-instance v8, Ljava/io/File;

    const-string v9, "ucm_keyguardconfig.xml"

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    .line 4058
    const/4 v2, 0x0

    .line 4060
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 4061
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4062
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4063
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4064
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 4065
    const/4 v7, 0x0

    const-string v8, "keyguard"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4066
    const/4 v7, 0x0

    const-string v8, "vendor"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4067
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v3, v7, v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4068
    const/4 v7, 0x0

    const-string v8, "owner"

    invoke-interface {v3, v7, v8, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4069
    const/4 v7, 0x0

    const-string v8, "keyguard"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4070
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4071
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 4072
    if-nez p1, :cond_0

    .line 4073
    const-string v7, "none"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v10, :cond_2

    .line 4074
    const-string v7, "persist.keyguard.ucs"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4078
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .line 4085
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    :goto_1
    return v4

    .line 4076
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const-string v7, "persist.keyguard.ucs"

    const-string v8, "true"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4079
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 4080
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 4081
    if-eqz v2, :cond_1

    .line 4082
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1
.end method

.method private setODEConfigInFile(I)V
    .locals 9
    .param p1, "config"    # I

    .prologue
    .line 4550
    const-string v7, "UcmService"

    const-string v8, "setODEConfigInFile"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4551
    new-instance v6, Ljava/io/File;

    const-string v7, "/efs/sec_efs"

    const-string v8, "odeConfig"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4552
    .local v6, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    .line 4553
    .local v3, "existFile":Z
    const/4 v4, 0x0

    .line 4555
    .local v4, "fis":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4556
    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .local v5, "fis":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .line 4565
    .end local v5    # "fis":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v4, :cond_0

    .line 4567
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4573
    :cond_0
    :goto_1
    return-void

    .line 4557
    :catch_0
    move-exception v1

    .line 4558
    .local v1, "e1":Ljava/io/FileNotFoundException;
    :goto_2
    const-string v7, "UcmService"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 4560
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 4561
    .local v2, "e2":Ljava/io/IOException;
    :goto_3
    const-string v7, "UcmService"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4562
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4568
    .end local v2    # "e2":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 4569
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "UcmService"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 4560
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 4557
    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private updateKeyguardConfig(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 5006
    const-string v4, "UcmService"

    const-string v5, "updateKeyguardConfig"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v3

    .line 5009
    .local v3, "keyguardUsed":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5010
    const-string v4, "UcmService"

    const-string v5, "remove useless keyguard config file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5011
    new-instance v2, Ljava/io/File;

    const-string v4, "/efs/sec_efs"

    const-string v5, "keyguardConfig"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5012
    .local v2, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 5013
    .local v1, "existFile":Z
    if-nez v1, :cond_1

    .line 5014
    const-string v4, "UcmService"

    const-string v5, "keyguard config file does not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5023
    .end local v1    # "existFile":Z
    .end local v2    # "keyguardConfigFile":Ljava/io/File;
    .end local v3    # "keyguardUsed":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 5016
    .restart local v1    # "existFile":Z
    .restart local v2    # "keyguardConfigFile":Ljava/io/File;
    .restart local v3    # "keyguardUsed":Ljava/lang/String;
    :cond_1
    const-string v4, "UcmService"

    const-string v5, "keyguard config file exist so delete it"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5017
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5020
    .end local v1    # "existFile":Z
    .end local v2    # "keyguardConfigFile":Ljava/io/File;
    .end local v3    # "keyguardUsed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 5021
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateMDMPolicies(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 572
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMDMPolicies userId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, "vendorName":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "none"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 577
    :cond_0
    const-string v5, "UcmService"

    const-string v6, "UCM keyguard is not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_1
    :goto_0
    return-void

    .line 581
    :cond_2
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UCM keyguard is enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "onwerId":Ljava/lang/String;
    const/4 v0, -0x1

    .line 584
    .local v0, "configuratorId":I
    if-eqz v2, :cond_3

    .line 586
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 592
    :cond_3
    :goto_1
    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    .line 593
    const-string v5, "UcmService"

    const-string v6, "UCM Keyguard parsing failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 587
    :catch_0
    move-exception v1

    .line 588
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 597
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    invoke-direct {p0, v3, p1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPluginUsedInOtherUser(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 599
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, "vendorPackageName":Ljava/lang/String;
    invoke-direct {p0, v4, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->removeMDMPolicies(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private verifyPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    .line 4590
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPassword : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4591
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v4, v1, :cond_1

    .line 4592
    :cond_0
    const-string v1, "UcmService"

    const-string v2, "uri is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4603
    :goto_0
    return v0

    .line 4596
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v4, v1, :cond_3

    .line 4597
    :cond_2
    const-string v1, "UcmService"

    const-string v2, "password is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4603
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writePersistentAppletsInfoLocked()V
    .locals 10

    .prologue
    .line 1010
    const-string v7, "UcmService"

    const-string v8, "writePersistentAppletsInfoLocked is called..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/4 v3, 0x0

    .line 1014
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1015
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1016
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1017
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1018
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1019
    const/4 v7, 0x0

    const-string v8, "applets"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1020
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1021
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1022
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 1023
    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persistent  key-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v7, 0x0

    const-string v8, "applet"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1025
    const/4 v7, 0x0

    const-string v8, "appletLocation"

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1026
    const/4 v7, 0x0

    const-string v8, "pluginName"

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1027
    const/4 v7, 0x0

    const-string v8, "adminId"

    iget v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1028
    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    if-eqz v7, :cond_0

    .line 1029
    const/4 v7, 0x0

    const-string v8, "aid"

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    invoke-direct {p0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1031
    :cond_0
    const/4 v7, 0x0

    const-string v8, "applet"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1036
    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 1037
    .local v1, "e1":Ljava/io/IOException;
    const-string v7, "UcmService"

    const-string v8, "Error writing accounts"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    if-eqz v3, :cond_1

    .line 1039
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1042
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 1033
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    const-string v8, "applets"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1034
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1035
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private writePersistentServicesLocked()V
    .locals 8

    .prologue
    .line 1119
    const/4 v2, 0x0

    .line 1121
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1122
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1123
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1124
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1125
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1126
    const/4 v5, 0x0

    const-string v6, "services"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1128
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v5, 0x0

    const-string v6, "service"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1129
    const/4 v5, 0x0

    const-string v6, "uid"

    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1130
    const/4 v5, 0x0

    const-string v6, "uniqueId"

    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1131
    const/4 v5, 0x0

    const-string v6, "service"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1136
    .end local v0    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 1137
    .local v1, "e1":Ljava/io/IOException;
    const-string v5, "UcmService"

    const-string v6, "Error writing accounts"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1138
    if-eqz v2, :cond_0

    .line 1139
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1142
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 1133
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    const-string v6, "services"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1134
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1135
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public APDUCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "apdu"    # [B
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 3653
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APDUCommand : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3656
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 3657
    :cond_0
    const-string v5, "UcmService"

    const-string v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3702
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3662
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-nez p2, :cond_2

    .line 3663
    const-string v5, "UcmService"

    const-string v6, "apdu is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3665
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3668
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    .line 3669
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_3

    .line 3670
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3675
    :goto_1
    if-nez v0, :cond_4

    .line 3676
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3678
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3672
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3681
    :cond_4
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3682
    new-instance v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3683
    .local v4, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3684
    iget-object v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3685
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3688
    .end local v4    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3689
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_6

    .line 3690
    const-string v5, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3692
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3695
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3696
    if-nez v1, :cond_7

    .line 3697
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3698
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3699
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3700
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_7
    move-object v2, v1

    .line 3702
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public authenticatePin(Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3389
    const-string v0, "UcmService"

    const-string v1, "need to check authenticatePin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    const/4 v0, 0x0

    return v0
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "oldPin"    # Ljava/lang/String;
    .param p3, "newPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xe

    const/16 v9, 0x10

    const/4 v8, 0x1

    .line 3549
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changePin : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3552
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 3553
    :cond_0
    const-string v5, "UcmService"

    const-string v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3605
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3558
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-eqz p2, :cond_2

    const-string v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_3

    .line 3559
    :cond_2
    const-string v5, "UcmService"

    const-string v6, "oldPin is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3561
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3564
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    if-eqz p3, :cond_4

    const-string v5, ""

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_5

    .line 3565
    :cond_4
    const-string v5, "UcmService"

    const-string v6, "newPin is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3567
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3570
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x0

    .line 3571
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_6

    .line 3572
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3577
    :goto_1
    if-nez v0, :cond_7

    .line 3578
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3580
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3574
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3583
    :cond_7
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 3584
    new-instance v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3585
    .local v4, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3586
    iget-object v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3587
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3590
    .end local v4    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3591
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_9

    .line 3592
    const-string v5, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3594
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3597
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_9
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3598
    if-nez v1, :cond_a

    .line 3599
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3601
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3602
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_a
    move-object v2, v1

    .line 3605
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public configureKeyguardSettings(ILjava/lang/String;)Z
    .locals 34
    .param p1, "userId"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 4119
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configureKeyguardSettings userId-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4120
    const/16 v30, 0x0

    .line 4121
    .local v30, "result":Z
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4122
    :cond_0
    const-string v4, "UcmService"

    const-string v5, "disable keyguard in UCS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4123
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v32

    .line 4124
    .local v32, "storageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4125
    .local v8, "storagePkgName":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;

    move-result-object v28

    .line 4126
    .local v28, "onwerId":Ljava/lang/String;
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storageName - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", onwerId-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    const-string v4, "none"

    const-string v5, "none"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v30

    .line 4128
    if-eqz v30, :cond_1

    .line 4129
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendUCMKeyguardIntent(ZILjava/lang/String;)V

    .line 4131
    :cond_1
    if-nez p1, :cond_3

    .line 4133
    const/4 v5, 0x0

    :try_start_0
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v9, -0x1

    move-object/from16 v4, p0

    move/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4137
    :goto_0
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteKeyguardConfig()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v30, :cond_2

    const/4 v4, 0x1

    .line 4237
    .end local v8    # "storagePkgName":Ljava/lang/String;
    .end local v28    # "onwerId":Ljava/lang/String;
    .end local v32    # "storageName":Ljava/lang/String;
    :goto_1
    return v4

    .line 4134
    .restart local v8    # "storagePkgName":Ljava/lang/String;
    .restart local v28    # "onwerId":Ljava/lang/String;
    .restart local v32    # "storageName":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 4135
    .local v21, "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4137
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 4138
    :cond_3
    const/16 v4, 0x64

    move/from16 v0, p1

    if-lt v0, v4, :cond_4

    .line 4140
    :try_start_1
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 4142
    .local v9, "configuratorId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 4143
    .local v24, "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    .line 4144
    .local v6, "ownerUid":I
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4146
    if-ne v6, v9, :cond_5

    .line 4147
    const/4 v5, 0x0

    const/4 v9, -0x1

    move-object/from16 v4, p0

    move/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z

    .end local v6    # "ownerUid":I
    .end local v9    # "configuratorId":I
    .end local v24    # "id":J
    :cond_4
    :goto_2
    move/from16 v4, v30

    .line 4156
    goto :goto_1

    .line 4150
    .restart local v6    # "ownerUid":I
    .restart local v9    # "configuratorId":I
    .restart local v24    # "id":J
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v4, p0

    move/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 4152
    .end local v6    # "ownerUid":I
    .end local v9    # "configuratorId":I
    .end local v24    # "id":J
    :catch_1
    move-exception v21

    .line 4153
    .restart local v21    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 4159
    .end local v8    # "storagePkgName":Ljava/lang/String;
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v28    # "onwerId":Ljava/lang/String;
    .end local v32    # "storageName":Ljava/lang/String;
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4160
    .local v20, "csName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 4161
    .local v19, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4162
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v4, :cond_7

    .line 4163
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAdminForEnforcedCredentialStorageAsUser(I)I

    move-result v9

    .line 4164
    .restart local v9    # "configuratorId":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configuratorId - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4165
    const/4 v4, -0x1

    if-ne v9, v4, :cond_8

    .line 4166
    const-string v4, "UcmService"

    const-string v5, "enforced null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 4169
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v30

    .line 4170
    if-eqz v30, :cond_b

    .line 4171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 4173
    .local v26, "id2":J
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4174
    .restart local v8    # "storagePkgName":Ljava/lang/String;
    if-nez p1, :cond_d

    .line 4175
    const/4 v11, 0x1

    const/4 v15, -0x1

    move-object/from16 v10, p0

    move v12, v9

    move/from16 v13, p1

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z

    move-result v30

    .line 4189
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintLockscreenState(I)I

    move-result v31

    .line 4190
    .local v31, "state":I
    if-eqz v31, :cond_a

    .line 4191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x0

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(ZI)V

    .line 4194
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x0

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(II)V

    .line 4195
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendUCMKeyguardIntent(ZILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4199
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4203
    .end local v8    # "storagePkgName":Ljava/lang/String;
    .end local v26    # "id2":J
    .end local v31    # "state":I
    :cond_b
    :goto_4
    if-nez p1, :cond_7

    .line 4204
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 4206
    .local v11, "csNameForProp":[B
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 4207
    .local v33, "storageType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v29

    .line 4208
    .local v29, "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v29, :cond_c

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 4209
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 4212
    :cond_c
    invoke-static/range {v33 .. v33}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v13

    .line 4213
    .local v13, "storageTypeIndex":I
    if-gez v13, :cond_f

    .line 4214
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UCM does not support this storage type for KG : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 4176
    .end local v11    # "csNameForProp":[B
    .end local v13    # "storageTypeIndex":I
    .end local v29    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v33    # "storageType":Ljava/lang/String;
    .restart local v8    # "storagePkgName":Ljava/lang/String;
    .restart local v26    # "id2":J
    :cond_d
    const/16 v4, 0x64

    move/from16 v0, p1

    if-lt v0, v4, :cond_9

    .line 4178
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 4179
    .restart local v24    # "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    .line 4180
    .restart local v6    # "ownerUid":I
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4182
    if-ne v6, v9, :cond_e

    .line 4183
    const/4 v11, 0x1

    const/4 v15, -0x1

    move-object/from16 v10, p0

    move v12, v6

    move/from16 v13, p1

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z

    move-result v30

    goto/16 :goto_3

    .line 4186
    :cond_e
    const/4 v5, 0x1

    move-object/from16 v4, p0

    move/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v30

    goto/16 :goto_3

    .line 4196
    .end local v6    # "ownerUid":I
    .end local v8    # "storagePkgName":Ljava/lang/String;
    .end local v24    # "id":J
    :catch_2
    move-exception v21

    .line 4197
    .restart local v21    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4199
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    .end local v21    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4218
    .end local v26    # "id2":J
    .restart local v11    # "csNameForProp":[B
    .restart local v13    # "storageTypeIndex":I
    .restart local v29    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .restart local v33    # "storageType":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 4219
    .local v22, "enabledSCP":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v14

    .line 4220
    .local v14, "scpIndex":I
    if-gez v14, :cond_10

    .line 4221
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UCM does not support this SCP type : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4222
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 4225
    :cond_10
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v15, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 4226
    .local v15, "pinMinLength":I
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    move/from16 v16, v0

    .line 4227
    .local v16, "pinMaxLength":I
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    move/from16 v17, v0

    .line 4228
    .local v17, "pukMinLength":I
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    move/from16 v18, v0

    .line 4230
    .local v18, "pukMaxLength":I
    new-instance v10, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v12, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    invoke-direct/range {v10 .. v18}, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;-><init>([B[BIIIIII)V

    .line 4231
    .local v10, "keyProp":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v30, :cond_11

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 4236
    .end local v9    # "configuratorId":I
    .end local v10    # "keyProp":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .end local v11    # "csNameForProp":[B
    .end local v13    # "storageTypeIndex":I
    .end local v14    # "scpIndex":I
    .end local v15    # "pinMinLength":I
    .end local v16    # "pinMaxLength":I
    .end local v17    # "pukMinLength":I
    .end local v18    # "pukMaxLength":I
    .end local v19    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v22    # "enabledSCP":Ljava/lang/String;
    .end local v29    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v33    # "storageType":Ljava/lang/String;
    :cond_12
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configureKeyguardSettings return : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v30

    .line 4237
    goto/16 :goto_1
.end method

.method public configureODESettings(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 36
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "scpParam"    # Landroid/os/Bundle;

    .prologue
    .line 4242
    const-string v33, "UcmService"

    const-string v34, "configureODESettings"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    const-string v33, "ro.crypto.state"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4244
    .local v9, "crypto_state":Ljava/lang/String;
    const-string v33, "ro.vold.forceencryption"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4245
    .local v16, "force_crypto_state":Ljava/lang/String;
    const-string v33, "ro.boot.ucs_mode"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 4246
    .local v31, "ucs_flag":Ljava/lang/String;
    new-instance v3, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 4247
    .local v3, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v32

    .line 4248
    .local v32, "uriuid":I
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v28

    .line 4249
    .local v28, "source":Ljava/lang/String;
    const-string v33, "UcmService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "configureODESettings uriuid-"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    const-string v33, "encrypted"

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_0

    const-string v33, "1"

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_0

    .line 4252
    const-string v33, "UcmService"

    const-string v34, "device is encrypted state in non-default encryption device."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    const v33, 0xc000200

    .line 4403
    :goto_0
    return v33

    .line 4255
    :cond_0
    const-string v33, "2"

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 4256
    const-string v33, "UcmService"

    const-string v34, "device is encrypted with UCS so cannot change configuration"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    const v33, 0xc000200

    goto :goto_0

    .line 4260
    :cond_1
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v11

    .line 4261
    .local v11, "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    move-object/from16 v33, v0

    if-eqz v33, :cond_5

    .line 4262
    const-string v33, "UcmService"

    const-string v34, "configureODESettings Validating current ODE setting configurator"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorPkg(I)[B

    move-result-object v7

    .line 4264
    .local v7, "callingPkg":[B
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorSignature(I)[B

    move-result-object v8

    .line 4265
    .local v8, "callingPkgSign":[B
    if-eqz v7, :cond_3

    .line 4266
    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->compareCallingPkg([B[B)Z

    move-result v33

    if-eqz v33, :cond_2

    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v33

    if-nez v33, :cond_4

    .line 4267
    :cond_2
    const-string v33, "UcmService"

    const-string v34, "configureODESettings invalid caller is trying to change ODE configuration. Error..."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    const v33, 0xc000300

    goto :goto_0

    .line 4271
    :cond_3
    const v33, 0xc000300

    goto :goto_0

    .line 4273
    :cond_4
    const-string v33, "UcmService"

    const-string v34, "configureODESettings valid caller is changing ODE configuration..."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4276
    .end local v7    # "callingPkg":[B
    .end local v8    # "callingPkgSign":[B
    :cond_5
    const-string v33, "reset"

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 4277
    const-string v33, "UcmService"

    const-string v34, "disable configureODESettings in UCS"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    const-string v33, "persist.security.ucs"

    const-string v34, ""

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4279
    const-string v33, "persist.security.ucs.csname"

    const-string v34, ""

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4280
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteODEConfig()Z

    move-result v12

    .line 4281
    .local v12, "delete":Z
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v0, v12, :cond_6

    .line 4282
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 4284
    :cond_6
    const/16 v33, 0x10d

    goto/16 :goto_0

    .line 4287
    .end local v12    # "delete":Z
    :cond_7
    const/16 v33, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_8

    .line 4288
    const-string v33, "UcmService"

    const-string v34, "uri is empty"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4289
    const/16 v33, 0x10

    goto/16 :goto_0

    .line 4292
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v33, v0

    if-eqz v33, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v33

    if-nez v33, :cond_a

    .line 4293
    :cond_9
    const/16 v33, 0xe

    goto/16 :goto_0

    .line 4296
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 4297
    .local v21, "pluginName":Ljava/lang/String;
    if-eqz v21, :cond_b

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_c

    .line 4298
    :cond_b
    const/16 v33, 0xe

    goto/16 :goto_0

    .line 4301
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 4302
    .local v4, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v4, :cond_d

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    if-eqz v33, :cond_d

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_d

    .line 4305
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 4306
    const-string v33, "UcmService"

    const-string v34, "Find UcmAgentWrapper"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4308
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isODESupport:Z

    move/from16 v33, v0

    if-nez v33, :cond_e

    .line 4309
    const-string v33, "UcmService"

    const-string v34, "This agent dose not support ODE"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    const/16 v33, 0x3

    goto/16 :goto_0

    .line 4313
    :cond_e
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    .line 4314
    .local v2, "AID":[B
    if-eqz v2, :cond_f

    array-length v0, v2

    move/from16 v33, v0

    if-nez v33, :cond_10

    .line 4315
    :cond_f
    const-string v33, "UcmService"

    const-string v34, "AID is empty"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4316
    const/16 v33, 0x4

    goto/16 :goto_0

    .line 4317
    :cond_10
    array-length v0, v2

    move/from16 v33, v0

    const/16 v34, 0x5

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_11

    array-length v0, v2

    move/from16 v33, v0

    const/16 v34, 0x10

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_12

    .line 4318
    :cond_11
    const-string v33, "UcmService"

    const-string v34, "AID range is not proper"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4319
    const/16 v33, 0x4

    goto/16 :goto_0

    .line 4322
    :cond_12
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 4323
    .local v29, "storageType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v22

    .line 4324
    .local v22, "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v22, :cond_13

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_13

    .line 4325
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 4327
    :cond_13
    invoke-static/range {v29 .. v29}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v30

    .line 4328
    .local v30, "storageTypeIndex":I
    if-gez v30, :cond_14

    .line 4329
    const-string v33, "UcmService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "UCM does not support this storage type : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4330
    const/16 v33, 0x4

    goto/16 :goto_0

    .line 4333
    :cond_14
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v14, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    .line 4334
    .local v14, "enabledSCP":Ljava/lang/String;
    const/16 v26, 0x0

    .line 4335
    .local v26, "scpCreationParam":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    invoke-static {v14}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v27

    .line 4336
    .local v27, "scpIndex":I
    if-gez v27, :cond_15

    .line 4337
    const-string v33, "UcmService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "UCM does not support this SCP type : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4338
    const/16 v33, 0x4

    goto/16 :goto_0

    .line 4339
    :cond_15
    const-string v33, "NONE"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_16

    .line 4342
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->generateParam(Landroid/os/Bundle;)Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    move-result-object v26

    .line 4343
    if-nez v26, :cond_16

    .line 4344
    const-string v33, "UcmService"

    const-string v34, "Can\'t find SCP parameter from bundle"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4345
    const/16 v33, 0x4

    goto/16 :goto_0

    .line 4347
    :catch_0
    move-exception v13

    .line 4348
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 4349
    const-string v33, "UcmService"

    const-string v34, "failed to generate SCP param from Bundle"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_16
    const-string v33, "persist.security.ucs"

    const-string v34, "1"

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4354
    const-string v33, "persist.security.ucs.csname"

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4356
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v15, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    .line 4358
    .local v15, "enabledWrap":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    move/from16 v20, v0

    .line 4359
    .local v20, "pinMinLength":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    move/from16 v19, v0

    .line 4360
    .local v19, "pinMaxLength":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v6, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 4361
    .local v6, "authMode":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 4362
    .local v5, "authMaxCnt":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    move/from16 v24, v0

    .line 4363
    .local v24, "pukMinLength":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    move/from16 v23, v0

    .line 4364
    .local v23, "pukMaxLength":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 4365
    .local v10, "csName":[B
    if-eqz v10, :cond_17

    array-length v0, v10

    move/from16 v33, v0

    if-nez v33, :cond_18

    .line 4366
    :cond_17
    const-string v33, "UcmService"

    const-string v34, "csName is empty"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    const/16 v33, 0x4

    goto/16 :goto_0

    .line 4370
    :cond_18
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v18

    .line 4372
    .local v18, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 4373
    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 4374
    move/from16 v0, v30

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 4375
    move/from16 v0, v27

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 4376
    move-object/from16 v0, v18

    iput v15, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 4377
    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 4378
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 4379
    move-object/from16 v0, v18

    iput v6, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 4380
    move-object/from16 v0, v18

    iput v5, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 4381
    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 4382
    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 4383
    move-object/from16 v0, v18

    iput-object v10, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 4384
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorPkg(I)[B

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 4385
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorSignature(I)[B

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 4387
    if-eqz v26, :cond_19

    .line 4388
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toTLV()[B

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4395
    :cond_19
    :goto_1
    invoke-static/range {v18 .. v18}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result v25

    .line 4396
    .local v25, "save":Z
    const/16 v33, 0x1

    move/from16 v0, v33

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a

    .line 4397
    const-string v33, "security.knox_ucs_mode"

    const-string v34, "true"

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4398
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 4390
    .end local v25    # "save":Z
    :catch_1
    move-exception v13

    .line 4391
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 4392
    const-string v33, "UcmService"

    const-string v34, " failed to convert SCP param to TLV"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4400
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v25    # "save":Z
    :cond_1a
    const/16 v33, 0x10d

    goto/16 :goto_0

    .line 4403
    .end local v2    # "AID":[B
    .end local v4    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v5    # "authMaxCnt":I
    .end local v6    # "authMode":I
    .end local v10    # "csName":[B
    .end local v14    # "enabledSCP":Ljava/lang/String;
    .end local v15    # "enabledWrap":I
    .end local v18    # "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v19    # "pinMaxLength":I
    .end local v20    # "pinMinLength":I
    .end local v22    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v23    # "pukMaxLength":I
    .end local v24    # "pukMinLength":I
    .end local v25    # "save":Z
    .end local v26    # "scpCreationParam":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    .end local v27    # "scpIndex":I
    .end local v29    # "storageType":Ljava/lang/String;
    .end local v30    # "storageTypeIndex":I
    :cond_1b
    const/16 v33, 0xe

    goto/16 :goto_0
.end method

.method public containsAlias(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4894
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 4895
    .local v13, "callerUid":I
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 4897
    .local v10, "agentResponse":Landroid/os/Bundle;
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containsAlias "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4898
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 4899
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 4900
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4901
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4937
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 4906
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 4907
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v5

    .line 4908
    .local v5, "uriuid":I
    const/4 v2, -0x1

    if-ne v5, v2, :cond_1

    move v5, v13

    .line 4909
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 4910
    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4911
    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 4912
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! containsAlias is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4913
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4914
    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4915
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 4917
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4920
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 4921
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    .line 4922
    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4923
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4924
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4925
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 4927
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p2

    invoke-interface {v12, v2, v0, v13}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v10

    .line 4928
    if-nez v10, :cond_4

    .line 4929
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4930
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 4931
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4932
    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4933
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 4935
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 4936
    .local v14, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containsAlias Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 4937
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public createSecureChannel(ILandroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .locals 9
    .param p1, "protocolType"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1536
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createSecureChannel protocolType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1538
    .local v5, "uid":I
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v7, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-interface {v6, v7, v5}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 1539
    const-string v6, "UcmService"

    const-string v7, "  Agent don\'t UCS PLUGIN permission. Returning..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    new-instance v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>()V

    .line 1541
    .local v1, "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    const/4 v6, 0x1

    iput v6, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    .line 1542
    const/16 v6, 0x41

    iput v6, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    .line 1562
    .end local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :goto_0
    return-object v1

    .line 1545
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidSCPProtocol(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1546
    const-string v6, "UcmService"

    const-string v7, "Invalid protocolType..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1549
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1551
    .local v2, "id":J
    :try_start_0
    invoke-static {p2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->generateParam(Landroid/os/Bundle;)Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1552
    .local v4, "param":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    if-nez v4, :cond_2

    .line 1560
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1555
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v6, v5, p1, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->createSecureChannel(IILcom/samsung/ucm/ucmservice/scp/CreationParam;)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1560
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1556
    .end local v4    # "param":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    :catch_0
    move-exception v0

    .line 1557
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in createSecureChannel -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1560
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public decrypt(Ljava/lang/String;[BLjava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1991
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1994
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 1995
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 1996
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1997
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    .line 2069
    :goto_0
    return-object v2

    .line 2001
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2002
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2003
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v18

    .line 2004
    .local v18, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    .line 2005
    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    .line 2006
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2007
    :cond_1
    move/from16 v5, v18

    .line 2011
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2012
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v17

    .line 2013
    .local v17, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    const/16 v17, 0x1

    .line 2015
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2016
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v19

    .line 2017
    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    .line 2018
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 2019
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decrypt new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    .end local v19    # "userId":I
    :cond_4
    :goto_1
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2028
    .local v12, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2029
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 2030
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! decrypt is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2032
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2021
    .end local v12    # "argBundle":Landroid/os/Bundle;
    .end local v14    # "id":J
    .restart local v19    # "userId":I
    :cond_5
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decrypt. Keeping same userid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2034
    .end local v19    # "userId":I
    .restart local v12    # "argBundle":Landroid/os/Bundle;
    .restart local v14    # "id":J
    :cond_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2037
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2038
    const-string v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2039
    const-string v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2040
    const-string v2, "resource"

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2042
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 2048
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_7

    .line 2049
    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2051
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2054
    :cond_7
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2055
    if-nez v10, :cond_8

    .line 2056
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2058
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2059
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2061
    :cond_8
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 2062
    .local v16, "response":[B
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 2063
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    if-nez v16, :cond_9

    .line 2065
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for decrypt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2067
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2069
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected deletAndRefreshAgents(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .locals 3
    .param p1, "agent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 702
    const-string v0, "UcmService"

    const-string v1, "deletAndRefreshAgents()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    if-eqz p1, :cond_0

    .line 704
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletAndRefreshAgents() remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgents()V

    .line 708
    return-void
.end method

.method public delete(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2647
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v0

    .line 2648
    .local v0, "pluginResponse":Landroid/os/Bundle;
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCMERRORTESTING: @CredentialManagerService delete Response from plugin with error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    return-object v0
.end method

.method public deleteCertificate(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2654
    const-string v4, "deleteCertificate"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2655
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v0

    .line 2656
    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 2657
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2658
    .restart local v0    # "agentResponse":Landroid/os/Bundle;
    const-string v4, "booleanresponse"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2659
    const-string v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v1, v0

    .line 2666
    .end local v0    # "agentResponse":Landroid/os/Bundle;
    .local v1, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 2662
    .end local v1    # "agentResponse":Ljava/lang/Object;
    .restart local v0    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v4, "booleanresponse"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2663
    .local v3, "response":Z
    const-string v4, "errorresponse"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2664
    .local v2, "errorcode":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteCertificate Response:  error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UCMERRORTESTING: @CredentialManagerService deleteCertificate Response from plugin with error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 2666
    .restart local v1    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public destroySecureChannel()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1606
    const-string v4, "UcmService"

    const-string v5, "destroySecureChannel ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1608
    .local v1, "uid":I
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v5, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-interface {v4, v5, v1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1609
    const-string v4, "UcmService"

    const-string v5, "  Agent don\'t UCM PLUGIN permission. Returning..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    const/16 v4, 0x41

    .line 1622
    :goto_0
    return v4

    .line 1613
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1615
    .local v2, "id":J
    :try_start_0
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v4, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->destroySecureChannel(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1619
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1616
    :catch_0
    move-exception v0

    .line 1617
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in destroySecureChannel -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1619
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1622
    const/4 v4, 0x1

    goto :goto_0

    .line 1619
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public generateDek(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 1627
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1632
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "generateDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1639
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 1640
    :cond_0
    const-string v5, "UcmService"

    const-string v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const-string v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1642
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    .line 1673
    :goto_0
    return-object v5

    .line 1633
    :catch_0
    move-exception v3

    .line 1634
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1635
    const-string v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1636
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1645
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .line 1646
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 1647
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1652
    :goto_1
    if-nez v0, :cond_3

    .line 1653
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1655
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1649
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1657
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .line 1659
    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    .line 1660
    const-string v5, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1662
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1664
    :cond_4
    invoke-interface {v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1665
    if-nez v1, :cond_5

    .line 1666
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1668
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1669
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0

    .line 1671
    :cond_5
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1672
    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDek response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2759
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKeyPair "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2762
    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 2763
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2764
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string v0, "bytearrayresponse"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2765
    const-string v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v7, v6

    .line 2771
    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .local v7, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 2768
    .end local v7    # "agentResponse":Ljava/lang/Object;
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v0, "bytearrayresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 2769
    .local v9, "response":[B
    const-string v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2770
    .local v8, "errorcode":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKeyPair Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 2771
    .restart local v7    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public generateKeyPairInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2740
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKeyPairInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    const-string v0, "generateKeyPairInternal"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2743
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2744
    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 2745
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2746
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string v0, "bytearrayresponse"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2747
    const-string v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v7, v6

    .line 2753
    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .local v7, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 2750
    .end local v7    # "agentResponse":Ljava/lang/Object;
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v0, "bytearrayresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 2751
    .local v9, "response":[B
    const-string v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2752
    .local v8, "errorcode":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKeyPairInternal Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 2753
    .restart local v7    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "userId"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1840
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateKeyguardPassword "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", userId-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1843
    .local v1, "agentResponse":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 1844
    .local v5, "password":[B
    if-eqz p2, :cond_0

    const/4 v7, 0x1

    const-string v8, ""

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v7, v8, :cond_1

    .line 1845
    :cond_0
    const-string v7, "UcmService"

    const-string v8, "uri is empty"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    const-string v7, "errorresponse"

    const/16 v8, 0x10

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 1894
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1850
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    .line 1851
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v7, 0x1

    const-string v8, "boot_test"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v7, v8, :cond_2

    .line 1852
    const-string v7, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1857
    :goto_1
    if-nez v0, :cond_3

    .line 1858
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no agent found for Source = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    const-string v7, "errorresponse"

    const/16 v8, 0xe

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 1860
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 1854
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1862
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 1864
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_4

    .line 1865
    const-string v7, "UcmService"

    const-string v8, "no agentService found"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    const-string v7, "errorresponse"

    const/16 v8, 0xe

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 1867
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 1870
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-interface {v3, p1, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1871
    if-nez v1, :cond_5

    .line 1872
    const-string v7, "UcmService"

    const-string v8, "ERROR: Null Response received from agentService"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1874
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v7, "errorresponse"

    const/16 v8, 0xd

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 1875
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 1877
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_5
    const-string v7, "bytearrayresponse"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1878
    const-string v7, "errorresponse"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1879
    .local v4, "errorcode":I
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateKeyguardPassword Response from plugin:  error code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    if-nez v5, :cond_6

    .line 1882
    const-string v7, "UcmService"

    const-string v8, "password is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const-string v7, "errorresponse"

    const/16 v8, 0xd

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    move-object v2, v1

    .line 1894
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 1884
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    array-length v7, v5

    if-nez v7, :cond_7

    .line 1885
    const-string v7, "UcmService"

    const-string v8, "password length is 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const-string v7, "errorresponse"

    const/16 v8, 0xd

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 1888
    :cond_7
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "password length is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 1891
    .local v6, "strAscii":Ljava/lang/String;
    const-string v7, "stringresponse"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 1892
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "numBytes"    # I
    .param p3, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3080
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateSecureRandom "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3082
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 3083
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 3084
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateSecureRandom : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3086
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3153
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 3091
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3092
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3093
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v19

    .line 3094
    .local v19, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    .line 3095
    move/from16 v0, v19

    if-eq v5, v0, :cond_1

    .line 3096
    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    .line 3097
    move/from16 v5, v19

    .line 3101
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 3102
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v18

    .line 3103
    .local v18, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    const/16 v18, 0x1

    .line 3106
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3107
    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 3108
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! generateSecureRandom is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3110
    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3111
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3113
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3116
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 3117
    .local v13, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3118
    const-string v2, "user_id"

    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3119
    const-string v2, "ownerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3120
    const-string v2, "resource"

    move/from16 v0, v18

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3122
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateSecureRandom KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateSecureRandom KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateSecureRandom KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 3128
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_4

    .line 3129
    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3131
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3132
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3134
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v0, v1, v13}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 3135
    if-nez v10, :cond_5

    .line 3136
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3138
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3139
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3140
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3142
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_5
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 3143
    .local v15, "response":[B
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 3144
    .local v14, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateSecureRandom Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    if-nez v15, :cond_6

    .line 3147
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for generateSecureRandom"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3149
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3150
    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3151
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_6
    move-object v11, v10

    .line 3153
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public generateWrappedDek(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 1678
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1683
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "generateWrappedDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1690
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 1691
    :cond_0
    const-string v5, "UcmService"

    const-string v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const-string v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1693
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    .line 1724
    :goto_0
    return-object v5

    .line 1684
    :catch_0
    move-exception v3

    .line 1685
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1686
    const-string v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1687
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1696
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .line 1697
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 1698
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1703
    :goto_1
    if-nez v0, :cond_3

    .line 1704
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1706
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1700
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1708
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .line 1710
    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    .line 1711
    const-string v5, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1713
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1715
    :cond_4
    invoke-interface {v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateWrappedDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1716
    if-nez v1, :cond_5

    .line 1717
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1719
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1720
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0

    .line 1722
    :cond_5
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1723
    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateWrappedDek response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4946
    if-nez p1, :cond_0

    move-object v0, v2

    .line 4956
    :goto_0
    return-object v0

    .line 4949
    :cond_0
    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finding active agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4950
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 4951
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4952
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found active agent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_2
    move-object v0, v2

    .line 4956
    goto :goto_0
.end method

.method public getAdminConfigureBundleFromCs(IILjava/lang/String;)Landroid/os/Bundle;
    .locals 16
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3340
    const-string v2, "getAdminConfigureBundleFromCs"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3341
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3343
    .local v10, "agentResponse":Landroid/os/Bundle;
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdminConfigureBundleFromCs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 3345
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 3346
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no agent found for Source = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3348
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3383
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 3353
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3354
    .local v14, "id":J
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3355
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v5

    .line 3356
    .local v5, "uriuid":I
    move/from16 v4, p2

    .line 3357
    .local v4, "user_id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 3358
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! getAdminConfigureBundleFromCs is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3360
    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3361
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3363
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3366
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 3367
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_2

    .line 3368
    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3370
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3371
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3373
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    move/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;

    move-result-object v10

    .line 3374
    if-nez v10, :cond_3

    .line 3375
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3377
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3378
    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3379
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3381
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 3382
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPackageSetting Response from plugin: error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 3383
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 2405
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2406
    .local v7, "agentInfoBundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v8

    .line 2409
    .local v8, "credAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    new-instance v6, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2410
    .local v6, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2411
    .local v3, "uid":I
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    .line 2412
    .local v12, "uriuid":I
    if-eq v12, v1, :cond_0

    .line 2413
    if-eq v3, v12, :cond_0

    .line 2414
    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_0

    .line 2415
    move v3, v12

    .line 2419
    :cond_0
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 2420
    .local v2, "user_id":I
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v9

    .line 2421
    .local v9, "uriresource":I
    if-ne v9, v1, :cond_1

    const/4 v9, 0x1

    .line 2424
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2425
    .local v10, "id":J
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2426
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! getAgentInfo is NOT allowed for URI = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :goto_0
    return-object v5

    .line 2429
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2432
    invoke-direct {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v7

    move-object v5, v7

    .line 2433
    goto :goto_0
.end method

.method public getAgentService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4684
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4685
    .local v3, "uid":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBinder "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", uid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4686
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v7

    .line 4687
    .local v7, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v7, :cond_0

    .line 4713
    :goto_0
    return-object v5

    .line 4692
    :cond_0
    new-instance v6, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 4693
    .local v6, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    .line 4694
    .local v12, "uriuid":I
    const/4 v0, -0x1

    if-eq v12, v0, :cond_1

    .line 4695
    if-eq v3, v12, :cond_1

    .line 4696
    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_1

    .line 4697
    move v3, v12

    .line 4701
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 4703
    .local v2, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4704
    .local v10, "id":J
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 4705
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! getAgentService is NOT allowed for URI = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4708
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4711
    invoke-virtual {v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v8

    .line 4712
    .local v8, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .local v9, "binderService":Landroid/os/IBinder;
    :goto_1
    move-object v5, v9

    .line 4713
    goto :goto_0

    .end local v9    # "binderService":Landroid/os/IBinder;
    :cond_3
    move-object v9, v5

    .line 4712
    goto :goto_1
.end method

.method public getCertificateChain(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1905
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateChain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1909
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 1910
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 1911
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no agent found for Source = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1913
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    .line 1985
    :goto_0
    return-object v2

    .line 1917
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 1918
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1919
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v18

    .line 1920
    .local v18, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    .line 1921
    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    .line 1922
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1923
    :cond_1
    move/from16 v5, v18

    .line 1927
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 1928
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v17

    .line 1929
    .local v17, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    const/16 v17, 0x1

    .line 1931
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1932
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v19

    .line 1933
    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    .line 1934
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 1935
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateChain new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    .end local v19    # "userId":I
    :cond_4
    :goto_1
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1944
    .local v12, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1945
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 1946
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! getCertificateChain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1948
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1937
    .end local v12    # "argBundle":Landroid/os/Bundle;
    .end local v14    # "id":J
    .restart local v19    # "userId":I
    :cond_5
    const-string v2, "UcmService"

    const-string v3, "getCertificateChain user id id not valid. Keeping same userid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1950
    .end local v19    # "userId":I
    .restart local v12    # "argBundle":Landroid/os/Bundle;
    .restart local v14    # "id":J
    :cond_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1953
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1954
    const-string v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1955
    const-string v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1956
    const-string v2, "resource"

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1958
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateChain KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 1964
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_7

    .line 1965
    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1967
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1969
    :cond_7
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1970
    if-nez v10, :cond_8

    .line 1971
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1973
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1974
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1976
    :cond_8
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 1977
    .local v16, "response":[B
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1978
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateChain Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    if-nez v16, :cond_9

    .line 1981
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for getCertificateChain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1983
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1985
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getConfigureBundleFromCs(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3332
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3333
    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string v1, "bundleresponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3334
    const-string v1, "errorresponse"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3335
    return-object v0
.end method

.method public getCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 8
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xe

    .line 3186
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3187
    .local v1, "agentResponse":Landroid/os/Bundle;
    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3188
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v0, :cond_0

    .line 3189
    const-string v4, "bundleresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3190
    const-string v4, "errorresponse"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3203
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3194
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3195
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_1

    .line 3196
    const-string v4, "UcmService"

    const-string v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    const-string v4, "bundleresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3198
    const-string v4, "errorresponse"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3199
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3201
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_1
    invoke-interface {v3, p1, p4, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3202
    const-string v4, "UcmService"

    const-string v5, "getCredentialStorageProperty Response from plugin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 3203
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getDek(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 1729
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1734
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "getDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 1742
    :cond_0
    const-string v5, "UcmService"

    const-string v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    const-string v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1744
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    .line 1779
    :goto_0
    return-object v5

    .line 1735
    :catch_0
    move-exception v3

    .line 1736
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1737
    const-string v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1738
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1746
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    const/4 v0, 0x0

    .line 1750
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 1751
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1756
    :goto_1
    if-nez v0, :cond_3

    .line 1757
    const-string v5, "UcmService"

    const-string v6, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1759
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1753
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1762
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .line 1763
    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    .line 1764
    const-string v5, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1766
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1767
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1770
    :cond_4
    invoke-interface {v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1771
    if-nez v1, :cond_5

    .line 1772
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1774
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1775
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0

    .line 1777
    :cond_5
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1778
    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDek Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 3707
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3710
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 3711
    :cond_0
    const-string v5, "UcmService"

    const-string v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    const-string v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3750
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3716
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    .line 3717
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 3718
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3723
    :goto_1
    if-nez v0, :cond_3

    .line 3724
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3725
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3726
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3720
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3729
    :cond_3
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3730
    new-instance v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3731
    .local v4, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3732
    iget-object v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3733
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3736
    .end local v4    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3737
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_5

    .line 3738
    const-string v5, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3740
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3743
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_5
    invoke-interface {v3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 3744
    if-nez v1, :cond_6

    .line 3745
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3747
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3748
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    move-object v2, v1

    .line 3750
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public getKeyguardStorageForCurrentUser(I)Ljava/lang/String;
    .locals 13
    .param p1, "userId"    # I

    .prologue
    .line 3754
    const-string v10, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getKeyguardStorageForCurrentUser : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 3756
    .local v0, "dataDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v10, "system"

    invoke-direct {v6, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3757
    .local v6, "systemDir":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "users/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3758
    .local v8, "userDir":Ljava/io/File;
    new-instance v10, Landroid/util/AtomicFile;

    new-instance v11, Ljava/io/File;

    const-string v12, "ucm_keyguardconfig.xml"

    invoke-direct {v11, v8, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    .line 3759
    const/4 v3, 0x0

    .line 3760
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 3761
    .local v4, "isFileExist":Z
    const/4 v9, 0x0

    .line 3762
    .local v9, "vendorName":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    .line 3763
    const-string v10, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isFileExist : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    if-nez v4, :cond_0

    .line 3765
    const/4 v10, 0x0

    .line 3806
    :goto_0
    return-object v10

    .line 3768
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 3769
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 3770
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v5, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3771
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 3772
    .local v2, "eventType":I
    :goto_1
    const/4 v10, 0x2

    if-eq v2, v10, :cond_1

    const/4 v10, 0x1

    if-eq v2, v10, :cond_1

    .line 3773
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_1

    .line 3775
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3776
    .local v7, "tagName":Ljava/lang/String;
    const-string v10, "keyguard"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3777
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 3779
    :cond_2
    const/4 v10, 0x2

    if-ne v2, v10, :cond_3

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 3780
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3781
    const-string v10, "vendor"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3782
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3785
    :cond_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3786
    const/4 v10, 0x1

    if-ne v2, v10, :cond_2

    .line 3798
    :cond_4
    if-eqz v3, :cond_5

    .line 3800
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_5
    :goto_2
    move-object v10, v9

    .line 3806
    goto :goto_0

    .line 3801
    .restart local v2    # "eventType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3802
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3788
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3790
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3798
    if-eqz v3, :cond_5

    .line 3800
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 3801
    :catch_2
    move-exception v1

    .line 3802
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3791
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 3793
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3798
    if-eqz v3, :cond_5

    .line 3800
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 3801
    :catch_4
    move-exception v1

    .line 3802
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3794
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 3796
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3798
    if-eqz v3, :cond_5

    .line 3800
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    .line 3801
    :catch_6
    move-exception v1

    .line 3802
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3798
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    if-eqz v3, :cond_6

    .line 3800
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 3803
    :cond_6
    :goto_3
    throw v10

    .line 3801
    :catch_7
    move-exception v1

    .line 3802
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public getODESettingsConfiguration()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 4531
    const-string v2, "UcmService"

    const-string v3, "getODESettingsConfiguration"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4533
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    .line 4535
    .local v0, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    if-nez v0, :cond_0

    .line 4536
    const/4 v1, 0x0

    .line 4546
    :goto_0
    return-object v1

    .line 4539
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4541
    .local v1, "responseBundle":Landroid/os/Bundle;
    const-string v2, "supportsode"

    iget v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4542
    const-string v2, "aid"

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4543
    const-string v2, "storagetype"

    sget-object v3, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    iget v4, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4544
    const-string v2, "scptype"

    sget-object v3, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    iget v4, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 16
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4608
    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getStatus : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4610
    .local v2, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const/4 v13, 0x1

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-ne v13, v14, :cond_1

    .line 4611
    :cond_0
    const-string v13, "UcmService"

    const-string v14, "csName is empty"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    const-string v13, "errorresponse"

    const/16 v14, 0x10

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 4678
    .end local v2    # "agentResponse":Landroid/os/Bundle;
    .local v3, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 4616
    .end local v3    # "agentResponse":Ljava/lang/Object;
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    const/4 v12, -0x1

    .line 4617
    .local v12, "state":I
    const/4 v11, -0x1

    .line 4618
    .local v11, "remainCnt":I
    const/4 v6, -0x1

    .line 4619
    .local v6, "maxCnt":I
    const/4 v8, -0x1

    .line 4620
    .local v8, "pinMinLength":I
    const/4 v7, -0x1

    .line 4621
    .local v7, "pinMaxLength":I
    const/4 v5, 0x0

    .line 4622
    .local v5, "authMode":I
    const/4 v10, -0x1

    .line 4623
    .local v10, "pukMinLength":I
    const/4 v9, -0x1

    .line 4625
    .local v9, "pukMaxLength":I
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .line 4626
    .local v1, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v13, 0x1

    const-string v14, "boot_test"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-ne v13, v14, :cond_2

    .line 4627
    const-string v13, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .line 4632
    :goto_1
    if-nez v1, :cond_3

    .line 4633
    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "no agent found for Source = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4634
    const-string v13, "errorresponse"

    const/16 v14, 0xe

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 4635
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 4629
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_1

    .line 4637
    :cond_3
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-nez v13, :cond_4

    .line 4638
    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "no agent info found for Source = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4639
    const-string v13, "errorresponse"

    const/16 v14, 0xe

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 4640
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 4642
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v4

    .line 4643
    .local v4, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v4, :cond_5

    .line 4644
    const-string v13, "UcmService"

    const-string v14, "no agentService found"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4645
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4646
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    const-string v13, "errorresponse"

    const/16 v14, 0xe

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 4647
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 4650
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_5
    invoke-interface {v4}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getStatus()Landroid/os/Bundle;

    move-result-object v2

    .line 4651
    if-nez v2, :cond_6

    .line 4652
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4653
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    const-string v13, "UcmService"

    const-string v14, "ERROR: Null Response received from agentService"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    const-string v13, "errorresponse"

    const/16 v14, 0xd

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 4655
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 4658
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_6
    const-string v13, "UcmService"

    const-string v14, "getStatus success"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4659
    const-string v13, "state"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 4660
    const-string v13, "remainCnt"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 4661
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 4662
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v8, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 4663
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v7, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 4664
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v5, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 4665
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v10, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    .line 4666
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v9, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .line 4668
    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "values get from agent : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    const-string v13, "maxAuthCnt"

    invoke-virtual {v2, v13, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4672
    const-string v13, "maxPinLength"

    invoke-virtual {v2, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4673
    const-string v13, "minPinLength"

    invoke-virtual {v2, v13, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4674
    const-string v13, "authMode"

    invoke-virtual {v2, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4675
    const-string v13, "minPukLength"

    invoke-virtual {v2, v13, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4676
    const-string v13, "maxPukLength"

    invoke-virtual {v2, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 4678
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public grantKeyChainAccess(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3064
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grantKeyChainAccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkSystemCaller()V

    .line 3066
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3067
    const-string v0, "UcmService"

    const-string v1, "Not Keychain URI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    const/4 v0, 0x0

    .line 3070
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2546
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2547
    .local v6, "pluginResponse":Landroid/os/Bundle;
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCMERRORTESTING: @CredentialManagerService importKeyPair Response from plugin with error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorresponse"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    return-object v6
.end method

.method public installCertificate(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2553
    const-string v0, "installCertificate"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2555
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2556
    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 2557
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2558
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2559
    const-string v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v7, v6

    .line 2566
    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .local v7, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 2562
    .end local v7    # "agentResponse":Ljava/lang/Object;
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v0, "booleanresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 2563
    .local v9, "response":Z
    const-string v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2564
    .local v8, "errorcode":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installCertificate Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCMERRORTESTING: @CredentialManagerService installCertificate Response from plugin with error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 2566
    .restart local v7    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public isCredentialStorageLock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1835
    const-string v0, "UcmService"

    const-string v1, "UCS ODE isCredentialStorageLock in UCS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    return v0
.end method

.method public isKeyChainGranted(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3075
    const/4 v0, 0x1

    return v0
.end method

.method public isUserCertificatesExistInUCS()Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1411
    const-string v17, "UcmService"

    const-string v18, "isUserCertificatesExistInUCS called"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const-string v17, "isUserCertificatesExistInUCS"

    invoke-static/range {v17 .. v17}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1414
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1415
    .local v7, "agentResponse":Landroid/os/Bundle;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1416
    .local v9, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v16

    .line 1418
    .local v16, "user_id":I
    const-string v17, "callerUid"

    const/16 v18, 0x3e8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1419
    const-string v17, "user_id"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1420
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1421
    .local v15, "newParamBundle":Landroid/os/Bundle;
    const-string v17, "removable_user_certificates_list"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1422
    const-string v17, "extraArgs"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1425
    .local v2, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v8

    .line 1426
    .local v8, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    const-string v17, "UcmService"

    const-string v18, "Iteration has started...."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v17

    if-nez v17, :cond_1

    iget-object v0, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1429
    :cond_1
    const-string v17, "UcmService"

    const-string v18, "agentService == null... continue"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1434
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1435
    .local v12, "id1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v14

    .line 1436
    .local v14, "mdmAliases":[Ljava/lang/String;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1439
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    .local v4, "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, "resource"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1441
    invoke-interface {v8, v9}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1442
    const/4 v3, 0x0

    .line 1443
    .local v3, "agentAliasesKeyChain":[Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1444
    const-string v17, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1446
    :cond_3
    if-eqz v3, :cond_4

    .line 1447
    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1450
    :cond_4
    if-eqz v14, :cond_6

    .line 1451
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_6

    .line 1452
    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1453
    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1451
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1459
    .end local v10    # "i":I
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_7

    .line 1460
    const/16 v17, 0x1

    .line 1486
    .end local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .end local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v12    # "id1":J
    .end local v14    # "mdmAliases":[Ljava/lang/String;
    :goto_2
    return v17

    .line 1464
    .restart local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .restart local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v12    # "id1":J
    .restart local v14    # "mdmAliases":[Ljava/lang/String;
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1465
    .local v5, "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, "resource"

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1466
    invoke-interface {v8, v9}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1467
    const/4 v6, 0x0

    .line 1468
    .local v6, "agentAliasesWiFi":[Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 1469
    const-string v17, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1470
    :cond_8
    if-eqz v6, :cond_9

    .line 1471
    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1474
    :cond_9
    if-eqz v14, :cond_b

    .line 1475
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_b

    .line 1476
    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1477
    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1475
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1482
    .end local v10    # "i":I
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1483
    const/16 v17, 0x1

    goto :goto_2

    .line 1486
    .end local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .end local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "agentAliasesWiFi":[Ljava/lang/String;
    .end local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v12    # "id1":J
    .end local v14    # "mdmAliases":[Ljava/lang/String;
    :cond_c
    const/16 v17, 0x0

    goto :goto_2
.end method

.method public listAllProviders()[Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2947
    const-string v0, "listAllProviders"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2948
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public listPasswordSupportedProviders(I)[Ljava/lang/String;
    .locals 11
    .param p1, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3021
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "listPasswordSupportedProviders : userid -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3023
    .local v6, "uid":I
    invoke-direct {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v7

    .line 3024
    .local v7, "user_id":I
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 3025
    const/4 v8, 0x0

    .line 3059
    :goto_0
    return-object v8

    .line 3027
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3028
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 3029
    .local v0, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v0, :cond_1

    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 3031
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3032
    .local v4, "id":J
    new-instance v2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3033
    .local v2, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v8, v2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3034
    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 3035
    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3036
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "listPasswordSupportedProviders :  cs Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, p1, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3043
    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 3044
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, p1, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCredentialStorageEnabledForLockType(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3045
    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3046
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "password support provider enabled as a lock type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    :cond_2
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 3038
    :cond_3
    const-string v8, "UcmService"

    const-string v9, "Package name for CS found NULL. Ignoring CS"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3048
    :cond_4
    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v8, :cond_5

    .line 3049
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Credential Storage not enabled as a lock type -  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3051
    :cond_5
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NON Password Supported Credential Storage -  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3055
    :cond_6
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NON managed provider -  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3059
    .end local v0    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v2    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v4    # "id":J
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public listProviders()[Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2943
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1259
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyChangeToPlugin event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    const-string v8, "notifyChangeToPlugin"

    invoke-static {v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1261
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1263
    .local v2, "agentResponse":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 1264
    .local v4, "error":Z
    if-nez p1, :cond_5

    .line 1265
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1266
    .local v0, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 1267
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v3, :cond_2

    .line 1268
    const/4 v7, 0x0

    .line 1269
    .local v7, "status":I
    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v6

    .line 1270
    .local v6, "notify":Z
    if-eqz v6, :cond_1

    .line 1271
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->notifyChange(ILandroid/os/Bundle;)I

    move-result v7

    .line 1272
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agentService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " notify status - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :goto_1
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agentService status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const/4 v8, 0x1

    if-eq v4, v8, :cond_0

    .line 1279
    if-eqz v7, :cond_0

    .line 1280
    const-string v8, "errorresponse"

    const/16 v9, 0x12

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1281
    const/4 v4, 0x1

    goto :goto_0

    .line 1274
    :cond_1
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agentService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not notified"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1284
    .end local v6    # "notify":Z
    .end local v7    # "status":I
    :cond_2
    const-string v8, "errorresponse"

    const/16 v9, 0xe

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1285
    const-string v8, "UcmService"

    const-string v9, "agentService is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1289
    .end local v0    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    :cond_3
    if-nez v4, :cond_4

    .line 1290
    const-string v8, "errorresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1292
    :cond_4
    const-string v8, "booleanresponse"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1317
    .end local v5    # "i$":Ljava/util/Iterator;
    :goto_2
    return-object v2

    .line 1295
    :cond_5
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .line 1296
    .local v1, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v1, :cond_6

    .line 1297
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no agent found for Source = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const-string v8, "booleanresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1299
    const-string v8, "errorresponse"

    const/16 v9, 0xe

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 1302
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 1303
    .restart local v3    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v3, :cond_8

    .line 1304
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->notifyChange(ILandroid/os/Bundle;)I

    move-result v7

    .line 1305
    .restart local v7    # "status":I
    if-nez v7, :cond_7

    .line 1306
    const-string v8, "booleanresponse"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1307
    const-string v8, "errorresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 1310
    :cond_7
    const-string v8, "errorresponse"

    const/16 v9, 0x12

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1316
    .end local v7    # "status":I
    :goto_3
    const-string v8, "booleanresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1313
    :cond_8
    const-string v8, "errorresponse"

    const/16 v9, 0xe

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1314
    const-string v8, "UcmService"

    const-string v9, "agentService is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 1491
    const-string v2, "notifyLicenseStatus"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1492
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyLicenseStatus packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",status-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errorCode-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1494
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1495
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const-string v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-string v2, "errorCode"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1498
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1499
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1500
    const/4 v2, 0x1

    return v2
.end method

.method public processCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "command"    # [B
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4837
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processCommand "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4838
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 4839
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 4840
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 4841
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4842
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4886
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 4847
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 4848
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 4849
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 4850
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    .line 4851
    move/from16 v0, v16

    if-eq v5, v0, :cond_1

    .line 4852
    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    .line 4853
    move/from16 v5, v16

    .line 4857
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 4859
    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4860
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 4861
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! processCommand is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4862
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4863
    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4864
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 4866
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4869
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 4870
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    .line 4871
    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4872
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4873
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4874
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 4876
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v0, v1, v5}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v10

    .line 4877
    if-nez v10, :cond_4

    .line 4878
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4879
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 4880
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4881
    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4882
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 4884
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 4885
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processCommand Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 4886
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public processMessage(I[B)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .locals 9
    .param p1, "type"    # I
    .param p2, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1567
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processMessage type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1569
    .local v4, "uid":I
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v6, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-interface {v5, v6, v4}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1570
    const-string v5, "UcmService"

    const-string v6, "  Agent don\'t UCS PLUGIN permission. Returning..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    new-instance v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>()V

    .line 1572
    .local v1, "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    iput v8, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    .line 1573
    const/16 v5, 0x41

    iput v5, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    .line 1601
    .end local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :goto_0
    return-object v1

    .line 1577
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidMsgType(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1578
    const-string v5, "UcmService"

    const-string v6, "Invalid message Type..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    new-instance v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>()V

    .line 1580
    .restart local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    iput v8, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    .line 1581
    const/16 v5, 0x40

    iput v5, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    goto :goto_0

    .line 1585
    .end local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :cond_1
    if-nez p2, :cond_2

    .line 1586
    const-string v5, "UcmService"

    const-string v6, "message byte is null.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    new-instance v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>()V

    .line 1588
    .restart local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    iput v8, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    .line 1589
    const/16 v5, 0x32

    iput v5, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    goto :goto_0

    .line 1592
    .end local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1594
    .local v2, "id":J
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v5, v4, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->processMsg(II[B)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1598
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1595
    :catch_0
    move-exception v0

    .line 1596
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in processMessage -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1598
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1601
    const/4 v1, 0x0

    goto :goto_0

    .line 1598
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public declared-synchronized publishService()V
    .locals 2

    .prologue
    .line 4976
    monitor-enter p0

    :try_start_0
    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4977
    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4978
    const-string v0, "UcmService"

    const-string v1, "publishedService com.samsung.ucs.ucsservice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4980
    :cond_0
    monitor-exit p0

    return-void

    .line 4976
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected refreshAgents()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 698
    return-void
.end method

.method public removeEnforcedLockTypeNotification(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 5061
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeEnforcedLockTypeNotification : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5062
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 5063
    .local v0, "notiMgr":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 5064
    const-string v2, "UcmService"

    const-string v3, "Failed to get NotificationManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5069
    :goto_0
    return-void

    .line 5067
    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 5068
    .local v1, "uh":Landroid/os/UserHandle;
    add-int/lit16 v2, p1, 0x1f40

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public resetNonMdmCertificates()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1327
    const-string v18, "UcmService"

    const-string v19, "resetNonMdmCertificates called"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const-string v18, "resetNonMdmCertificates"

    invoke-static/range {v18 .. v18}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1330
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1331
    .local v7, "agentResponse":Landroid/os/Bundle;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1332
    .local v10, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v17

    .line 1334
    .local v17, "user_id":I
    const-string v18, "callerUid"

    const/16 v19, 0x3e8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1335
    const-string v18, "user_id"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1338
    .local v2, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v8

    .line 1339
    .local v8, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    const-string v18, "UcmService"

    const-string v19, "Iteration has started...."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v18

    if-nez v18, :cond_1

    iget-object v0, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1342
    :cond_1
    const-string v18, "UcmService"

    const-string v19, "agentService == null... continue"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1346
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    .local v4, "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1350
    .local v5, "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v18, "resource"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1351
    invoke-interface {v8, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1352
    const/4 v3, 0x0

    .line 1353
    .local v3, "agentAliasesKeyChain":[Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1354
    const-string v18, "stringarrayresponse"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1355
    :cond_3
    if-eqz v3, :cond_4

    .line 1356
    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1360
    :cond_4
    const-string v18, "resource"

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1361
    invoke-interface {v8, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1362
    const/4 v6, 0x0

    .line 1363
    .local v6, "agentAliasesWiFi":[Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 1364
    const-string v18, "stringarrayresponse"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1365
    :cond_5
    if-eqz v6, :cond_6

    .line 1366
    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1369
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1370
    const-string v18, "UcmService"

    const-string v19, "agentAliasesListKeychain.isEmpty() && agentAliasesListWiFi.isEmpty() .... continue"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1375
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1376
    .local v14, "id1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v16

    .line 1377
    .local v16, "mdmAliases":[Ljava/lang/String;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1380
    if-eqz v16, :cond_a

    .line 1381
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_a

    .line 1382
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1383
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1381
    :cond_8
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1384
    :cond_9
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1385
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1391
    .end local v11    # "i":I
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1392
    .local v9, "alias":Ljava/lang/String;
    const-string v18, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request to delete KEYCHAIN for alias: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const-string v18, "resource"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1394
    invoke-interface {v8, v9, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_3

    .line 1398
    .end local v9    # "alias":Ljava/lang/String;
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1399
    .restart local v9    # "alias":Ljava/lang/String;
    const-string v18, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request to delete WIFI for alias: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const-string v18, "resource"

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1401
    invoke-interface {v8, v9, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_4

    .line 1404
    .end local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .end local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "agentAliasesWiFi":[Ljava/lang/String;
    .end local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v9    # "alias":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "id1":J
    .end local v16    # "mdmAliases":[Ljava/lang/String;
    :cond_c
    return-void
.end method

.method public resetUid(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "rstuid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4779
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetUid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4780
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 4781
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 4782
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 4783
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4784
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4828
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 4789
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 4790
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 4791
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 4792
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    .line 4793
    move/from16 v0, v16

    if-eq v5, v0, :cond_1

    .line 4794
    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    .line 4795
    move/from16 v5, v16

    .line 4799
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 4801
    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4802
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 4803
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! resetUid is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4804
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4805
    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4806
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 4808
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4811
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 4812
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    .line 4813
    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4814
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4815
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4816
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 4818
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->resetUid(I)Landroid/os/Bundle;

    move-result-object v10

    .line 4819
    if-nez v10, :cond_4

    .line 4820
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4821
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 4822
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4823
    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4824
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 4826
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 4827
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetUid Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 4828
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public resetUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4721
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetUser "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 4723
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 4724
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 4725
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4726
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4770
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 4731
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 4732
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 4733
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 4734
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    .line 4735
    move/from16 v0, v16

    if-eq v5, v0, :cond_1

    .line 4736
    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    .line 4737
    move/from16 v5, v16

    .line 4741
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 4743
    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4744
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 4745
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! resetUser is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4746
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4747
    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4748
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 4750
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4753
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 4754
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    .line 4755
    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4756
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4757
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4758
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 4760
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->resetUser(I)Landroid/os/Bundle;

    move-result-object v10

    .line 4761
    if-nez v10, :cond_4

    .line 4762
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 4764
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4765
    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 4766
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 4768
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 4769
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetUser Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 4770
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public saw(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 42
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2074
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    const/16 v21, 0x0

    .line 2076
    .local v21, "error":Z
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2079
    .local v10, "agentResponse":Landroid/os/Bundle;
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2080
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2081
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v38

    .line 2082
    .local v38, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v38

    if-eq v0, v2, :cond_0

    .line 2083
    move/from16 v0, v38

    if-eq v5, v0, :cond_0

    .line 2084
    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_0

    .line 2085
    move/from16 v5, v38

    .line 2089
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2090
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v37

    .line 2091
    .local v37, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v37

    if-ne v0, v2, :cond_1

    const/16 v37, 0x1

    .line 2093
    :cond_1
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 2095
    .local v15, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v15, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2096
    const-string v2, "user_id"

    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2097
    const-string v2, "ownerUid"

    invoke-virtual {v15, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2098
    const-string v2, "resource"

    move/from16 v0, v37

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2099
    const-string v2, "entryType"

    move/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2101
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw KEY_RESOURCE_ID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "resource"

    const/16 v41, -0x2

    move/from16 v0, v41

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw KEY_USER_ID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "user_id"

    const/16 v41, -0x2

    move/from16 v0, v41

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw KEY_CALLER_UID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "callerUid"

    const/16 v41, -0x2

    move/from16 v0, v41

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v6, "KNOX"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2108
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2109
    .local v24, "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_2
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 2110
    .local v3, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 2111
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Iteration has started.... uid-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 2115
    .local v28, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 2116
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! saw access NOT allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const-string v2, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2118
    const/16 v21, 0x1

    .line 2119
    goto :goto_0

    .line 2121
    :cond_3
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2124
    if-nez v12, :cond_4

    .line 2125
    const-string v2, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    const-string v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2127
    const/16 v21, 0x1

    .line 2128
    goto :goto_0

    .line 2132
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2133
    const-string v2, "UcmService"

    const-string v6, "skipping obscure agentService"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2137
    :cond_5
    invoke-interface {v12, v15}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2138
    if-nez v10, :cond_6

    .line 2139
    const-string v2, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2141
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2142
    const/16 v21, 0x1

    .line 2143
    goto/16 :goto_0

    .line 2146
    :cond_6
    const-string v2, "stringarrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 2147
    .local v13, "agentaliases":[Ljava/lang/String;
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 2148
    .local v22, "errorcode":I
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UCMERRORTESTING: @CredentialManagerService saw Response from plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    if-eqz v13, :cond_2

    .line 2155
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Agent alias size -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    move-object/from16 v16, v13

    .local v16, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    .local v32, "len$":I
    const/16 v27, 0x0

    .local v27, "i$":I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    aget-object v14, v16, v27

    .line 2157
    .local v14, "alias":Ljava/lang/String;
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Agent alias-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 2160
    .end local v14    # "alias":Ljava/lang/String;
    :cond_7
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 2161
    .local v23, "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 2162
    .local v35, "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 2165
    .local v36, "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 2166
    .local v30, "id1":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v34

    .line 2168
    .local v34, "mdmallowedaliases":[Ljava/lang/String;
    const/16 v40, 0x0

    .line 2169
    .local v40, "wifiCert":[Ljava/lang/String;
    const/4 v2, 0x3

    move/from16 v0, v37

    if-ne v0, v2, :cond_c

    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_c

    .line 2170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getWifiCertificateAliasesAsUser(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v40

    .line 2171
    if-eqz v40, :cond_c

    move-object/from16 v0, v40

    array-length v2, v0

    if-lez v2, :cond_c

    .line 2172
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2173
    .local v19, "combinedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v16, v40

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    const/16 v27, 0x0

    :goto_2
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    aget-object v18, v16, v27

    .line 2174
    .local v18, "certAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2175
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : Found wifi certAlias-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2173
    :cond_8
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 2179
    .end local v18    # "certAlias":Ljava/lang/String;
    :cond_9
    if-eqz v34, :cond_b

    move-object/from16 v0, v34

    array-length v2, v0

    if-lez v2, :cond_b

    .line 2180
    move-object/from16 v16, v34

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    const/16 v27, 0x0

    :goto_3
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_b

    aget-object v39, v16, v27

    .line 2181
    .local v39, "whitelistedAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2182
    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2180
    :cond_a
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 2186
    .end local v39    # "whitelistedAlias":Ljava/lang/String;
    :cond_b
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "mdmallowedaliases":[Ljava/lang/String;
    check-cast v34, [Ljava/lang/String;

    .line 2190
    .end local v19    # "combinedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "mdmallowedaliases":[Ljava/lang/String;
    :cond_c
    if-nez v34, :cond_10

    .line 2191
    const/16 v35, 0x0

    .line 2192
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : mdmallowedaliasesList for uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v33

    .line 2200
    .local v33, "mdmaliases":[Ljava/lang/String;
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2203
    if-eqz v33, :cond_d

    move-object/from16 v0, v33

    array-length v2, v0

    if-nez v2, :cond_11

    .line 2204
    :cond_d
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is = null "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const/16 v36, 0x0

    .line 2221
    :cond_e
    :goto_5
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2222
    .restart local v23    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : Initial agent alias list for agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    if-eqz v36, :cond_15

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_15

    .line 2224
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_6
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_15

    .line 2225
    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2226
    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v23

    invoke-virtual {v2, v14, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2227
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2228
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : Removing from agent alias list : alias name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    :cond_f
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    .line 2194
    .end local v14    # "alias":Ljava/lang/String;
    .end local v25    # "i":I
    .end local v33    # "mdmaliases":[Ljava/lang/String;
    :cond_10
    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    .line 2195
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : mdmallowedaliasesList for uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2206
    .restart local v33    # "mdmaliases":[Ljava/lang/String;
    :cond_11
    if-eqz v34, :cond_12

    move-object/from16 v0, v34

    array-length v2, v0

    if-nez v2, :cond_13

    .line 2207
    :cond_12
    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    .line 2208
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2210
    :cond_13
    move-object/from16 v16, v33

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    const/16 v27, 0x0

    :goto_7
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_e

    aget-object v14, v16, v27

    .line 2211
    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v35

    invoke-virtual {v2, v14, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2212
    move-object/from16 v0, v36

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2213
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : new alias added to mdmunauthorizedaliasesList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :goto_8
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 2215
    :cond_14
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : mdmunauthorizedaliasesList unchanged, access allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2233
    .end local v14    # "alias":Ljava/lang/String;
    :cond_15
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2234
    .restart local v14    # "alias":Ljava/lang/String;
    new-instance v9, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v2, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 2235
    .local v9, "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v20

    .line 2236
    .local v20, "csUri":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2237
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : Adding alias uri to finalaliasesList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2242
    .end local v3    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v9    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v12    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v13    # "agentaliases":[Ljava/lang/String;
    .end local v14    # "alias":Ljava/lang/String;
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v20    # "csUri":Ljava/lang/String;
    .end local v22    # "errorcode":I
    .end local v23    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v28    # "id":J
    .end local v30    # "id1":J
    .end local v32    # "len$":I
    .end local v33    # "mdmaliases":[Ljava/lang/String;
    .end local v34    # "mdmallowedaliases":[Ljava/lang/String;
    .end local v35    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v40    # "wifiCert":[Ljava/lang/String;
    :cond_16
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    .line 2243
    .local v17, "array":[Ljava/lang/String;
    const-string v2, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2244
    if-nez v21, :cond_17

    const-string v2, "errorresponse"

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_17
    move-object v11, v10

    .line 2354
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .end local v17    # "array":[Ljava/lang/String;
    .end local v24    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_a
    return-object v11

    .line 2249
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    .line 2250
    .restart local v3    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v3, :cond_19

    .line 2251
    const-string v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2252
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_a

    .line 2254
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_19
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 2255
    .restart local v12    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_1a

    .line 2256
    const-string v2, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    const-string v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2258
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_a

    .line 2261
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1a
    invoke-interface {v12, v15}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2262
    if-nez v10, :cond_1b

    .line 2263
    const-string v2, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2265
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2266
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_a

    .line 2268
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1b
    const-string v2, "stringarrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 2269
    .restart local v13    # "agentaliases":[Ljava/lang/String;
    const-string v2, "errorresponse"

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 2270
    .restart local v22    # "errorcode":I
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UCMERRORTESTING: @CredentialManagerService saw Response from plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    const/4 v2, 0x2

    move/from16 v0, v37

    if-ne v0, v2, :cond_1c

    .line 2275
    const-string v2, "stringarrayresponse"

    invoke-virtual {v10, v2, v13}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2276
    const-string v2, "errorresponse"

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2277
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_a

    .line 2280
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1c
    const/4 v2, 0x3

    move/from16 v0, v37

    if-eq v0, v2, :cond_1d

    .line 2282
    const-string v2, "errorresponse"

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2283
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_a

    .line 2287
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2288
    const-string v2, "stringarrayresponse"

    invoke-virtual {v10, v2, v13}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2289
    const-string v2, "errorresponse"

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2290
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_a

    .line 2294
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 2295
    .restart local v28    # "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1f

    .line 2296
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! saw access NOT allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    const-string v2, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2298
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_a

    .line 2301
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1f
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 2302
    .restart local v23    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 2303
    .restart local v35    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 2305
    .restart local v36    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v13, :cond_20

    .line 2306
    const-string v2, "errorresponse"

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2307
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_a

    .line 2310
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v34

    .line 2311
    .restart local v34    # "mdmallowedaliases":[Ljava/lang/String;
    if-nez v34, :cond_24

    .line 2312
    const/16 v35, 0x0

    .line 2318
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v33

    .line 2319
    .restart local v33    # "mdmaliases":[Ljava/lang/String;
    if-eqz v33, :cond_21

    move-object/from16 v0, v33

    array-length v2, v0

    if-nez v2, :cond_25

    .line 2320
    :cond_21
    const/16 v36, 0x0

    .line 2331
    :cond_22
    :goto_c
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2334
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    .line 2335
    if-eqz v36, :cond_29

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_29

    .line 2336
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_d
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_29

    .line 2337
    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2338
    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v23

    invoke-virtual {v2, v14, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2339
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2336
    :cond_23
    add-int/lit8 v25, v25, 0x1

    goto :goto_d

    .line 2314
    .end local v14    # "alias":Ljava/lang/String;
    .end local v25    # "i":I
    .end local v33    # "mdmaliases":[Ljava/lang/String;
    :cond_24
    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    goto :goto_b

    .line 2321
    .restart local v33    # "mdmaliases":[Ljava/lang/String;
    :cond_25
    if-eqz v34, :cond_26

    move-object/from16 v0, v34

    array-length v2, v0

    if-nez v2, :cond_27

    .line 2322
    :cond_26
    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    goto :goto_c

    .line 2324
    :cond_27
    move-object/from16 v16, v33

    .restart local v16    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    .restart local v32    # "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_e
    move/from16 v0, v26

    move/from16 v1, v32

    if-ge v0, v1, :cond_22

    aget-object v14, v16, v26

    .line 2325
    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v35

    invoke-virtual {v2, v14, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 2326
    move-object/from16 v0, v36

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2324
    :cond_28
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 2344
    .end local v14    # "alias":Ljava/lang/String;
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v32    # "len$":I
    :cond_29
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2345
    .restart local v24    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2346
    .restart local v14    # "alias":Ljava/lang/String;
    new-instance v9, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v2, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 2347
    .restart local v9    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v20

    .line 2349
    .restart local v20    # "csUri":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 2351
    .end local v9    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v14    # "alias":Ljava/lang/String;
    .end local v20    # "csUri":Ljava/lang/String;
    :cond_2a
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    .line 2352
    .restart local v17    # "array":[Ljava/lang/String;
    const-string v2, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2353
    const-string v2, "errorresponse"

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2354
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_a
.end method

.method public sawInternal(Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 14
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2362
    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sawInternal() "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; userId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; resourceType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2364
    .local v3, "agentResponse":Landroid/os/Bundle;
    const-string v11, "sawInternal"

    invoke-static {v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2366
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .line 2367
    .local v1, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v1, :cond_0

    .line 2368
    const-string v11, "UcmService"

    const-string v12, "sawInternal(): activeAgent == null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    const-string v11, "errorresponse"

    const/16 v12, 0xe

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v4, v3

    .line 2399
    .end local v3    # "agentResponse":Landroid/os/Bundle;
    .local v4, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 2373
    .end local v4    # "agentResponse":Ljava/lang/Object;
    .restart local v3    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v5

    .line 2374
    .local v5, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v5, :cond_1

    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v11, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2375
    :cond_1
    const-string v11, "UcmService"

    const-string v12, "agentService == null || mPolicyManager.isCSobscure() ... continue"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    const-string v11, "errorresponse"

    const/16 v12, 0xe

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v4, v3

    .line 2377
    .restart local v4    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2380
    .end local v4    # "agentResponse":Ljava/lang/Object;
    :cond_2
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2381
    .local v7, "argBundle":Landroid/os/Bundle;
    const-string v11, "callerUid"

    const/16 v12, 0x3e8

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2382
    const-string v11, "user_id"

    move/from16 v0, p2

    invoke-virtual {v7, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2383
    const-string v11, "resource"

    move/from16 v0, p3

    invoke-virtual {v7, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2385
    invoke-interface {v5, v7}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 2386
    if-nez v3, :cond_3

    .line 2387
    const-string v11, "UcmService"

    const-string v12, "ERROR: Null Response received from agentService"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2389
    .restart local v3    # "agentResponse":Landroid/os/Bundle;
    const-string v11, "errorresponse"

    const/16 v12, 0xd

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v4, v3

    .line 2390
    .restart local v4    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2392
    .end local v4    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const-string v11, "stringarrayresponse"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2393
    .local v2, "agentAliases":[Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 2394
    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sawInternal() agentAliases.length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    move-object v8, v2

    .local v8, "arr$":[Ljava/lang/String;
    array-length v10, v8

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_4

    aget-object v6, v8, v9

    .line 2396
    .local v6, "alias":Ljava/lang/String;
    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sawInternal() agentAliases="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v6    # "alias":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    :cond_4
    move-object v4, v3

    .line 2399
    .restart local v4    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setAdminConfigureBundleForCs(IILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 22
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "profile"    # Landroid/os/Bundle;
    .param p5, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3224
    const-string v4, "setAdminConfigureBundleForCs"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3226
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 3227
    .local v12, "agentResponse":Landroid/os/Bundle;
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAdminConfigureBundleForCs "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    if-nez p4, :cond_0

    .line 3229
    const-string v4, "UcmService"

    const-string v5, "setAdminConfigureBundleForCs : Bundle is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3231
    const-string v4, "errorresponse"

    const/16 v5, 0x10

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 3300
    .end local v12    # "agentResponse":Landroid/os/Bundle;
    .local v13, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v13

    .line 3235
    .end local v13    # "agentResponse":Ljava/lang/Object;
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    .line 3236
    .local v11, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v11, :cond_1

    .line 3237
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no agent found for Source = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3239
    const-string v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 3240
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3244
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 3245
    .local v18, "id":J
    new-instance v10, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3246
    .local v10, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3247
    .local v7, "uid":I
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v20

    .line 3248
    .local v20, "uriuid":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_2

    .line 3249
    move/from16 v0, v20

    if-eq v7, v0, :cond_2

    .line 3250
    const/16 v4, 0x3e8

    if-ne v7, v4, :cond_2

    .line 3251
    move/from16 v7, v20

    .line 3255
    :cond_2
    move/from16 v6, p2

    .line 3257
    .local v6, "user_id":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 3258
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING!!!! setConfigureBundleForCsInternal is NOT allowed for URI = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3260
    const-string v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 3261
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3263
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3266
    const-string v4, "applet_location"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3267
    .local v15, "appletLocation":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 3268
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkPluginUsed(ILjava/lang/String;)Z

    move-result v21

    .line 3269
    .local v21, "usedPlugin":Z
    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_4

    .line 3270
    const-string v4, "UcmService"

    const-string v5, "the plugin already is used"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3272
    const-string v4, "errorresponse"

    const/16 v5, 0x22

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 3273
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3275
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3276
    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3277
    const-string v4, "errorresponse"

    const/16 v5, 0x19

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 3278
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3282
    .end local v13    # "agentResponse":Ljava/lang/Object;
    .end local v21    # "usedPlugin":Z
    :cond_5
    invoke-virtual {v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v14

    .line 3283
    .local v14, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v14, :cond_6

    .line 3284
    const-string v4, "UcmService"

    const-string v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3286
    const-string v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 3287
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3289
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_6
    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v14, v0, v1, v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v12

    .line 3290
    if-nez v12, :cond_7

    .line 3291
    const-string v4, "UcmService"

    const-string v5, "ERROR: Null Response received from agentService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    new-instance v12, Landroid/os/Bundle;

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 3293
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3294
    const-string v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 3295
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3297
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string v4, "intresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 3298
    .local v17, "response":I
    const-string v4, "errorresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 3299
    .local v16, "errorcode":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPackageSetting Response from plugin:  error code = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v12

    .line 3300
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 21
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "certChain"    # [B
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2465
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCertificateChain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2468
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2469
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2470
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2471
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2541
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 2476
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2477
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2478
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v20

    .line 2479
    .local v20, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    .line 2480
    move/from16 v0, v20

    if-eq v5, v0, :cond_1

    .line 2481
    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    .line 2482
    move/from16 v5, v20

    .line 2486
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2487
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v19

    .line 2488
    .local v19, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_2

    const/16 v19, 0x1

    .line 2490
    :cond_2
    if-eqz p3, :cond_3

    const-string v2, "admin_id"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v15, 0x0

    .line 2493
    .local v15, "ismdmcaller":Z
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2494
    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 2495
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! setCertificateChain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2497
    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2498
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2490
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .end local v15    # "ismdmcaller":Z
    .end local v16    # "id":J
    :cond_4
    const/4 v15, 0x1

    goto :goto_1

    .line 2500
    .restart local v15    # "ismdmcaller":Z
    .restart local v16    # "id":J
    :cond_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2503
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2504
    .local v13, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2505
    const-string v2, "user_id"

    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2506
    const-string v2, "ownerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2507
    const-string v2, "resource"

    move/from16 v0, v19

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2508
    const-string v2, "extraArgs"

    move-object/from16 v0, p3

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2510
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCertificateChain KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 2516
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_6

    .line 2517
    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2519
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2520
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2523
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v2, v0, v1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2524
    if-nez v10, :cond_7

    .line 2525
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2527
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2528
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2529
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2531
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string v2, "booleanresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 2532
    .local v18, "response":Z
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 2533
    .local v14, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCertificateChain Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    if-nez v18, :cond_8

    if-nez v14, :cond_8

    .line 2536
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for setCertificateChain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2538
    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2539
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_8
    move-object v11, v10

    .line 2541
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setConfigureBundleForCs(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "profile"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 3209
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfigureBundleForCs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3211
    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez p3, :cond_0

    .line 3212
    const-string v1, "UcmService"

    const-string v2, "setConfigureBundleForCs : Bundle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    const-string v1, "intresponse"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3214
    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3219
    :goto_0
    return-object v0

    .line 3217
    :cond_0
    const-string v1, "intresponse"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3218
    const-string v1, "errorresponse"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 8
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "option"    # Landroid/os/Bundle;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xe

    const/4 v6, -0x1

    .line 3161
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3162
    .local v1, "agentResponse":Landroid/os/Bundle;
    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3163
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v0, :cond_0

    .line 3164
    const-string v4, "intresponse"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3165
    const-string v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3178
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3169
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3170
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_1

    .line 3171
    const-string v4, "UcmService"

    const-string v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    const-string v4, "intresponse"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3173
    const-string v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3174
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3176
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_1
    invoke-interface {v3, p1, p4, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3177
    const-string v4, "UcmService"

    const-string v5, "setCredentialStorageProperty Response from plugin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 3178
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public setState(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xe

    .line 3610
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    const-string v4, "setState"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3612
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3614
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 3615
    const-string v4, "UcmService"

    const-string v5, "uri is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    const-string v4, "errorresponse"

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3648
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3620
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    .line 3621
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v4, 0x1

    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 3622
    const-string v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3627
    :goto_1
    if-nez v0, :cond_2

    .line 3628
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    const-string v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3630
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3624
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3633
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3634
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_3

    .line 3635
    const-string v4, "UcmService"

    const-string v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    const-string v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3637
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3640
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-interface {v3, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setState(I)Landroid/os/Bundle;

    move-result-object v1

    .line 3641
    if-nez v1, :cond_4

    .line 3642
    const-string v4, "UcmService"

    const-string v5, "ERROR: Null Response received from agentService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3644
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3645
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    move-object v2, v1

    .line 3648
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public showEnforcedLockTypeNotification(ILjava/lang/String;)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "csName"    # Ljava/lang/String;

    .prologue
    .line 5027
    const-string v9, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showEnforcedLockTypeNotification : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5028
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 5029
    .local v4, "notiMgr":Landroid/app/NotificationManager;
    if-nez v4, :cond_0

    .line 5030
    const-string v9, "UcmService"

    const-string v10, "Failed to get NotificationManager"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5058
    :goto_0
    return-void

    .line 5034
    :cond_0
    :try_start_0
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 5035
    .local v8, "uh":Landroid/os/UserHandle;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 5036
    .local v6, "notification":Landroid/app/Notification;
    const-wide/16 v10, 0x0

    iput-wide v10, v6, Landroid/app/Notification;->when:J

    .line 5037
    const/16 v9, 0x20

    iput v9, v6, Landroid/app/Notification;->flags:I

    .line 5039
    new-instance v2, Landroid/content/Intent;

    const-string v9, "ACTION_ENFORCE_LOCKTYPE"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5040
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "CS_NAME"

    invoke-virtual {v2, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5041
    const-string v9, "USER_ID"

    invoke-virtual {v2, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5043
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const/high16 v10, 0x8000000

    invoke-static {v9, p1, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 5044
    .local v7, "pi":Landroid/app/PendingIntent;
    const v9, 0x1080027

    iput v9, v6, Landroid/app/Notification;->icon:I

    .line 5045
    const-string v5, ""

    .line 5046
    .local v5, "notiTitle":Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v9, ""

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 5047
    const-string v9, ":"

    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 5048
    .local v1, "index":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_1

    .line 5049
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 5052
    .end local v1    # "index":I
    :cond_1
    const-string v3, "Please set the screen lock type with the smartcard."

    .line 5053
    .local v3, "notiMessage":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9, v5, v3, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 5054
    add-int/lit16 v9, p1, 0x1f40

    invoke-virtual {v4, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5055
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notiMessage":Ljava/lang/String;
    .end local v5    # "notiTitle":Ljava/lang/String;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "pi":Landroid/app/PendingIntent;
    .end local v8    # "uh":Landroid/os/UserHandle;
    :catch_0
    move-exception v0

    .line 5056
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "UcmService"

    const-string v10, "handled expected Exception in showEnforcedLockTypeNotification()."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sign(Ljava/lang/String;[BLjava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2855
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sign "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2857
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2858
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2859
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sign : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2861
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2862
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    .line 2937
    :goto_0
    return-object v2

    .line 2866
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2867
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2868
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v18

    .line 2869
    .local v18, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    .line 2870
    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    .line 2871
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2872
    :cond_1
    move/from16 v5, v18

    .line 2876
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2877
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v17

    .line 2878
    .local v17, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    const/16 v17, 0x1

    .line 2880
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2881
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v19

    .line 2882
    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    .line 2883
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 2884
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sign new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    .end local v19    # "userId":I
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2892
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 2893
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! sign is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2895
    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2896
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2886
    .end local v14    # "id":J
    .restart local v19    # "userId":I
    :cond_5
    const-string v2, "UcmService"

    const-string v3, "sign user id id not valid. Keeping same userid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2898
    .end local v19    # "userId":I
    .restart local v14    # "id":J
    :cond_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2901
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2902
    .local v12, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2903
    const-string v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2904
    const-string v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2905
    const-string v2, "resource"

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2907
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sign KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sign KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sign KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 2913
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_7

    .line 2914
    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2916
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2917
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2919
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->sign(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2920
    if-nez v10, :cond_8

    .line 2921
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2923
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2924
    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2925
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2927
    :cond_8
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 2928
    .local v16, "response":[B
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 2929
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sign Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    if-nez v16, :cond_9

    .line 2932
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for sign"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2934
    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2935
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2937
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 345
    const-string v0, "UcmService"

    const-string v1, "systemReady is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemReadyCalled:Z

    .line 347
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 348
    return-void
.end method

.method public unwrapDek(Ljava/lang/String;[B)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "wrappedDek"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 1784
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unwrapDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1789
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "unwrapDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1796
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 1797
    :cond_0
    const-string v5, "UcmService"

    const-string v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    const-string v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1799
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    .line 1830
    :goto_0
    return-object v5

    .line 1790
    :catch_0
    move-exception v3

    .line 1791
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1792
    const-string v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1793
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1802
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .line 1803
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 1804
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1809
    :goto_1
    if-nez v0, :cond_3

    .line 1810
    const-string v5, "UcmService"

    const-string v6, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1812
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1806
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1814
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .line 1815
    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    .line 1816
    const-string v5, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1818
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1821
    :cond_4
    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->unwrapDek([B)Landroid/os/Bundle;

    move-result-object v1

    .line 1822
    if-nez v1, :cond_5

    .line 1823
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1825
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1826
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1828
    :cond_5
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1829
    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unwrapDek Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3436
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "verifyPin : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", userId-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3439
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_1

    .line 3440
    :cond_0
    const-string v6, "UcmService"

    const-string v7, "uri is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    const-string v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3491
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3445
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-eqz p3, :cond_2

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_3

    .line 3446
    :cond_2
    const-string v6, "UcmService"

    const-string v7, "pin is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    const-string v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3448
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3451
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    .line 3452
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v6, 0x1

    const-string v7, "boot_test"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_4

    .line 3453
    const-string v6, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3458
    :goto_1
    if-nez v0, :cond_5

    .line 3459
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no agent found for Source = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    const-string v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3461
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3455
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3463
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3464
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_6

    .line 3465
    const-string v6, "UcmService"

    const-string v7, "no agentService found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    const-string v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3467
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3470
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-interface {v3, p1, p3, p4}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3471
    if-nez v1, :cond_7

    .line 3472
    const-string v6, "UcmService"

    const-string v7, "ERROR: Null Response received from agentService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3474
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v6, "errorresponse"

    const/16 v7, 0xd

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3475
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3478
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string v6, "state"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3479
    .local v5, "state":I
    const-string v6, "remainCnt"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3480
    .local v4, "remainCnt":I
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOCK_STATE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "REMAIN_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    const/16 v6, 0x83

    if-ne v5, v6, :cond_8

    .line 3483
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    .line 3486
    :cond_8
    const/16 v6, 0x85

    if-ne v5, v6, :cond_9

    .line 3487
    const-string v6, "UcmService"

    const-string v7, "state changed to blocked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    const/16 v6, 0x85

    invoke-direct {p0, v6, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendStateChangeBroadcast(ILjava/lang/String;)V

    :cond_9
    move-object v2, v1

    .line 3491
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3496
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "verifyPuk : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3499
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_1

    .line 3500
    :cond_0
    const-string v6, "UcmService"

    const-string v7, "uri is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    const-string v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3544
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3505
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-eqz p3, :cond_2

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_3

    .line 3506
    :cond_2
    const-string v6, "UcmService"

    const-string v7, "pin is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    const-string v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3508
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3511
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    .line 3512
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v6, 0x1

    const-string v7, "boot_test"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_4

    .line 3513
    const-string v6, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3518
    :goto_1
    if-nez v0, :cond_5

    .line 3519
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no agent found for Source = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    const-string v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3521
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3515
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3524
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3525
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_6

    .line 3526
    const-string v6, "UcmService"

    const-string v7, "no agentService found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    const-string v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3528
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3531
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3532
    if-nez v1, :cond_7

    .line 3533
    const-string v6, "UcmService"

    const-string v7, "ERROR: Null Response received from agentService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3534
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3535
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v6, "errorresponse"

    const/16 v7, 0xd

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3536
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3539
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string v6, "state"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3540
    .local v5, "state":I
    const-string v6, "remainCnt"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3541
    .local v4, "remainCnt":I
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOCK_STATE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "REMAIN_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 3544
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method
