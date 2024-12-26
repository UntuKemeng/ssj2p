.class public Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
.super Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy$Stub;
.source "EnterpriseSharedDevicePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;,
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;,
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;,
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;
    }
.end annotation


# static fields
.field public static final KEYGUARD_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardService"

.field public static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final MAX_PWD_LENGTH:I = 0x10

.field private static final MAX_SALT_LENGTH:I = 0x20

.field private static final PASSWORD_SALT:Ljava/lang/String; = "passwordsaltshareddevice"

.field private static final PERMISSION_SD_KEYGUARD:Ljava/lang/String; = "com.sec.knox.permission.KEYGUARD_SERVICE"

.field private static final PERMISSION_SHARED_DEVICES:Ljava/lang/String; = "android.permission.sec.MDM_SHARED_DEVICE"

.field private static final SD_KEYGUARD_PACKAGE:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice.keyguard"

.field private static final SD_KEYGUARD_RECEIVER_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardReceiver"

.field private static final SD_PACKAGE:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice"

.field private static final SD_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice"

.field private static final SD_STATUS:Ljava/lang/String; = "shared_device_status"

.field public static final SHARED_PWD:Ljava/lang/String; = "SharedDevice"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static sContextStatic:Landroid/content/Context;

.field private static sSharedDevicesStateInternal:Z


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

.field private mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mELM:Landroid/app/enterprise/license/EnterpriseLicenseManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mKeyStore:Landroid/security/KeyStore;

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field private mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSDAgentInstallerPackage:Ljava/lang/String;

.field private mSDAgentInstallerPackageUid:I

.field private mSharedDevicesState:Z

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private mTimaVersion:Ljava/lang/String;

.field private mUsersDir:Ljava/io/File;

.field private mValues:Landroid/content/ContentValues;

.field private mWhere:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const-class v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->USER_INFO_DIR:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sSharedDevicesStateInternal:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 134
    invoke-direct {p0}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy$Stub;-><init>()V

    .line 103
    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    .line 120
    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 125
    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    .line 126
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    .line 127
    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackage:Ljava/lang/String;

    .line 128
    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPersonaManager:Landroid/os/PersonaManager;

    .line 129
    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 130
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaVersion:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "tima"

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TIMA_SERVICE:Ljava/lang/String;

    .line 747
    new-instance v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sContextStatic:Landroid/content/Context;

    .line 137
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isKnoxVersionSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getSharedDevicesState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    .line 139
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getSharedDevicesState()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sSharedDevicesStateInternal:Z

    .line 140
    iget-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 143
    :cond_0
    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v7

    .line 146
    .local v7, "mTimaService":Landroid/service/tima/ITimaService;
    if-eqz v7, :cond_1

    .line 147
    :try_start_0
    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tima Version:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;)V

    .line 153
    .local v1, "sdStateReceiver":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Registering broadcast SDAgentPackageStateReceiver!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 162
    .end local v1    # "sdStateReceiver":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;
    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    .end local v7    # "mTimaService":Landroid/service/tima/ITimaService;
    :goto_1
    return-void

    .line 148
    .restart local v7    # "mTimaService":Landroid/service/tima/ITimaService;
    :catch_0
    move-exception v6

    .line 149
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v7    # "mTimaService":Landroid/service/tima/ITimaService;
    :cond_2
    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v2, "This KNOX Version is not supported!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkSDSignature()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;[Landroid/app/enterprise/license/LicenseInfo;)[Landroid/app/enterprise/license/LicenseInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .param p1, "x1"    # [Landroid/app/enterprise/license/LicenseInfo;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->removeCredentialStoragePolicies()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->removeAppliedPolicies()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->disableSDKeyguard()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    return p1
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 86
    sput-boolean p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sSharedDevicesStateInternal:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/internal/policy/IKeyguardService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->showProgressDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->findSDAgentInstallerPackageUid()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->deleteAndroidKeystoreCertificates()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->applyRuntimePermissionsToSDAgent()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    return-object v0
.end method

.method private applyCredentialStoragePolicies()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 501
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v5, "Apply credential storage policy "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 503
    .local v2, "mEKM":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz v2, :cond_0

    .line 504
    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getClientCertificateManagerPolicy(Landroid/content/Context;)Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;

    move-result-object v0

    .line 505
    .local v0, "ccm":Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;
    new-instance v1, Lcom/sec/enterprise/knox/ccm/CCMProfile;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ccm/CCMProfile;-><init>()V

    .line 506
    .local v1, "defaultCCMProfile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    sget-object v4, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    iput-object v4, v1, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 507
    iput-boolean v6, v1, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    .line 508
    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;->setCCMProfile(Lcom/sec/enterprise/knox/ccm/CCMProfile;)Z

    .line 509
    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getTimaKeystorePolicy(Landroid/content/Context;)Lcom/sec/enterprise/knox/keystore/TimaKeystore;

    move-result-object v3

    .line 510
    .local v3, "mTKS":Lcom/sec/enterprise/knox/keystore/TimaKeystore;
    invoke-virtual {v3, v6}, Lcom/sec/enterprise/knox/keystore/TimaKeystore;->enableTimaKeystore(Z)Z

    .line 512
    .end local v0    # "ccm":Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;
    .end local v1    # "defaultCCMProfile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    .end local v3    # "mTKS":Lcom/sec/enterprise/knox/keystore/TimaKeystore;
    :cond_0
    return-void
.end method

.method private applyPolicies()V
    .locals 5

    .prologue
    .line 583
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Applying Policies!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const/4 v0, 0x0

    .line 586
    .local v0, "applied":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/app/enterprise/PasswordPolicy;->setMaximumFailedPasswordsForDeviceDisable(I)Z

    move-result v2

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->allowWallpaperChange(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    and-int v0, v2, v3

    .line 591
    :goto_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Policies Applied? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to apply policies. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private applyRuntimePermissionsToSDAgent()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 279
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v1

    new-instance v2, Lcom/sec/enterprise/AppIdentity;

    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-direct {v2, v3, v4}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/enterprise/ApplicationPolicy;->applyRuntimePermissions(Lcom/sec/enterprise/AppIdentity;Ljava/util/List;I)I

    move-result v0

    .line 280
    .local v0, "status":I
    packed-switch v0, :pswitch_data_0

    .line 299
    const/4 v0, -0x3

    .line 300
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "permissions not applied"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    return v0

    .line 282
    :pswitch_0
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Application not compiled with M"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :pswitch_1
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed because of invalid input"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :pswitch_2
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed because of invalid signature"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :pswitch_3
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed for an unknown reason"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v0, -0x3

    .line 293
    goto :goto_0

    .line 295
    :pswitch_4
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Runtime permissions applied successfully"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x0

    .line 297
    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static checkCallerUID()Z
    .locals 2

    .prologue
    .line 800
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkPackageSignature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    :cond_0
    const/4 v0, 0x1

    .line 803
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkPackageSignature()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 808
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sContextStatic:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 820
    .local v0, "callingPackageName":Ljava/lang/String;
    .local v1, "platformSigned":Z
    :goto_0
    return v3

    .line 810
    .end local v0    # "callingPackageName":Ljava/lang/String;
    .end local v1    # "platformSigned":Z
    :cond_0
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sContextStatic:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 811
    .restart local v0    # "callingPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 812
    .restart local v1    # "platformSigned":Z
    if-eqz v0, :cond_2

    .line 813
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 815
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sContextStatic:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v0, v4, v3

    .line 818
    :cond_1
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sContextStatic:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android"

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    :cond_2
    :goto_1
    move v3, v1

    .line 820
    goto :goto_0

    :cond_3
    move v1, v3

    .line 818
    goto :goto_1
.end method

.method private checkSDSignature()Z
    .locals 4

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android"

    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 443
    .local v0, "platformSigned":Z
    :goto_0
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is SD Agent platform signed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return v0

    .line 442
    .end local v0    # "platformSigned":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearAllNotifications(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 1384
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1385
    .local v2, "token":J
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 1388
    .local v1, "sService":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->clearAllNotificationsAsUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1394
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1396
    const/4 v4, 0x1

    :goto_0
    return v4

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed to clear notification bar"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1392
    const/4 v4, 0x0

    .line 1394
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private clearClipboardData()Z
    .locals 4

    .prologue
    .line 1087
    const/4 v1, 0x0

    .line 1089
    .local v1, "success":Z
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "clearClipboardData in Service!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/MiscPolicy;->clearClipboardData()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1096
    :goto_0
    return v1

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clearRecentTasks()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1374
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "cleartask in Service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteAndroidKeystoreCertificates()Z
    .locals 4

    .prologue
    .line 1100
    const/4 v1, 0x0

    .line 1102
    .local v1, "success":Z
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "deleteAndroidKeystoreCertificates in Service!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->reset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1106
    const/4 v1, 0x1

    .line 1107
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Android Keystore Reset Successful!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :goto_0
    return v1

    .line 1109
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Android Keystore Reset Failed!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteUserInstalledCerts(IZ)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "deleteAll"    # Z

    .prologue
    .line 1218
    const/4 v4, 0x0

    .line 1220
    .local v4, "isSuccess":Z
    const/4 v5, 0x0

    .line 1221
    .local v5, "keyChainAliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1222
    .local v0, "allAlias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v6

    .line 1223
    .local v6, "mEKM":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz v6, :cond_2

    .line 1224
    iget-object v7, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getClientCertificateManagerPolicy(Landroid/content/Context;)Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;

    move-result-object v1

    .line 1225
    .local v1, "ccm":Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getCCMService()Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1226
    iget-object v7, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    new-instance v8, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-interface {v7, v8}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getKeyChainMarkedAliases(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v5

    .line 1228
    :cond_0
    if-nez p2, :cond_1

    .line 1229
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1230
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 1231
    sget-object v8, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "keychain user"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;->deleteCertificate(Ljava/lang/String;)Z

    move-result v4

    .line 1230
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1236
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;->getCertificateAliases()Ljava/util/List;

    move-result-object v0

    .line 1237
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1238
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 1239
    sget-object v8, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "all certs"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;->deleteCertificate(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1238
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1245
    .end local v1    # "ccm":Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;
    .end local v3    # "i":I
    .end local v6    # "mEKM":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :catch_0
    move-exception v2

    .line 1246
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1248
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return v4
.end method

.method private disableSDKeyguard()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 538
    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v1, "Dismissing SD Keyguard!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPersonaManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v0}, Landroid/os/PersonaManager;->hideScrim()V

    .line 541
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersonaManager;->notifyKeyguardShow(IZ)V

    .line 543
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 545
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shared_device_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 546
    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v1, "Disabling SD Keyguard!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 548
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.keyguard.KeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 549
    return-void
.end method

.method private enableSD()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 570
    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v1, "Enabling Shared Devices!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isKeyguardLaunched"

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 575
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shared_device_status"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->applyPolicies()V

    .line 577
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->enableSDKeyguard()V

    .line 578
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->startSDKeyguard()V

    .line 579
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sendNotificationToKLMSAgent()V

    .line 580
    return-void
.end method

.method private enableSDKeyguard()V
    .locals 4

    .prologue
    .line 595
    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v1, "Enabling SD Keyguard!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 599
    return-void
.end method

.method private enforceSharedDevicePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SHARED_DEVICE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private findSDAgentInstallerPackageUid()I
    .locals 5

    .prologue
    .line 552
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    .line 553
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackage:Ljava/lang/String;

    .line 555
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Trying to find installer package UID for SD Agent!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "installerPackageName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installer package for SD Agent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isActiveMDM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    .line 560
    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .end local v1    # "installerPackageName":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installer package \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with UID \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' found for SD Agent!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    return v2

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private forceStopApp(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1252
    const/4 v1, 0x0

    .line 1253
    .local v1, "appStopped":Z
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "forceStopApp is called"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1257
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 1258
    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    const/4 v1, 0x1

    .line 1264
    .end local v0    # "am":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    return v1

    .line 1261
    :catch_0
    move-exception v2

    .line 1262
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException on force stop"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private generateSalt()[B
    .locals 3

    .prologue
    .line 1009
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1010
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v2, 0x20

    new-array v1, v2, [B

    .line 1011
    .local v1, "salt":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1012
    return-object v1
.end method

.method private getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_0

    .line 166
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private getCCMService()Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    if-nez v1, :cond_0

    .line 216
    :try_start_0
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getDefaultDeviceStorageFiles()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 410
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v7, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v0

    .line 412
    .local v2, "proj":[Ljava/lang/String;
    const-string v0, "content://media/external/file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 413
    .local v1, "MEDIA_FILES_URI":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 414
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 415
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 416
    .local v9, "index":I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 417
    .local v10, "size":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 418
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 419
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 418
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 422
    :cond_0
    const-string/jumbo v0, "getDefaultDeviceStorageFiles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 426
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v10    # "size":I
    :goto_1
    return-object v7

    .line 425
    :cond_1
    const-string/jumbo v0, "getDefaultDeviceStorageFiles"

    const-string v3, "cursor returned null"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getELM()Landroid/app/enterprise/license/EnterpriseLicenseManager;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mELM:Landroid/app/enterprise/license/EnterpriseLicenseManager;

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/license/EnterpriseLicenseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mELM:Landroid/app/enterprise/license/EnterpriseLicenseManager;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mELM:Landroid/app/enterprise/license/EnterpriseLicenseManager;

    return-object v0
.end method

.method private getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method private getEncodedPassword(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "savePwd"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1026
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getSaltFilepath(I)Ljava/lang/String;

    move-result-object v3

    .line 1027
    .local v3, "saltPath":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1028
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->generateSalt()[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->writeFile(Ljava/lang/String;[B)V

    .line 1030
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1031
    .local v2, "salt":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1032
    const/4 v4, 0x0

    .line 1036
    :goto_0
    return-object v4

    .line 1034
    :cond_1
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1035
    .local v0, "lockPatternUtil":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1036
    .local v1, "passwordHash":[B
    invoke-static {v1, v6}, Lcom/sec/knox/container/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getKeyStore()Landroid/security/KeyStore;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyStore:Landroid/security/KeyStore;

    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private getMiscPolicy()Landroid/app/enterprise/MiscPolicy;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    return-object v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_0

    .line 173
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    return-object v0
.end method

.method private getPersonaManager()Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPersonaManager:Landroid/os/PersonaManager;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_1

    .line 272
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    return-object v0
.end method

.method private getSaltFilepath(I)Ljava/lang/String;
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1016
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mUsersDir:Ljava/io/File;

    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mUsersDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "passwordsaltshareddevice"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSharedDevicesState()Z
    .locals 7

    .prologue
    .line 774
    const/4 v2, 0x0

    .line 776
    .local v2, "status":Z
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getSharedDevicesState in Service"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    const-string v4, "SHAREDDEVICE"

    const-string v5, "enabled"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 778
    .local v1, "result":I
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get Result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    if-lez v1, :cond_0

    .line 780
    const/4 v2, 0x1

    .line 782
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    .end local v1    # "result":I
    :goto_0
    return v2

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTimaInstance()Lcom/android/server/pm/TimaHelper;
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v1, :cond_0

    .line 256
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 257
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getTimaInstance success"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    :goto_0
    return-object v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isActiveMDM(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 483
    const/4 v2, 0x0

    .line 484
    .local v2, "isActiveMDM":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getELM()Landroid/app/enterprise/license/EnterpriseLicenseManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    .line 486
    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    if-eqz v5, :cond_0

    .line 487
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking license for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    .local v0, "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 490
    .local v4, "licenseInfo":Landroid/app/enterprise/license/LicenseInfo;
    invoke-virtual {v4}, Landroid/app/enterprise/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 491
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is Active MDM!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const/4 v2, 0x1

    .line 497
    .end local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "licenseInfo":Landroid/app/enterprise/license/LicenseInfo;
    :cond_0
    return v2

    .line 489
    .restart local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "licenseInfo":Landroid/app/enterprise/license/LicenseInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isActiveMDMPresent()Z
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 454
    const/4 v5, 0x0

    .line 455
    .local v5, "isActiveMDMPresent":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getELM()Landroid/app/enterprise/license/EnterpriseLicenseManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    .line 457
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_0

    move v6, v5

    .line 479
    .end local v5    # "isActiveMDMPresent":Z
    .local v6, "isActiveMDMPresent":I
    :goto_0
    return v6

    .line 460
    .end local v6    # "isActiveMDMPresent":I
    .restart local v5    # "isActiveMDMPresent":Z
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 462
    .local v1, "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    if-eqz v10, :cond_3

    if-eqz v1, :cond_3

    .line 463
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 464
    .local v0, "activeAdmin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 465
    .local v9, "packageName":Ljava/lang/String;
    sget-object v10, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Checking license for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    .local v2, "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v8, v2, v4

    .line 468
    .local v8, "licenseInfo":Landroid/app/enterprise/license/LicenseInfo;
    invoke-virtual {v8}, Landroid/app/enterprise/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 469
    sget-object v10, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is Active MDM!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v5, 0x1

    .line 475
    .end local v8    # "licenseInfo":Landroid/app/enterprise/license/LicenseInfo;
    :cond_2
    if-eqz v5, :cond_1

    .end local v0    # "activeAdmin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v2    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_3
    move v6, v5

    .line 479
    .restart local v6    # "isActiveMDMPresent":I
    goto :goto_0

    .line 467
    .end local v6    # "isActiveMDMPresent":I
    .restart local v0    # "activeAdmin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v2    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "licenseInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v9    # "packageName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private isKnoxVersionSupported()Z
    .locals 4

    .prologue
    .line 448
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v0

    .line 449
    .local v0, "knoxVersionSupported":Z
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is current KNOX Version supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return v0
.end method

.method public static isSharedDeviceEnabledInternal()Z
    .locals 1

    .prologue
    .line 793
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    sget-boolean v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sSharedDevicesStateInternal:Z

    .line 796
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1062
    const/4 v4, 0x0

    .line 1064
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "r"

    invoke-direct {v5, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1065
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v0, v7, [B

    .line 1066
    .local v0, "content":[B
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v5, v0, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 1067
    .local v2, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 1068
    if-gtz v2, :cond_1

    move-object v4, v5

    .line 1082
    .end local v0    # "content":[B
    .end local v2    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-object v6

    .line 1071
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "content":[B
    .restart local v2    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    move-object v6, v7

    goto :goto_0

    .line 1072
    .end local v0    # "content":[B
    .end local v2    # "got":I
    :catch_0
    move-exception v1

    .line 1073
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    sget-object v7, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1074
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1075
    .local v3, "ioe":Ljava/io/IOException;
    :goto_2
    sget-object v7, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    if-eqz v4, :cond_0

    .line 1078
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1079
    :catch_2
    move-exception v7

    goto :goto_0

    .line 1074
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 1072
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method private removeAccounts(I)Z
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 1118
    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 1120
    .local v1, "am":Landroid/accounts/AccountManager;
    if-nez v1, :cond_1

    .line 1121
    const/4 v4, 0x0

    .line 1132
    :cond_0
    return v4

    .line 1123
    :cond_1
    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 1124
    .local v0, "accounts":[Landroid/accounts/Account;
    const/4 v4, 0x1

    .line 1126
    .local v4, "removed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-eqz v0, :cond_0

    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 1127
    aget-object v5, v0, v3

    invoke-virtual {v1, v5, v8, v8, v8}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    .line 1128
    .local v2, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeAccounts --- Account deleted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    if-eqz v2, :cond_2

    .line 1130
    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v5

    and-int/2addr v4, v5

    .line 1126
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private removeAppliedPolicies()V
    .locals 5

    .prologue
    .line 526
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Removing applied policies!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const/4 v1, 0x0

    .line 529
    .local v1, "removed":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/enterprise/PasswordPolicy;->setMaximumFailedPasswordsForDeviceDisable(I)Z

    move-result v2

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->allowWallpaperChange(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    and-int v1, v2, v3

    .line 534
    :goto_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Policies Removed? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to apply policies. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeCredentialStoragePolicies()V
    .locals 5

    .prologue
    .line 515
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v4, "Remove credential storage policy "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v1

    .line 517
    .local v1, "mEKM":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz v1, :cond_0

    .line 518
    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getClientCertificateManagerPolicy(Landroid/content/Context;)Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;

    move-result-object v0

    .line 519
    .local v0, "ccm":Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;->deleteCCMProfile()Z

    .line 520
    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getTimaKeystorePolicy(Landroid/content/Context;)Lcom/sec/enterprise/knox/keystore/TimaKeystore;

    move-result-object v2

    .line 521
    .local v2, "mTKS":Lcom/sec/enterprise/knox/keystore/TimaKeystore;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/keystore/TimaKeystore;->enableTimaKeystore(Z)Z

    .line 523
    .end local v0    # "ccm":Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;
    .end local v2    # "mTKS":Lcom/sec/enterprise/knox/keystore/TimaKeystore;
    :cond_0
    return-void
.end method

.method private resetTheme()V
    .locals 4

    .prologue
    .line 1136
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1139
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.themecenter.APPLY_DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1140
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1141
    return-void
.end method

.method private sendNotificationToKLMSAgent()V
    .locals 5

    .prologue
    .line 611
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Sending Broadcast to KLMSAgent"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.knox.B2B_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    .local v1, "klmsIntent":Landroid/content/Intent;
    const-string/jumbo v2, "packageName"

    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "musd"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v4, "com.sec.knox.permission.KLMS_AGENT"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v1    # "klmsIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send intent to KLMS Agent. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showProgressDialog(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 430
    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v1, "Creating ProgressDialog!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    .line 432
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 433
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 434
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    const v2, 0x1040a85

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 436
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 437
    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v1, "Displaying ProgressDialog!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 439
    return-void
.end method

.method private startSDKeyguard()V
    .locals 4

    .prologue
    .line 602
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Launching SD Keyguard!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 604
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SharedDeviceKeyguardEventFlag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.enterprise.knox.shareddevice.keyguard"

    const-string v3, "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 606
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 607
    return-void
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "content"    # [B

    .prologue
    .line 1041
    const/4 v2, 0x0

    .line 1043
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_0

    :try_start_1
    array-length v4, p2

    if-lez v4, :cond_0

    .line 1045
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 1046
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1047
    const/4 v4, 0x0

    array-length v5, p2

    invoke-virtual {v3, p2, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1049
    :cond_0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 1059
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_0
    return-void

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "ioe":Ljava/io/IOException;
    :goto_1
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing to file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    if-eqz v2, :cond_1

    .line 1054
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1055
    :catch_1
    move-exception v1

    .line 1056
    .local v1, "ioeClose":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot close file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1050
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "ioeClose":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method private zeroOut(Ljava/lang/String;)V
    .locals 0
    .param p1, "buff"    # Ljava/lang/String;

    .prologue
    .line 1003
    if-eqz p1, :cond_0

    .line 1004
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 1006
    :cond_0
    const/4 p1, 0x0

    .line 1007
    return-void
.end method

.method private zeroOut([B)V
    .locals 2
    .param p1, "buff"    # [B

    .prologue
    const/4 v1, 0x0

    .line 998
    array-length v0, p1

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1000
    const/4 p1, 0x0

    .line 1001
    return-void
.end method


# virtual methods
.method public bindTodeviceKeyguard()V
    .locals 6

    .prologue
    .line 737
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Binding to Normal Keyguard!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 739
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.keyguard.KeyguardService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyguardConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancelProgressDialog()V
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    .line 1272
    :cond_0
    return-void
.end method

.method public checkSDPasswordTIMA(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 963
    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v7, "checkSDPasswordTIMA"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const/4 v1, -0x1

    .line 965
    .local v1, "result":I
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v6

    if-nez v6, :cond_1

    move v5, v1

    .line 995
    :cond_0
    :goto_0
    return v5

    .line 968
    :cond_1
    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v7, "caller uid correct"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaVersion:Ljava/lang/String;

    const-string v7, "3.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 971
    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v7, "TIMA version correct"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getTimaInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 973
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 974
    .local v2, "token":J
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz p2, :cond_4

    .line 976
    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "password not null and empty"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {p0, p1, v6, v5}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEncodedPassword(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 978
    if-nez p1, :cond_2

    move v5, v1

    .line 979
    goto :goto_0

    .line 981
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SharedDevice"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v0

    .line 982
    .local v0, "mTimaPassword":[B
    if-nez v0, :cond_3

    move v5, v1

    .line 983
    goto :goto_0

    .line 985
    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 986
    .local v4, "validate":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 987
    const/4 v1, 0x0

    .line 991
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->zeroOut([B)V

    .line 993
    .end local v0    # "mTimaPassword":[B
    .end local v4    # "validate":Ljava/lang/String;
    :cond_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "token":J
    :cond_5
    move v5, v1

    .line 995
    goto :goto_0

    .line 989
    .restart local v0    # "mTimaPassword":[B
    .restart local v2    # "token":J
    .restart local v4    # "validate":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public checkTIMAStatusSD(I)Z
    .locals 6
    .param p1, "userid"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 942
    const/4 v0, 0x0

    .line 943
    .local v0, "result":Z
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v4

    if-nez v4, :cond_0

    .line 960
    .end local v0    # "result":Z
    :goto_0
    return v0

    .line 947
    .restart local v0    # "result":Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaVersion:Ljava/lang/String;

    const-string v5, "3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    move v0, v2

    .line 948
    goto :goto_0

    .line 951
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getTimaInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 952
    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/TimaHelper;->checkTimaStatus(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 953
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed to check TKS status..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/TimaException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v2

    .line 955
    goto :goto_0

    .line 957
    :catch_0
    move-exception v1

    .local v1, "te":Lcom/android/server/pm/TimaException;
    move v0, v3

    .line 958
    goto :goto_0

    .end local v1    # "te":Lcom/android/server/pm/TimaException;
    :cond_3
    move v0, v3

    .line 960
    goto :goto_0
.end method

.method public clearData(I)I
    .locals 8
    .param p1, "selections"    # I

    .prologue
    .line 1144
    const/4 v2, 0x0

    .line 1145
    .local v2, "status":I
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, "callingPackageName":Ljava/lang/String;
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData in Service called by: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkSDSignature()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1152
    .local v4, "token":J
    and-int/lit8 v3, p1, 0x1

    if-lez v3, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->deleteAndroidKeystoreCertificates()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1153
    or-int/lit8 v2, v2, 0x1

    .line 1155
    :cond_0
    and-int/lit8 v3, p1, 0x10

    if-lez v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->clearRecentTasks()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1156
    or-int/lit8 v2, v2, 0x10

    .line 1158
    :cond_1
    and-int/lit8 v3, p1, 0x2

    if-lez v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->clearClipboardData()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1159
    or-int/lit8 v2, v2, 0x2

    .line 1162
    :cond_2
    and-int/lit8 v3, p1, 0x4

    if-lez v3, :cond_3

    const-string v3, "com.android.phone"

    const/16 v6, 0x3e9

    invoke-direct {p0, v3, v6}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->forceStopApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1164
    or-int/lit8 v2, v2, 0x4

    .line 1169
    :cond_3
    and-int/lit8 v3, p1, 0x8

    if-lez v3, :cond_4

    .line 1170
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->resetTheme()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    or-int/lit8 v2, v2, 0x8

    .line 1177
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1182
    .end local v4    # "token":J
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    return v2

    .line 1174
    .restart local v4    # "token":J
    :catch_0
    move-exception v1

    .line 1175
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1177
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1180
    .end local v4    # "token":J
    :cond_5
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData failure due to invalid calling package: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearDataWithUserID(II)I
    .locals 8
    .param p1, "selections"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1187
    const/4 v2, 0x0

    .line 1188
    .local v2, "status":I
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, "callingPackageName":Ljava/lang/String;
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData in Service called by: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkSDSignature()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1193
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1195
    .local v4, "token":J
    and-int/lit8 v3, p1, 0x20

    if-lez v3, :cond_0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->removeAccounts(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1196
    or-int/lit8 v2, v2, 0x20

    .line 1198
    :cond_0
    and-int/lit8 v3, p1, 0x40

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->deleteUserInstalledCerts(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1199
    or-int/lit8 v2, v2, 0x40

    .line 1201
    :cond_1
    and-int/lit16 v3, p1, 0x80

    if-lez v3, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, p2, v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->deleteUserInstalledCerts(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1202
    or-int/lit16 v2, v2, 0x80

    .line 1208
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1213
    .end local v4    # "token":J
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    return v2

    .line 1205
    .restart local v4    # "token":J
    :catch_0
    move-exception v1

    .line 1206
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1208
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1211
    .end local v4    # "token":J
    :cond_3
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData failure due to invalid calling package: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearSDTIMA(Ljava/lang/String;)I
    .locals 5
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 929
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v1

    if-nez v1, :cond_1

    .line 930
    const/4 v0, -0x1

    .line 939
    :cond_0
    :goto_0
    return v0

    .line 933
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaVersion:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 936
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getTimaInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SharedDevice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public isSharedDeviceEnabled()Z
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    return v0
.end method

.method public notifyUserSignedIn(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V
    .locals 5
    .param p1, "userCredentials"    # Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    .prologue
    .line 841
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v1

    if-nez v1, :cond_0

    .line 854
    :goto_0
    return-void

    .line 844
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 846
    .local v2, "token":J
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "notifyUserSignedIn in Service"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->clearRecentTasks()Z

    .line 848
    new-instance v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v4, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 333
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 341
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 337
    return-void
.end method

.method public performUserAuthentication(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)I
    .locals 7
    .param p1, "userCredentials"    # Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    .prologue
    .line 823
    const/4 v0, -0x1

    .line 824
    .local v0, "authStatus":I
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .line 837
    .end local v0    # "authStatus":I
    .local v1, "authStatus":I
    :goto_0
    return v1

    .line 828
    .end local v1    # "authStatus":I
    .restart local v0    # "authStatus":I
    :cond_0
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "performUserAuthentication in Service"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 830
    .local v3, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v3, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V

    .line 831
    .local v4, "performUserAuth":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;
    invoke-virtual {v4}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->start()V

    .line 832
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 833
    invoke-virtual {v4}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->getAuthStatus()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .end local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v4    # "performUserAuth":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;
    :goto_1
    move v1, v0

    .line 837
    .end local v0    # "authStatus":I
    .restart local v1    # "authStatus":I
    goto :goto_0

    .line 834
    .end local v1    # "authStatus":I
    .restart local v0    # "authStatus":I
    :catch_0
    move-exception v2

    .line 835
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public saveSDPasswordInTIMA(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 900
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "saveSDPasswordInTIMA"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const/4 v1, 0x0

    .line 902
    .local v1, "result":Z
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v5

    if-nez v5, :cond_1

    move v4, v1

    .line 925
    :cond_0
    :goto_0
    return v4

    .line 905
    :cond_1
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v6, "caller uid correct"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaVersion:Ljava/lang/String;

    const-string v6, "3.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 908
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v6, "TIMA version correct"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getTimaInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 910
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 911
    .local v2, "token":J
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 913
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "password not null and empty"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEncodedPassword(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 915
    if-nez p1, :cond_2

    move v4, v1

    .line 916
    goto :goto_0

    .line 918
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 919
    .local v0, "entry":[B
    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SharedDevice"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v1

    .line 920
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mTimaHelper.setEntry : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->zeroOut([B)V

    .line 923
    .end local v0    # "entry":[B
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "token":J
    :cond_4
    move v4, v1

    .line 925
    goto :goto_0
.end method

.method public sendIntentforBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 857
    if-nez p1, :cond_1

    .line 858
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntentforBroadcast: Failed due to intent value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, "callingPackageName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntentforBroadcast in Service called by: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v1, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkSDSignature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Intent! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    if-eqz p2, :cond_2

    .line 868
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 870
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setSharedDeviceState(Landroid/app/enterprise/ContextInfo;IZ)I
    .locals 11
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "uid"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 630
    const/4 v3, -0x1

    .line 632
    .local v3, "status":I
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isKnoxVersionSupported()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 633
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSharedDeviceState in Service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    if-eqz p3, :cond_1

    .line 636
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkSDSignature()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v8, "com.sec.enterprise.knox.shareddevice"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    if-eq v5, v8, :cond_2

    .line 637
    :cond_0
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v8, "Calling UID is Unauthorized!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .line 732
    .end local v3    # "status":I
    .local v4, "status":I
    :goto_0
    return v4

    .line 640
    .end local v4    # "status":I
    .restart local v3    # "status":I
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 642
    .end local v3    # "status":I
    .restart local v4    # "status":I
    goto :goto_0

    .line 645
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "status":I
    .restart local v3    # "status":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v8, 0x3e8

    if-eq v5, v8, :cond_2

    .line 646
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v8, "Calling UID is Unauthorized!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 647
    .end local v3    # "status":I
    .restart local v4    # "status":I
    goto :goto_0

    .line 650
    .end local v4    # "status":I
    .restart local v3    # "status":I
    :cond_2
    const/4 v1, 0x0

    .line 651
    .local v1, "isActiveMDMPresent":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 653
    .local v6, "token":J
    :try_start_1
    iget v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    const v8, 0x7fffffff

    if-ne v5, v8, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isActiveMDMPresent()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_8

    :cond_3
    const/4 v1, 0x1

    .line 657
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 659
    :goto_2
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Active MDM Present: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    const v8, 0x7fffffff

    if-ne v5, v8, :cond_4

    .line 663
    :try_start_2
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v8, "Packages is Installed by User! so setting SDAgent as Default ID"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v8, "com.sec.enterprise.knox.shareddevice"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 670
    :cond_4
    :goto_3
    if-eqz p3, :cond_5

    if-nez v1, :cond_5

    .line 671
    const/4 p3, 0x0

    .line 672
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting Shared Device state to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const/4 v3, -0x2

    .line 676
    :cond_5
    const/4 v2, 0x0

    .line 678
    .local v2, "result":Z
    :try_start_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iput-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    .line 679
    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const-string v8, "adminUid"

    iget v9, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 680
    if-eqz p3, :cond_9

    .line 681
    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const-string v8, "enabled"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 685
    :goto_4
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iput-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    .line 686
    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    const-string v8, "adminUid"

    iget v9, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string v8, "SHAREDDEVICE"

    iget-object v9, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    iget-object v10, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 689
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Put Result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    .line 691
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    .line 693
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 694
    const/4 v3, 0x0

    .line 695
    :cond_6
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 700
    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 702
    if-eqz v2, :cond_b

    if-eqz p3, :cond_b

    .line 703
    const/4 v5, 0x1

    :try_start_4
    iput-boolean v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    .line 704
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sSharedDevicesStateInternal:Z

    .line 706
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 707
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.keyguard.KeyguardService"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lcom/android/server/pm/PackageManagerService;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_a

    .line 708
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v8, "Normal Keyguard component still enabled!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->bindTodeviceKeyguard()V

    .line 710
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->enableSD()V

    .line 715
    :goto_6
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->applyCredentialStoragePolicies()V

    .line 716
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->applyRuntimePermissionsToSDAgent()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v3

    .line 727
    :cond_7
    :goto_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "isActiveMDMPresent":Z
    .end local v2    # "result":Z
    .end local v6    # "token":J
    :goto_8
    move v4, v3

    .line 732
    .end local v3    # "status":I
    .restart local v4    # "status":I
    goto/16 :goto_0

    .line 653
    .end local v4    # "status":I
    .restart local v1    # "isActiveMDMPresent":Z
    .restart local v3    # "status":I
    .restart local v6    # "token":J
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 654
    :catch_1
    move-exception v0

    .line 655
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 657
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 665
    :catch_2
    move-exception v0

    .line 666
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 683
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "result":Z
    :cond_9
    :try_start_6
    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const-string v8, "enabled"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_4

    .line 696
    :catch_3
    move-exception v0

    .line 697
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 712
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_7
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v8, "Normal Keyguard component is disabled!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->enableSD()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    .line 724
    :catch_4
    move-exception v0

    .line 725
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_8
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 727
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    .line 717
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    if-eqz v2, :cond_7

    if-nez p3, :cond_7

    .line 718
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->disableSDKeyguard()V

    .line 720
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    .line 721
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sSharedDevicesStateInternal:Z

    .line 722
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->removeCredentialStoragePolicies()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    .line 727
    :catchall_1
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 730
    .end local v1    # "isActiveMDMPresent":Z
    .end local v2    # "result":Z
    .end local v6    # "token":J
    :cond_c
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v8, "This KNOX Version is not supported!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public signOutUser(Z)Z
    .locals 10
    .param p1, "userSwitch"    # Z

    .prologue
    .line 875
    const/4 v4, 0x0

    .line 876
    .local v4, "success":Z
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v4

    .line 896
    .end local v4    # "success":Z
    .local v5, "success":I
    :goto_0
    return v5

    .line 879
    .end local v5    # "success":I
    .restart local v4    # "success":Z
    :cond_0
    const/4 v6, 0x0

    .line 880
    .local v6, "userId":I
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->removeAppliedPolicies()V

    .line 882
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "signOutUser in Service\nUser Switch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v1, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 884
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;

    iget-object v7, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v7, v1, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Z)V

    .line 885
    .local v3, "signout":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;
    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;->start()V

    .line 886
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 887
    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;->isSuccessful()Z

    move-result v4

    .line 888
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->clearAllNotifications(I)Z

    move-result v2

    .line 889
    .local v2, "retOfClearNoti":Z
    if-eqz v2, :cond_1

    .line 890
    sget-object v7, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v8, "clear all notification is successful"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "retOfClearNoti":Z
    .end local v3    # "signout":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->applyPolicies()V

    move v5, v4

    .line 896
    .restart local v5    # "success":I
    goto :goto_0

    .line 892
    .end local v5    # "success":I
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v7, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 307
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "systemReady called!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :try_start_0
    const-string v2, "15"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 311
    .local v1, "knoxConfigVersion":I
    const/16 v2, 0xc

    if-lt v1, v2, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 314
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui"

    const-string v5, "com.android.systemui.keyguard.KeyguardService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 315
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Normal Keyguard component still enabled!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->bindTodeviceKeyguard()V

    .line 317
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->enableSDKeyguard()V

    .line 329
    .end local v1    # "knoxConfigVersion":I
    :goto_0
    return-void

    .line 319
    .restart local v1    # "knoxConfigVersion":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->enableSDKeyguard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    .end local v1    # "knoxConfigVersion":I
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "knoxConfigVersion":I
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    const-string v3, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    goto :goto_0

    .line 324
    :cond_2
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v3, "This KNOX Version is not supported!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
