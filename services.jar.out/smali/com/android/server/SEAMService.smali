.class public Lcom/android/server/SEAMService;
.super Lcom/sec/enterprise/knox/seams/ISEAMS$Stub;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SEAMService$SpdHandler;,
        Lcom/android/server/SEAMService$BrHandler;
    }
.end annotation


# static fields
.field private static final AASA_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/aasa/"

.field public static final BBC_CONTAINER:I = 0x3

.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final CONTEXT_FILE:Ljava/lang/String; = "file_contexts"

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final DRS_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.drs.date"

.field private static final ERROR:I = -0x1

.field public static final GOOD_CONTAINER:I = 0x1

.field private static final GSD_CATEGORY:I = 0x66

.field private static final HEX:[C

.field private static final IRM_CATEGORY:I = 0x2be

.field public static final IRM_CONTAINER:I = 0x4

.field private static final IRM_SERVICE:Ljava/lang/String; = "com.samsung.android.irm.service"

.field private static final KNOX_CON_END_NUM:I = 0xc2

.field private static final KNOX_CON_START_NUM:I = 0x64

.field private static final MACPERMISSIONS_FILE:Ljava/lang/String; = "mac_permissions.xml"

.field private static MAC_POLICY_FILE:Ljava/io/File; = null

.field private static MAX_BYTE_ARRAY_SIZE:I = 0x0

.field private static final MDM_POLICY_UPDATE:Ljava/lang/String; = "persist.sys.mdm.auto"

.field private static final MDM_SEANDROID_DUMPSTATE_PROPERTY:Ljava/lang/String; = "persist.security.mdm.SElogs"

.field public static final MYCONTAINER:I = 0x2

.field public static final NON_CONTAINER_TYPE:I = 0x0

.field private static final NeedBadge:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERSONA_LOWER_BOUNDARY:I = 0x64

.field private static final PERSONA_UPPER_BOUNDARY:I = 0xc7

.field private static final POLICY_FILE:Ljava/lang/String; = "sepolicy"

.field private static final PROPERTY_FILE:Ljava/lang/String; = "property_contexts"

.field private static final SEAMS_PERMS:[Ljava/lang/String;

.field private static final SEAMS_Version:Ljava/lang/String; = "2.1"

.field private static final SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/"

.field private static final SECONTEXT_FILE:Ljava/lang/String; = "seapp_contexts"

.field private static final SECURED_APPTYPE:I = 0x1

.field public static SELF_PID:I = 0x0

.field private static final SPD_COMPLETE_INTENT:Ljava/lang/String; = "com.samsung.spdsuccess"

.field private static final SPD_KNOX_PERMISSION:Ljava/lang/String; = "com.sec.android.permission.KNOX"

.field private static final SPD_SBARELOAD_PERMISSION:Ljava/lang/String; = "com.samsung.spd.SBA_RELOAD"

.field private static final SPD_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/spota/"

.field private static final SPOTA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.spota"

.field private static final TAG:Ljava/lang/String; = "SEAMService"

.field private static final TRUSTED_APPTYPE:I = 0x2

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field private static bootCompleted:Z = false

.field private static final containerStrings:[Ljava/lang/String;

.field private static instance:[Lcom/android/server/SEAMSContainer; = null

.field private static mBootReceiver:Landroid/content/BroadcastReceiver; = null

.field private static mSKLog:Lcom/android/server/SKLogger; = null

.field private static mSPDCompleteReceiver:Landroid/content/BroadcastReceiver; = null

.field private static final mSetPolicy:Ljava/lang/Object;

.field private static policyDataBytes:[B = null

.field private static policyDataBytesPosition:I = 0x0

.field private static policyFileSize:I = 0x0

.field private static policyHash:Ljava/lang/String; = null

.field private static final supportedContainers:I = 0x5


# instance fields
.field private GOOD_SECURED_APPTYPE:I

.field private GOOD_TRUSTED_APPTYPE:I

.field private final mContext:Landroid/content/Context;

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/android/server/SEAMService$BrHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field final mLock:Ljava/lang/Object;

.field private mPMS:Lcom/android/server/pm/PackageManagerService;

.field mPersona:Landroid/os/PersonaManager;

.field private final sHandler:Lcom/android/server/SEAMService$SpdHandler;

.field private final sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 145
    sput v3, Lcom/android/server/SEAMService;->SELF_PID:I

    .line 165
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/SEAMSContainer;

    sput-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    .line 166
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    .line 169
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "good"

    aput-object v1, v0, v3

    const-string/jumbo v1, "fixmo"

    aput-object v1, v0, v6

    const-string v1, "container"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string/jumbo v2, "mycontainer"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/SEAMService;->containerStrings:[Ljava/lang/String;

    .line 171
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/SEAMService;->HEX:[C

    .line 173
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_SEAMS"

    aput-object v1, v0, v3

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/SEAMService;->NeedBadge:Ljava/util/HashMap;

    .line 211
    sput-object v4, Lcom/android/server/SEAMService;->policyDataBytes:[B

    .line 212
    sput v5, Lcom/android/server/SEAMService;->policyDataBytesPosition:I

    .line 213
    sput-object v4, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    .line 214
    sput v5, Lcom/android/server/SEAMService;->policyFileSize:I

    .line 227
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/mac_permissions.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SEAMService;->MAC_POLICY_FILE:Ljava/io/File;

    .line 230
    const/high16 v0, 0x3200000

    sput v0, Lcom/android/server/SEAMService;->MAX_BYTE_ARRAY_SIZE:I

    .line 235
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    .line 236
    sput-object v4, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    sput-object v4, Lcom/android/server/SEAMService;->mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    sput-boolean v3, Lcom/android/server/SEAMService;->bootCompleted:Z

    return-void

    .line 171
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 253
    invoke-direct {p0}, Lcom/sec/enterprise/knox/seams/ISEAMS$Stub;-><init>()V

    .line 191
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    iput-object v6, p0, Lcom/android/server/SEAMService;->mLock:Ljava/lang/Object;

    .line 239
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    .line 245
    iput v8, p0, Lcom/android/server/SEAMService;->GOOD_SECURED_APPTYPE:I

    .line 246
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/server/SEAMService;->GOOD_TRUSTED_APPTYPE:I

    .line 254
    iput-object p1, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    .line 255
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "SEAMService"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 256
    iget-object v6, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 257
    new-instance v6, Lcom/android/server/SEAMService$BrHandler;

    iget-object v7, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/server/SEAMService$BrHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/SEAMService;->mHandler:Lcom/android/server/SEAMService$BrHandler;

    .line 258
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "SPD"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/SEAMService;->sHandlerThread:Landroid/os/HandlerThread;

    .line 259
    iget-object v6, p0, Lcom/android/server/SEAMService;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 260
    new-instance v6, Lcom/android/server/SEAMService$SpdHandler;

    iget-object v7, p0, Lcom/android/server/SEAMService;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/server/SEAMService$SpdHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/SEAMService;->sHandler:Lcom/android/server/SEAMService$SpdHandler;

    .line 261
    invoke-direct {p0}, Lcom/android/server/SEAMService;->registerBootReceiver()V

    .line 262
    const-string/jumbo v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageManagerService;

    iput-object v6, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    .line 263
    invoke-direct {p0}, Lcom/android/server/SEAMService;->registerSPDCompleteReceiver()V

    .line 264
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    iput-object v6, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    .line 265
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v4

    .line 266
    .local v4, "serviceKeeper":Lcom/android/server/ServiceKeeper;
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    move-result v3

    .line 267
    .local v3, "ret":Z
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    sput v6, Lcom/android/server/SEAMService;->SELF_PID:I

    .line 268
    new-instance v6, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 272
    invoke-direct {p0}, Lcom/android/server/SEAMService;->checkFingerprintAndRelabelIfNeeded()I

    move-result v2

    .line 279
    .local v2, "isNewBuild":I
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/security/spota/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v5, "spdDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 282
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 283
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 284
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 287
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/security/aasa/"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "aasaDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 291
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 292
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 299
    :cond_1
    if-ne v2, v8, :cond_3

    const-string/jumbo v6, "ro.crypto.state"

    const-string/jumbo v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "unencrypted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "vold.decrypt"

    const-string/jumbo v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "trigger_restart_framework"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "vold.decrypt"

    const-string/jumbo v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "trigger_reset_main"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 302
    :cond_2
    const-string/jumbo v6, "selinux.sec.restorecon"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0    # "aasaDir":Ljava/io/File;
    .end local v5    # "spdDir":Ljava/io/File;
    :cond_3
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Issue with SPD directory"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 142
    sput-boolean p0, Lcom/android/server/SEAMService;->bootCompleted:Z

    return p0
.end method

.method static synthetic access$100()Lcom/android/server/SKLogger;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SEAMService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SEAMService;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private checkFingerprintAndRelabelIfNeeded()I
    .locals 15

    .prologue
    .line 540
    const-string/jumbo v11, "ro.build.date"

    const-string v12, "NONE"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "curbld":Ljava/lang/String;
    const-string/jumbo v11, "persist.sys.drs.date"

    const-string v12, "NONE"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 545
    .local v7, "oldbld":Ljava/lang/String;
    const/4 v6, 0x0

    .line 546
    .local v6, "isNewbuild":I
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_8

    .line 547
    const/4 v6, 0x1

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v8, 0x0

    .line 554
    .local v8, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v5

    .line 555
    .local v5, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v5, :cond_4

    .line 556
    invoke-virtual {v5}, Lcom/android/server/SEAMSContainer;->updateSeappContextsAndReload()I

    move-result v11

    if-eqz v11, :cond_0

    .line 557
    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMService"

    const-string/jumbo v13, "seapp contexts updates had an issue"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_0
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/server/SEAMService;->getPkgNamesFromContainer(IZ)Ljava/util/List;

    move-result-object v8

    .line 561
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    if-eqz v11, :cond_3

    .line 563
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 564
    .local v9, "pkgName":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const/16 v12, 0x80

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    invoke-virtual {v11, v9, v12, v13}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_1

    if-eqz v9, :cond_1

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-gez v11, :cond_2

    .line 566
    :cond_1
    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMService"

    const-string v13, "Calling relabelAppDir: appInfo or pkgName or appInfo.seinfo is null"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const/4 v11, 0x0

    .line 621
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "instanceCon":Lcom/android/server/SEAMSContainer;
    .end local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "pkgName":Ljava/lang/String;
    :goto_1
    return v11

    .line 569
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "instanceCon":Lcom/android/server/SEAMSContainer;
    .restart local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "pkgName":Ljava/lang/String;
    :cond_2
    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calling relabelAppDir for pkg:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", seinfo:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", uid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v11, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v14, 0x1

    invoke-virtual {v11, v9, v12, v13, v14}, Lcom/android/server/pm/PackageManagerService;->relabelAppDir(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 573
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_3
    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMService"

    const-string/jumbo v13, "pkglist is empty or pms is null"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_4
    const/4 v1, 0x0

    .line 585
    .local v1, "bbcUserId":I
    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/server/SEAMService;->getPkgNamesFromContainer(IZ)Ljava/util/List;

    move-result-object v8

    .line 587
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    if-eqz v11, :cond_5

    .line 588
    iget-object v11, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/PersonaManager;->getBbcEnabled()I

    move-result v1

    .line 589
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 592
    .restart local v9    # "pkgName":Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const/16 v12, 0x80

    invoke-virtual {v11, v9, v12, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 593
    iget-object v11, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v14, 0x0

    invoke-virtual {v11, v9, v12, v13, v14}, Lcom/android/server/pm/PackageManagerService;->relabelAppDir(Ljava/lang/String;Ljava/lang/String;IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 594
    :catch_0
    move-exception v3

    .line 595
    .local v3, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "pkgName Relabel error occured :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 600
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_5
    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMService"

    const-string/jumbo v13, "pkglist is empty or PMS or Persona is null"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_6
    const/4 v10, 0x0

    .line 605
    .local v10, "val":Ljava/lang/String;
    const-string/jumbo v11, "persist.security.good.enable"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 606
    if-eqz v10, :cond_8

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 607
    if-nez v5, :cond_7

    .line 608
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v5

    .line 610
    :cond_7
    if-eqz v5, :cond_8

    .line 611
    invoke-virtual {v5}, Lcom/android/server/SEAMSContainer;->addAgentEntryAfterFotaAndReload()I

    move-result v11

    if-nez v11, :cond_8

    .line 613
    const-string/jumbo v11, "persist.security.good.enable"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bbcUserId":I
    .end local v5    # "instanceCon":Lcom/android/server/SEAMSContainer;
    .end local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "val":Ljava/lang/String;
    :cond_8
    move v11, v6

    .line 621
    goto/16 :goto_1
.end method

.method private checkSEAMSPermission(IILjava/lang/String;Z)Z
    .locals 9
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "perm"    # Ljava/lang/String;
    .param p4, "ownerOnly"    # Z

    .prologue
    const/16 v6, 0x3e8

    .line 416
    const/4 v3, 0x0

    .line 417
    .local v3, "ret":Z
    const/4 v2, 0x0

    .line 418
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 424
    .local v4, "user_id":I
    iget-object v5, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v5, p2, p1}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 425
    if-ne p1, v6, :cond_0

    sget v5, Lcom/android/server/SEAMService;->SELF_PID:I

    if-eq p2, v5, :cond_1

    :cond_0
    if-ne p1, v6, :cond_2

    const-string v5, "com.samsung.android.irm.service"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 427
    :cond_1
    const/4 v5, 0x1

    .line 449
    :goto_0
    return v5

    .line 431
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 433
    .local v1, "mPM":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p3, v2, v4}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    .line 435
    if-eqz p4, :cond_3

    if-eqz v4, :cond_3

    .line 436
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string v7, "checkSEAMSPermission, ownerOnly condition not met for global scope api"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/4 v3, 0x0

    .end local v1    # "mPM":Landroid/content/pm/IPackageManager;
    :goto_1
    move v5, v3

    .line 449
    goto :goto_0

    .line 440
    .restart local v1    # "mPM":Landroid/content/pm/IPackageManager;
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 443
    :cond_4
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string v7, "checkSEAMSPermission, perm denied"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 445
    .end local v1    # "mPM":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expection in check SEAMS permissions"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "perm"    # Ljava/lang/String;
    .param p3, "ownerOnly"    # Z

    .prologue
    const/4 v2, 0x1

    .line 392
    if-eqz p3, :cond_0

    .line 393
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SEAMService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 411
    :goto_0
    return v2

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SEAMService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 401
    goto :goto_0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "se":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSEAMSPermissionByContext, SecurityException, return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 410
    .end local v1    # "se":Ljava/lang/SecurityException;
    :goto_1
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "checkSEAMSPermissionByContext, false is returned"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v2, 0x0

    goto :goto_0

    .line 406
    :catch_1
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSEAMSPermissionByContext, Exception, return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private copyFiles(Ljava/lang/String;[B)Z
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 656
    const/4 v4, 0x0

    .line 658
    .local v4, "ret":Z
    if-eqz p2, :cond_0

    .line 659
    const/4 v1, 0x0

    .line 661
    .local v1, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/security/"

    invoke-direct {v3, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .local v3, "mFileDest":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .local v2, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 664
    const/4 v4, 0x1

    .line 673
    if-eqz v2, :cond_0

    .line 674
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 680
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v3    # "mFileDest":Ljava/io/File;
    :cond_0
    :goto_0
    return v4

    .line 675
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "mFileDest":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error closing OutputStream"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 665
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v3    # "mFileDest":Ljava/io/File;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 666
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File Not Found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 667
    const/4 v4, 0x0

    .line 673
    if-eqz v1, :cond_0

    .line 674
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 675
    :catch_2
    move-exception v0

    .line 676
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error closing OutputStream"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 669
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyFile failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 670
    const/4 v4, 0x0

    .line 673
    if-eqz v1, :cond_0

    .line 674
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 675
    :catch_4
    move-exception v0

    .line 676
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error closing OutputStream"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 672
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 673
    :goto_3
    if-eqz v1, :cond_1

    .line 674
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 677
    :cond_1
    :goto_4
    throw v5

    .line 675
    :catch_5
    move-exception v0

    .line 676
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing OutputStream"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 672
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "mFileDest":Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_3

    .line 668
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_2

    .line 665
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_1
.end method

.method private encodeBase16([B)Ljava/lang/String;
    .locals 6
    .param p1, "byteArray"    # [B

    .prologue
    .line 725
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 726
    .local v0, "hexBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 727
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    .line 728
    sget-object v3, Lcom/android/server/SEAMService;->HEX:[C

    aget-byte v4, p1, v1

    mul-int/lit8 v5, v2, 0x4

    shr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 727
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 726
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 729
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "scannedLine"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;
    .param p4, "scanner"    # Ljava/util/Scanner;
    .param p5, "fileContents"    # Ljava/lang/StringBuilder;

    .prologue
    .line 487
    :goto_0
    :try_start_0
    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 490
    .local v1, "tempString":Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .end local v1    # "tempString":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :goto_1
    return-void

    .line 494
    .restart local v1    # "tempString":Ljava/lang/String;
    .restart local v2    # "tokens":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 495
    const-string v3, "cwd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_1
    :goto_2
    invoke-virtual {p4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p2

    .line 507
    goto :goto_0

    .line 498
    :cond_2
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "avc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 508
    .end local v1    # "tempString":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In getAVCDetails [Exception]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 503
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "tempString":Ljava/lang/String;
    .restart local v2    # "tokens":[Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/SEAMService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/SEAMService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    .locals 3
    .param p0, "Container_Type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 454
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 455
    packed-switch p0, :pswitch_data_0

    .line 469
    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMService"

    const-string/jumbo v2, "getInstance, null is returned"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v0, 0x0

    .line 473
    :goto_0
    return-object v0

    .line 457
    :pswitch_0
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/GoodContainer;

    invoke-direct {v1, p1}, Lcom/android/server/GoodContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    .line 473
    :cond_0
    :goto_1
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    aget-object v0, v0, p0

    goto :goto_0

    .line 460
    :pswitch_1
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/MyContainer;

    invoke-direct {v1, p1}, Lcom/android/server/MyContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    goto :goto_1

    .line 463
    :pswitch_2
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/BBCContainer;

    invoke-direct {v1, p1}, Lcom/android/server/BBCContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    goto :goto_1

    .line 466
    :pswitch_3
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/IRMContainer;

    invoke-direct {v1, p1}, Lcom/android/server/IRMContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    goto :goto_1

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMdmProperties(I)I
    .locals 5
    .param p1, "property"    # I

    .prologue
    const/4 v1, 0x0

    .line 747
    const-string/jumbo v2, "persist.sys.mdm.auto"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 748
    .local v0, "result":I
    and-int/lit8 v0, v0, -0x1

    .line 749
    and-int v2, v0, p1

    if-nez v2, :cond_0

    .line 750
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string/jumbo v4, "getMdmProperties, FALSE is returned."

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2895
    invoke-static {p1}, Lcom/android/server/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    .line 2896
    .local v0, "instance":Lcom/android/server/ResourceManager;
    return-object v0
.end method

.method private getSeinfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2393
    const-string/jumbo v1, "getSeinfo"

    .line 2395
    .local v1, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2396
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2398
    .local v2, "pid":I
    const-string v5, "SEAMS"

    const-string/jumbo v6, "getSeinfo"

    invoke-virtual {p0, v2, v3, v5, v6}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2399
    .local v0, "callingPkg":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 2400
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string/jumbo v7, "getSeinfo: callingPkg don\'t has the permission."

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    :goto_0
    return-object v4

    .line 2403
    :cond_0
    if-nez p1, :cond_1

    .line 2404
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string/jumbo v7, "getSeinfo: packageName is null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2407
    :cond_1
    iget-object v5, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    if-nez v5, :cond_2

    .line 2408
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string/jumbo v7, "getSeinfo: mPMS  is null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2411
    :cond_2
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->getSeinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static hashset_to_int_array(Ljava/util/HashSet;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 2067
    .local p0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 2069
    :cond_0
    const-string v4, "SEAMService"

    const-string v5, " hashset_to_int_array returning null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    const/4 v0, 0x0

    .line 2079
    :cond_1
    return-object v0

    .line 2073
    :cond_2
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 2074
    .local v0, "array":[I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2075
    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 2076
    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2077
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public static isBootComplete()Z
    .locals 1

    .prologue
    .line 2550
    sget-boolean v0, Lcom/android/server/SEAMService;->bootCompleted:Z

    return v0
.end method

.method private isPersona(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 625
    const/16 v0, 0x64

    if-gt v0, p1, :cond_0

    const/16 v0, 0xc7

    if-gt p1, v0, :cond_0

    .line 626
    const/4 v0, 0x1

    .line 628
    :goto_0
    return v0

    .line 627
    :cond_0
    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMService"

    const-string/jumbo v2, "isPersona, false is returned"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processAVCLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .locals 6
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "fileContents"    # Ljava/lang/StringBuilder;
    .param p3, "scannedLine"    # Ljava/lang/String;
    .param p4, "lineSeparator"    # Ljava/lang/String;
    .param p5, "scanner"    # Ljava/util/Scanner;

    .prologue
    .line 515
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    .line 516
    invoke-direct/range {v0 .. v5}, Lcom/android/server/SEAMService;->getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V

    .line 519
    :cond_0
    return-void
.end method

.method private processAllowedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "fileContents"    # Ljava/lang/StringBuilder;
    .param p3, "scannedLine"    # Ljava/lang/String;
    .param p4, "lineSeparator"    # Ljava/lang/String;

    .prologue
    .line 524
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_0
    return-void
.end method

.method private static processDeniedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .locals 1
    .param p0, "refContainerString"    # Ljava/lang/String;
    .param p1, "fileContents"    # Ljava/lang/StringBuilder;
    .param p2, "scannedLine"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;
    .param p4, "scanner"    # Ljava/util/Scanner;

    .prologue
    .line 532
    const-string v0, "all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_0
    return-void
.end method

.method private registerBootReceiver()V
    .locals 6

    .prologue
    .line 346
    :try_start_0
    sget-object v2, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 347
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 348
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/SEAMService$1;

    invoke-direct {v2, p0}, Lcom/android/server/SEAMService$1;-><init>(Lcom/android/server/SEAMService;)V

    sput-object v2, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 354
    iget-object v2, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/SEAMService;->mHandler:Lcom/android/server/SEAMService$BrHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot register mBootReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerSPDCompleteReceiver()V
    .locals 6

    .prologue
    .line 368
    :try_start_0
    sget-object v2, Lcom/android/server/SEAMService;->mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 371
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.spdsuccess"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 372
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/SEAMService$2;

    invoke-direct {v2, p0}, Lcom/android/server/SEAMService$2;-><init>(Lcom/android/server/SEAMService;)V

    sput-object v2, Lcom/android/server/SEAMService;->mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 381
    iget-object v2, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/SEAMService;->mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.sec.android.permission.KNOX"

    iget-object v5, p0, Lcom/android/server/SEAMService;->sHandler:Lcom/android/server/SEAMService$SpdHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot register mSPDCompleteReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removePolicyFiles()Z
    .locals 13

    .prologue
    .line 690
    const/4 v8, 0x0

    .line 692
    .local v8, "ret":Z
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    .local v4, "fileFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 695
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "allFiles":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v5, v1, v6

    .line 697
    .local v5, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v3, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 696
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 699
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 707
    .end local v0    # "allFiles":[Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileFolder":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_0
    move-exception v2

    .line 708
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during removePolicyFiles"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v8, 0x0

    .line 712
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v8, :cond_1

    :cond_1
    move v9, v8

    .line 721
    :goto_3
    return v9

    .line 702
    .restart local v4    # "fileFolder":Ljava/io/File;
    :cond_2
    :try_start_1
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "/data/security/ is not a directory."

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const/4 v9, 0x0

    goto :goto_3

    .line 705
    .restart local v0    # "allFiles":[Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_3
    const-string/jumbo v9, "selinux.reload_policy"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 706
    const/4 v8, 0x1

    goto :goto_2
.end method

.method private resetPolicyAssets()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 477
    sput v0, Lcom/android/server/SEAMService;->policyFileSize:I

    .line 478
    sput-object v1, Lcom/android/server/SEAMService;->policyDataBytes:[B

    .line 479
    sput-object v1, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    .line 480
    sput v0, Lcom/android/server/SEAMService;->policyDataBytesPosition:I

    .line 481
    return-void
.end method

.method private setMdmPropertiesLocked(II)V
    .locals 5
    .param p1, "property"    # I
    .param p2, "value"    # I

    .prologue
    .line 733
    const-string/jumbo v2, "persist.sys.mdm.auto"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 734
    .local v0, "result":I
    and-int/lit8 v1, p1, -0x1

    .line 735
    .local v1, "setValue":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 736
    or-int/2addr v0, v1

    .line 741
    :cond_0
    :goto_0
    sget-object v3, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    monitor-enter v3

    .line 742
    :try_start_0
    const-string/jumbo v2, "persist.sys.mdm.auto"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    monitor-exit v3

    .line 744
    return-void

    .line 737
    :cond_1
    if-nez p2, :cond_0

    .line 738
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    goto :goto_0

    .line 743
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setPolicyUpdateProperty(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 757
    const/4 v1, -0x1

    .line 760
    .local v1, "ret":I
    if-eqz p1, :cond_0

    .line 761
    :try_start_0
    sget-object v3, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :try_start_1
    const-string/jumbo v2, "persist.sys.mdm.auto"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    monitor-exit v3

    .line 764
    const/4 v1, 0x0

    .line 775
    :goto_0
    return v1

    .line 763
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in method: setPolicyUpdateProperty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const/4 v1, -0x1

    goto :goto_0

    .line 766
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_3
    sget-object v3, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 767
    :try_start_4
    const-string/jumbo v2, "persist.sys.mdm.auto"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    monitor-exit v3

    .line 769
    const/4 v1, 0x0

    goto :goto_0

    .line 768
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method


# virtual methods
.method public activateDomain(Z)I
    .locals 10
    .param p1, "isBundleActivation"    # Z

    .prologue
    const/4 v6, -0x2

    .line 803
    const-string v3, "activateDomain"

    .line 805
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 806
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 809
    .local v4, "pid":I
    sget-object v7, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v4, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 810
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "activateDomain: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :goto_0
    return v6

    .line 816
    :cond_0
    :try_start_0
    const-string v7, "SEAMS"

    const-string v8, "activateDomain"

    invoke-virtual {p0, v4, v5, v7, v8}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 818
    .local v0, "containerType":I
    if-gez v0, :cond_2

    .line 819
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "Unauthorized call to activateDomain. "

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 826
    .end local v0    # "containerType":I
    :catch_0
    move-exception v1

    .line 827
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in method:activateDomain, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 830
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v6, -0x1

    goto :goto_0

    .line 822
    .restart local v0    # "containerType":I
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 823
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_1

    .line 824
    invoke-virtual {v2, v5, p1}, Lcom/android/server/SEAMSContainer;->activateDomain(IZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto :goto_0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 877
    const-string v9, "addAppToContainer"

    .line 879
    .local v9, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 880
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 881
    .local v10, "pid":I
    const/4 v11, 0x0

    .line 882
    .local v11, "ret":I
    const-wide/16 v6, 0x0

    .line 883
    .local v6, "ident":J
    const/4 v8, 0x0

    .line 886
    .local v8, "instanceCon":Lcom/android/server/SEAMSContainer;
    sget-object v13, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v14}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_0

    .line 887
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    const-string v15, "addAppToContainer: License validation failed"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const/4 v13, -0x2

    .line 940
    :goto_0
    return v13

    .line 905
    :cond_0
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 906
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 907
    if-eqz v8, :cond_5

    .line 908
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    move v13, v11

    .line 909
    goto :goto_0

    .line 911
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 912
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 913
    if-eqz v8, :cond_5

    .line 914
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    move v13, v11

    .line 915
    goto :goto_0

    .line 917
    :cond_2
    const/16 v13, 0x2be

    move/from16 v0, p3

    if-ne v0, v13, :cond_3

    .line 918
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 919
    if-eqz v8, :cond_5

    .line 920
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    move v13, v11

    .line 921
    goto :goto_0

    .line 924
    :cond_3
    const-string v13, "SEAMS"

    const-string v14, "addAppToContainer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13, v14}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 925
    .local v4, "containerType":I
    if-gez v4, :cond_4

    .line 926
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unauthorized call to addAppToContainer for package name ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "). "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const/4 v13, -0x2

    goto/16 :goto_0

    .line 929
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v4, v13}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 930
    if-eqz v8, :cond_5

    .line 931
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    move v13, v11

    .line 932
    goto/16 :goto_0

    .line 935
    .end local v4    # "containerType":I
    :catch_0
    move-exception v5

    .line 936
    .local v5, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in methodaddAppToContainer, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 939
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    const-string v15, "addAppToContainer POLICY_FAILED is returned "

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const/4 v13, -0x1

    goto/16 :goto_0
.end method

.method public addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    .line 2949
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2950
    const/4 v0, -0x2

    .line 2952
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    .line 2914
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2915
    const/4 v0, -0x2

    .line 2917
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "removeFlag"    # Z

    .prologue
    .line 981
    const-string v10, "changeAppDomain"

    .line 983
    .local v10, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 984
    .local v13, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 985
    .local v11, "pid":I
    const/4 v12, 0x0

    .line 986
    .local v12, "ret":I
    const-wide/16 v8, 0x0

    .line 987
    .local v8, "ident":J
    const/4 v5, 0x0

    .line 988
    .local v5, "currnetSeinfo":Ljava/lang/String;
    const/4 v7, 0x0

    .line 990
    .local v7, "instanceCon":Lcom/android/server/SEAMSContainer;
    const-string v14, "SEAMS"

    const-string v15, "changeAppDomain"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v14, v15}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 991
    .local v4, "callingPkg":I
    const/4 v14, -0x1

    if-ne v4, v14, :cond_0

    .line 992
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    const-string/jumbo v16, "getSeinfo: callingPkg don\'t has the permission."

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const/4 v14, -0x1

    .line 1020
    :goto_0
    return v14

    .line 997
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1019
    :cond_1
    :goto_1
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    const-string v16, "changeAppDomain POLICY_FAILED is returned "

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const/4 v14, -0x1

    goto :goto_0

    .line 999
    :pswitch_0
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SEAMService;->getSeinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1000
    if-nez p4, :cond_2

    if-eqz p3, :cond_2

    const-string/jumbo v14, "untrusted"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1001
    const/4 v14, -0x1

    goto :goto_0

    .line 1002
    :cond_2
    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    const-string/jumbo v14, "trustonicpartner"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 1003
    const/4 v14, -0x1

    goto :goto_0

    .line 1006
    :cond_3
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v14, v15}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v7

    .line 1007
    if-eqz v7, :cond_1

    .line 1008
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    move v14, v12

    .line 1009
    goto :goto_0

    .line 1015
    :catch_0
    move-exception v6

    .line 1016
    .local v6, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in methodchangeAppDomain, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 997
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public clearSBABlacklist(II)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 2963
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2965
    const/4 v0, -0x2

    .line 2967
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->clearSBABlacklist(II)I

    move-result v0

    goto :goto_0
.end method

.method public clearWhitelist(II)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 2928
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2929
    const/4 v0, -0x2

    .line 2931
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->clearWhitelist(II)I

    move-result v0

    goto :goto_0
.end method

.method public createSEContainer()I
    .locals 10

    .prologue
    .line 1157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1158
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1159
    .local v4, "pid":I
    const/4 v1, 0x0

    .line 1160
    .local v1, "callpkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 1161
    const/4 v3, 0x0

    .line 1162
    .local v3, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v0, 0x0

    .line 1163
    .local v0, "bbcFlag":Z
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1165
    const/4 v0, 0x1

    .line 1169
    :cond_0
    sget-object v6, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    invoke-direct {p0, v5, v4, v6, v7}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1170
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string v8, "createSEContainer: License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const/4 v6, -0x2

    .line 1192
    :goto_0
    return v6

    .line 1175
    :cond_1
    if-eqz v0, :cond_2

    .line 1176
    const/4 v6, 0x3

    :try_start_0
    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    .line 1184
    :goto_1
    if-eqz v3, :cond_4

    .line 1185
    invoke-virtual {v3, v5, v4}, Lcom/android/server/SEAMSContainer;->createSEContainer(II)I

    move-result v6

    goto :goto_0

    .line 1178
    :cond_2
    const-string v6, "com.samsung.android.irm.service"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1179
    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    goto :goto_1

    .line 1181
    :cond_3
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 1187
    :catch_0
    move-exception v2

    .line 1188
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in createSEContainer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1191
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string v8, "createSEContainer, POLICY_FAILED is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public deActivateDomain()I
    .locals 10

    .prologue
    const/4 v6, -0x2

    .line 1217
    const-string v3, "deActivateDomain"

    .line 1218
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1219
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1222
    .local v4, "pid":I
    sget-object v7, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v4, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1223
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "deActivateDomain: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :cond_0
    :goto_0
    return v6

    .line 1229
    :cond_1
    :try_start_0
    const-string v7, "SEAMS"

    const-string v8, "deActivateDomain"

    invoke-virtual {p0, v4, v5, v7, v8}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1230
    .local v0, "containerType":I
    if-ltz v0, :cond_0

    .line 1234
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1235
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_2

    .line 1236
    invoke-virtual {v2, v5}, Lcom/android/server/SEAMSContainer;->deActivateDomain(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 1237
    .end local v0    # "containerType":I
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_0
    move-exception v1

    .line 1238
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in method:deActivateDomain, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1241
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string v8, "deActivateDomain, POLICY_FAILED is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public getAMSLog(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1372
    const/4 v1, 0x0

    .line 1373
    .local v1, "amslog":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1374
    .local v7, "refContainerString":Ljava/lang/String;
    const-string/jumbo v6, "getAMSLog"

    .line 1377
    .local v6, "method":Ljava/lang/String;
    sget-object v10, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1378
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "getAMSLog: License validation failed"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const/4 v10, 0x0

    .line 1409
    :goto_0
    return-object v10

    .line 1382
    :cond_0
    const-string v7, "all"

    .line 1386
    :try_start_0
    const-string v0, "/data/misc/audit/ams.log"

    .line 1387
    .local v0, "ams_logfile":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1388
    .local v3, "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1389
    .local v4, "fileContents":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/util/Scanner;

    invoke-direct {v9, v3}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 1390
    .local v9, "scanner":Ljava/util/Scanner;
    const-string/jumbo v10, "line.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1391
    .local v5, "lineSeparator":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v9}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1392
    invoke-virtual {v9}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v8

    .line 1393
    .local v8, "scannedLine":Ljava/lang/String;
    const-string v10, "Allowed"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1394
    invoke-direct {p0, v7, v4, v8, v5}, Lcom/android/server/SEAMService;->processAllowedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1404
    .end local v0    # "ams_logfile":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileContents":Ljava/lang/StringBuilder;
    .end local v5    # "lineSeparator":Ljava/lang/String;
    .end local v8    # "scannedLine":Ljava/lang/String;
    .end local v9    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v2

    .line 1405
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in method:getAMSLog, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    move-object v10, v1

    .line 1409
    goto :goto_0

    .line 1396
    .restart local v0    # "ams_logfile":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileContents":Ljava/lang/StringBuilder;
    .restart local v5    # "lineSeparator":Ljava/lang/String;
    .restart local v8    # "scannedLine":Ljava/lang/String;
    .restart local v9    # "scanner":Ljava/util/Scanner;
    :cond_2
    :try_start_1
    const-string v10, "Denied"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1397
    invoke-static {v7, v4, v8, v5, v9}, Lcom/android/server/SEAMService;->processDeniedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V

    goto :goto_1

    .line 1402
    .end local v8    # "scannedLine":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1403
    invoke-virtual {v9}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getAMSLogLevel(Landroid/app/enterprise/ContextInfo;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1427
    const-string/jumbo v2, "getAMSLogLevel"

    .line 1431
    .local v2, "method":Ljava/lang/String;
    sget-object v4, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1432
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string/jumbo v6, "getAMSLogLevel: License validation failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const/4 v0, -0x2

    .line 1449
    :cond_0
    :goto_0
    return v0

    .line 1437
    :cond_1
    const/4 v0, -0x1

    .line 1439
    .local v0, "amsLogLevel":I
    const/4 v3, 0x0

    .line 1440
    .local v3, "val":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "persist.security.ams.verbose"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1441
    if-eqz v3, :cond_0

    .line 1442
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1445
    :catch_0
    move-exception v1

    .line 1446
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAMSLogLevel: Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAMSMode(Landroid/app/enterprise/ContextInfo;)I
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1465
    const-string/jumbo v2, "getAMSMode"

    .line 1469
    .local v2, "method":Ljava/lang/String;
    sget-object v6, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-direct {p0, p1, v6, v4}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1470
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string/jumbo v6, "getAMSMode: License validation failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const/4 v4, -0x2

    .line 1486
    :cond_0
    :goto_0
    return v4

    .line 1475
    :cond_1
    const/4 v3, 0x0

    .line 1476
    .local v3, "val":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "persist.security.ams.enforcing"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1477
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1478
    .local v0, "amsMode":I
    and-int/lit8 v6, v0, 0x1

    if-nez v6, :cond_0

    .line 1485
    .end local v0    # "amsMode":I
    :goto_1
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string/jumbo v7, "getAMSMode: FALSE is returned"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1486
    goto :goto_0

    .line 1481
    :catch_0
    move-exception v1

    .line 1482
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in method:getAMSMode, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getAVCLog(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1501
    const/4 v1, 0x0

    .line 1502
    .local v1, "refContainerString":Ljava/lang/String;
    const-string/jumbo v10, "getAVCLog"

    .line 1506
    .local v10, "method":Ljava/lang/String;
    sget-object v0, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v0, v0, v11

    const/4 v11, 0x1

    invoke-direct {p0, p1, v0, v11}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1507
    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "getAVCLog: License validation failed"

    invoke-virtual {v0, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const/4 v7, 0x0

    .line 1532
    :goto_0
    return-object v7

    .line 1511
    :cond_0
    const-string v1, "all"

    .line 1512
    const/4 v7, 0x0

    .line 1514
    .local v7, "avclog":Ljava/lang/String;
    :try_start_0
    const-string v6, "/data/misc/audit/audit.log"

    .line 1515
    .local v6, "avc_logfile":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1516
    .local v9, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v0, v12

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1517
    .local v2, "fileContents":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, v9}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 1518
    .local v5, "scanner":Ljava/util/Scanner;
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1519
    .local v4, "lineSeparator":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1520
    invoke-virtual {v5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    .line 1521
    .local v3, "scannedLine":Ljava/lang/String;
    const-string v0, "avc"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 1522
    invoke-direct/range {v0 .. v5}, Lcom/android/server/SEAMService;->processAVCLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1527
    .end local v2    # "fileContents":Ljava/lang/StringBuilder;
    .end local v3    # "scannedLine":Ljava/lang/String;
    .end local v4    # "lineSeparator":Ljava/lang/String;
    .end local v5    # "scanner":Ljava/util/Scanner;
    .end local v6    # "avc_logfile":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 1528
    .local v8, "e":Ljava/io/FileNotFoundException;
    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in method:getAVCLog, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1525
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fileContents":Ljava/lang/StringBuilder;
    .restart local v4    # "lineSeparator":Ljava/lang/String;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    .restart local v6    # "avc_logfile":Ljava/lang/String;
    .restart local v9    # "file":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1526
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getActivationStatus()I
    .locals 10

    .prologue
    const/4 v6, -0x2

    .line 1330
    const-string/jumbo v3, "getActivationStatus"

    .line 1331
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1332
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1335
    .local v4, "pid":I
    sget-object v7, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v4, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1336
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string/jumbo v9, "getActivationStatus: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    :goto_0
    return v6

    .line 1342
    :cond_0
    :try_start_0
    const-string v7, "SEAMS"

    const-string/jumbo v8, "getActivationStatus"

    invoke-virtual {p0, v4, v5, v7, v8}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1344
    .local v0, "containerType":I
    if-gez v0, :cond_2

    .line 1345
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "Unauthorized call to getActivationStatus. "

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1351
    .end local v0    # "containerType":I
    :catch_0
    move-exception v1

    .line 1352
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Exception in method:getActivationStatus, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1355
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string/jumbo v8, "getActivationStatus, POLICY_FAILED is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const/4 v6, -0x1

    goto :goto_0

    .line 1348
    .restart local v0    # "containerType":I
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1349
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_1

    .line 1350
    invoke-virtual {v2}, Lcom/android/server/SEAMSContainer;->getActivationStatus()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto :goto_0
.end method

.method public getAllSEContainerCategory()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3196
    const-string/jumbo v5, "getAllSEContainerCategory"

    .line 3197
    .local v5, "method":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3202
    .local v8, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, 0x2

    :try_start_0
    new-array v9, v10, [Ljava/lang/String;

    .line 3203
    .local v9, "sColumns":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "containerID"

    aput-object v11, v9, v10

    .line 3204
    const/4 v10, 0x1

    const-string/jumbo v11, "mode"

    aput-object v11, v9, v10

    .line 3205
    iget-object v10, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SeamsClipboardTable"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v9, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 3208
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3210
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 3211
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v10, "containerID"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3213
    .local v0, "cat":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3237
    .end local v0    # "cat":I
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v9    # "sColumns":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3238
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getAllSEContainerCategory() failed with exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3240
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v8

    .line 3218
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v9    # "sColumns":[Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    if-nez v10, :cond_2

    .line 3219
    const-string/jumbo v10, "package"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageManagerService;

    iput-object v10, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    .line 3221
    :cond_2
    iget-object v10, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDsForSystem()Ljava/util/List;

    move-result-object v8

    .line 3222
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3223
    .local v2, "cvInsert":Landroid/content/ContentValues;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 3224
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3225
    .restart local v0    # "cat":I
    const-string v10, "containerID"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3226
    const-string/jumbo v10, "mode"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3228
    iget-object v10, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SeamsClipboardTable"

    invoke-virtual {v10, v11, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    .line 3229
    .local v6, "res":Z
    if-nez v6, :cond_3

    .line 3231
    iget-object v10, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SeamsClipboardTable"

    invoke-virtual {v10, v11, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getBBCFlag()Z
    .locals 1

    .prologue
    .line 2993
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v0

    return v0
.end method

.method public getDataType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 1775
    const-string/jumbo v6, "getDataType"

    .line 1779
    .local v6, "method":Ljava/lang/String;
    sget-object v8, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1780
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string/jumbo v10, "getDataType: License validation failed"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1808
    :goto_0
    return-object v1

    .line 1783
    :cond_0
    const/4 v1, 0x0

    .line 1784
    .local v1, "datatype":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1786
    .local v4, "ident":J
    if-gez p3, :cond_1

    .line 1787
    :try_start_0
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string/jumbo v10, "getDataTypeuserId is less than 0."

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1788
    goto :goto_0

    .line 1792
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 1793
    .local v3, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v8, 0x80

    invoke-interface {v3, p2, v8, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1795
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_2

    .line 1796
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string/jumbo v10, "getDataTypeappInfo is null."

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1797
    goto :goto_0

    .line 1799
    :cond_2
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, p2, v9}, Landroid/os/SELinux;->getFileType(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1807
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "mPM":Landroid/content/pm/IPackageManager;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1803
    :catch_0
    move-exception v2

    .line 1804
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDomain(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 1827
    const-string/jumbo v6, "getDomain"

    .line 1831
    .local v6, "method":Ljava/lang/String;
    sget-object v8, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1832
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string/jumbo v10, "getDomain: License validation failed"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1861
    :goto_0
    return-object v1

    .line 1836
    :cond_0
    const/4 v1, 0x0

    .line 1837
    .local v1, "domain":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1840
    .local v4, "ident":J
    if-gez p3, :cond_1

    .line 1841
    :try_start_0
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string/jumbo v10, "getDomain, userId is less than 0."

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1842
    goto :goto_0

    .line 1846
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 1847
    .local v3, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v8, 0x80

    invoke-interface {v3, p2, v8, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1849
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_2

    .line 1850
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string/jumbo v10, "getDomain, appInfo is null"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1851
    goto :goto_0

    .line 1853
    :cond_2
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, p2, v9}, Landroid/os/SELinux;->getDomain(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1860
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "mPM":Landroid/content/pm/IPackageManager;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1856
    :catch_0
    move-exception v2

    .line 1857
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 13
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v8, 0x0

    .line 1935
    const-string/jumbo v5, "getPackageNamesFromSEContainer"

    .line 1936
    .local v5, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1937
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1938
    .local v6, "pid":I
    const/4 v4, 0x0

    .line 1939
    .local v4, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v1, 0x0

    .line 1940
    .local v1, "callpkgName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v9, v6, v7}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 1941
    const/4 v0, 0x0

    .line 1942
    .local v0, "bbcFlag":Z
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1943
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1944
    const/4 v0, 0x1

    .line 1949
    :cond_0
    sget-object v9, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, v7, v6, v9, v10}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1950
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "getPackageNamesFromSEContainer, License validation failed"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    :goto_0
    return-object v8

    .line 1955
    :cond_1
    const/16 v9, 0x66

    if-ne p1, v9, :cond_2

    .line 1956
    :try_start_0
    const-string v9, "SEAMS"

    const-string/jumbo v10, "getPackageNamesFromSEContainer"

    invoke-virtual {p0, v6, v7, v9, v10}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1957
    .local v2, "containerType":I
    if-lez v2, :cond_5

    .line 1958
    iget-object v9, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 1959
    if-eqz v4, :cond_5

    .line 1960
    invoke-virtual {v4, p1, p2}, Lcom/android/server/SEAMSContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1964
    .end local v2    # "containerType":I
    :cond_2
    if-eqz v0, :cond_3

    .line 1965
    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 1973
    :goto_1
    if-eqz v4, :cond_5

    .line 1974
    invoke-virtual {v4, p1, p2}, Lcom/android/server/SEAMSContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1967
    :cond_3
    const-string v9, "com.samsung.android.irm.service"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1968
    const/4 v9, 0x4

    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    goto :goto_1

    .line 1970
    :cond_4
    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 1977
    :catch_0
    move-exception v3

    .line 1978
    .local v3, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in method:getPackageNamesFromSEContainer, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1981
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "getPackageNamesFromSEContainer, null is returned"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPackagesFromSBABlacklist(II)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 2971
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2972
    const/4 v0, 0x0

    .line 2974
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->getPackagesFromSBABlacklist(II)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackagesFromSBAList(I)[Ljava/lang/String;
    .locals 2
    .param p1, "resourceType"    # I

    .prologue
    .line 2935
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2936
    const/4 v0, 0x0

    .line 2938
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ResourceManager;->getPackagesFromSBAList(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackagesFromWhitelist(II)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 2900
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2901
    const/4 v0, 0x0

    .line 2903
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->getPackagesFromWhitelist(II)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPkgNamesFromContainer(IZ)Ljava/util/List;
    .locals 14
    .param p1, "CONTAINER_TYPE"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2997
    const-string/jumbo v3, "getPkgNamesFromContainer"

    .line 2998
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2999
    .local v9, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 3000
    .local v5, "pid":I
    const/4 v4, 0x0

    .line 3002
    .local v4, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "SEAMS"

    const-string/jumbo v11, "getPkgNamesFromContainer"

    invoke-virtual {p0, v5, v9, v10, v11}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_0

    .line 3003
    const/4 v10, 0x0

    .line 3034
    :goto_0
    return-object v10

    .line 3005
    :cond_0
    if-eqz p2, :cond_7

    .line 3006
    const/4 v10, 0x3

    if-ne p1, v10, :cond_1

    .line 3007
    const/4 v10, 0x3

    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC;->getAllPackageNamesFromSEContainer(I)Ljava/util/List;

    move-result-object v10

    goto :goto_0

    .line 3008
    :cond_1
    const/4 v10, 0x1

    if-ne p1, v10, :cond_6

    .line 3009
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "getPkgNamesFromContainer for GOOD"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3011
    .restart local v4    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const/16 v11, 0x66

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/server/SEAMService;->GOOD_SECURED_APPTYPE:I

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/pm/PackageManagerService;->getPackageNamesFromSEContainerID(III)[Ljava/lang/String;

    move-result-object v7

    .line 3012
    .local v7, "pkgArray1":[Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 3013
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v6, v0, v1

    .line 3014
    .local v6, "pkg":Ljava/lang/String;
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "list of pkgs inside Good as secured:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3013
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3018
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_2
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "pkgArray1 is null"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3020
    :cond_3
    iget-object v10, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const/16 v11, 0x66

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/server/SEAMService;->GOOD_TRUSTED_APPTYPE:I

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/pm/PackageManagerService;->getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;

    move-result-object v8

    .line 3021
    .local v8, "pkgArray2":[Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 3022
    move-object v0, v8

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v6, v0, v1

    .line 3023
    .restart local v6    # "pkg":Ljava/lang/String;
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "list of pkgs inside Good as trusted:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3024
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3022
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3027
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "pkgArray2 is null"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v10, v4

    .line 3029
    goto/16 :goto_0

    .line 3031
    .end local v7    # "pkgArray1":[Ljava/lang/String;
    .end local v8    # "pkgArray2":[Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3034
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public getSEAMSLog(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1547
    const-string/jumbo v4, "getSEAMSLog"

    .line 1548
    .local v4, "method":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1549
    .local v8, "sklog":Ljava/lang/String;
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "getSEAMSLog_begin"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    sget-object v9, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, p1, v9, v10}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1553
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "getSEAMSLog: License validation failed"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const/4 v9, 0x0

    .line 1573
    :goto_0
    return-object v9

    .line 1557
    :cond_0
    :try_start_0
    const-string v7, "/data/misc/audit/sk.log"

    .line 1558
    .local v7, "sk_logfile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1559
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1560
    .local v2, "fileContents":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 1561
    .local v6, "scanner":Ljava/util/Scanner;
    const-string/jumbo v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1562
    .local v3, "lineSeparator":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1563
    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    .line 1564
    .local v5, "scannedLine":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1568
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileContents":Ljava/lang/StringBuilder;
    .end local v3    # "lineSeparator":Ljava/lang/String;
    .end local v5    # "scannedLine":Ljava/lang/String;
    .end local v6    # "scanner":Ljava/util/Scanner;
    .end local v7    # "sk_logfile":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1569
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in method:getSEAMSLog, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1572
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "Returning SEAMS Log."

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v8

    .line 1573
    goto :goto_0

    .line 1566
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileContents":Ljava/lang/StringBuilder;
    .restart local v3    # "lineSeparator":Ljava/lang/String;
    .restart local v6    # "scanner":Ljava/util/Scanner;
    .restart local v7    # "sk_logfile":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1567
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getSEContainerClipboardMode(I)I
    .locals 14
    .param p1, "containerID"    # I

    .prologue
    .line 3139
    const-string/jumbo v6, "getSEContainerClipboardMode"

    .line 3141
    .local v6, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3142
    .local v9, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 3143
    .local v7, "pid":I
    const/4 v8, 0x0

    .line 3144
    .local v8, "ret":Z
    const-wide/16 v2, 0x0

    .line 3145
    .local v2, "ident":J
    const/4 v4, 0x0

    .line 3148
    .local v4, "instanceCon":Lcom/android/server/SEAMSContainer;
    sget-object v10, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    invoke-direct {p0, v9, v7, v10, v11}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_0

    .line 3149
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "getSEContainerClipboardMode: License validation failed"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3150
    const/4 v10, -0x2

    .line 3190
    :goto_0
    return v10

    .line 3153
    :cond_0
    sget v10, Lcom/android/server/SEAMService;->SELF_PID:I

    if-eq v7, v10, :cond_3

    .line 3154
    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 3155
    if-eqz v4, :cond_2

    .line 3156
    invoke-virtual {v4}, Lcom/android/server/SEAMSContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v5

    .line 3157
    .local v5, "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-eqz v5, :cond_1

    .line 3158
    iget-object v10, v5, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-static {v10, v11, p1}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 3159
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "containerID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not owned by caller:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3160
    const/4 v10, -0x1

    goto :goto_0

    .line 3163
    :cond_1
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "mdmID is null"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3164
    const/4 v10, -0x1

    goto :goto_0

    .line 3167
    .end local v5    # "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_2
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "unable to get instance"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3168
    const/4 v10, -0x1

    goto :goto_0

    .line 3173
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3174
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v10, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3176
    iget-object v10, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SeamsClipboardTable"

    const-string/jumbo v12, "mode"

    invoke-virtual {v10, v11, v12, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3178
    .local v0, "cvOld":Landroid/content/ContentValues;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v10

    if-eqz v10, :cond_4

    .line 3184
    const-string/jumbo v10, "mode"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto/16 :goto_0

    .line 3190
    :cond_4
    const/4 v10, -0x1

    goto/16 :goto_0
.end method

.method public getSEContainerIDs()[I
    .locals 15

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x1

    .line 2010
    const-string/jumbo v7, "getSEContainerIDs"

    .line 2011
    .local v7, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2012
    .local v9, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2013
    .local v8, "pid":I
    const/4 v6, 0x0

    .line 2014
    .local v6, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v1, 0x0

    .line 2015
    .local v1, "callpkgName":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v11, v8, v9}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 2016
    const/4 v0, 0x0

    .line 2017
    .local v0, "bbcFlag":Z
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2018
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2019
    const/4 v0, 0x1

    .line 2024
    :cond_0
    sget-object v11, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-direct {p0, v9, v8, v11, v13}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_1

    .line 2025
    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMService"

    const-string/jumbo v13, "getSEContainerIDs, License validation failed"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    :goto_0
    return-object v10

    .line 2028
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2030
    .local v2, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    .line 2031
    const/4 v11, 0x3

    :try_start_0
    iget-object v12, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v6

    .line 2039
    :goto_1
    if-eqz v6, :cond_6

    .line 2040
    invoke-virtual {v6}, Lcom/android/server/SEAMSContainer;->getSEContainerIDs()Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 2042
    .end local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .local v3, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_2
    :try_start_1
    const-string v11, "SEAMS"

    const-string/jumbo v12, "getSEContainerIDs"

    invoke-virtual {p0, v8, v9, v11, v12}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2043
    .local v4, "containerType":I
    if-lez v4, :cond_5

    .line 2044
    iget-object v11, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v4, v11}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v6

    .line 2045
    if-eqz v6, :cond_5

    .line 2046
    invoke-virtual {v6}, Lcom/android/server/SEAMSContainer;->getActivationStatus()I

    move-result v11

    if-ne v11, v13, :cond_5

    .line 2047
    if-nez v3, :cond_4

    .line 2048
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2050
    .end local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_3
    const/16 v11, 0x66

    :try_start_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2054
    :goto_4
    invoke-static {v2}, Lcom/android/server/SEAMService;->hashset_to_int_array(Ljava/util/HashSet;)[I

    move-result-object v10

    goto :goto_0

    .line 2033
    .end local v4    # "containerType":I
    :cond_2
    const-string v11, "com.samsung.android.irm.service"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2034
    const/4 v11, 0x4

    iget-object v12, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v6

    goto :goto_1

    .line 2036
    :cond_3
    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    goto :goto_1

    .line 2055
    :catch_0
    move-exception v5

    .line 2056
    .local v5, "e":Ljava/lang/Exception;
    :goto_5
    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception in getSEContainerIDs:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 2059
    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMService"

    const-string/jumbo v13, "getSEContainerIDs, null is returned"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2055
    .end local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_5

    .end local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v4    # "containerType":I
    :cond_4
    move-object v2, v3

    .end local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_3

    .end local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_5
    move-object v2, v3

    .end local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_4

    .end local v4    # "containerType":I
    :cond_6
    move-object v3, v2

    .end local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_2
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 1607
    const-string/jumbo v5, "getSEContainerIDsFromPackageName"

    .line 1608
    .local v5, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1609
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1610
    .local v6, "pid":I
    const/4 v4, 0x0

    .line 1611
    .local v4, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v1, 0x0

    .line 1612
    .local v1, "callpkgname":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v9, v6, v7}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 1613
    const/4 v0, 0x0

    .line 1614
    .local v0, "bbcFlag":Z
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1615
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1616
    const/4 v0, 0x1

    .line 1621
    :cond_0
    sget-object v9, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-direct {p0, v7, v6, v9, v11}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1622
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "License validation failed"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    :goto_0
    return-object v8

    .line 1627
    :cond_1
    if-eq p2, v11, :cond_2

    if-ne p2, v12, :cond_3

    .line 1628
    :cond_2
    :try_start_0
    const-string v9, "SEAMS"

    const-string/jumbo v10, "getSEContainerIDsFromPackageName"

    invoke-virtual {p0, v6, v7, v9, v10}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1629
    .local v2, "containerType":I
    if-lez v2, :cond_6

    .line 1630
    iget-object v9, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 1631
    if-eqz v4, :cond_6

    .line 1632
    invoke-virtual {v4, p1, p2}, Lcom/android/server/SEAMSContainer;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I

    move-result-object v8

    goto :goto_0

    .line 1636
    .end local v2    # "containerType":I
    :cond_3
    if-eqz v0, :cond_4

    .line 1637
    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 1645
    :goto_1
    if-eqz v4, :cond_6

    .line 1646
    invoke-virtual {v4, p1, p2}, Lcom/android/server/SEAMSContainer;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I

    move-result-object v8

    goto :goto_0

    .line 1639
    :cond_4
    const-string v9, "com.samsung.android.irm.service"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1640
    const/4 v9, 0x4

    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    goto :goto_1

    .line 1642
    :cond_5
    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 1649
    :catch_0
    move-exception v3

    .line 1650
    .local v3, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in method:getSEContainerIDsFromPackageName, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1653
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "getSEContainerIDsFromPackageName, null is returned"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSELinuxMode(Landroid/app/enterprise/ContextInfo;)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2154
    const-string/jumbo v1, "getSELinuxMode"

    .line 2157
    .local v1, "method":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2158
    const/4 v2, 0x1

    .line 2164
    :goto_0
    return v2

    .line 2159
    :catch_0
    move-exception v0

    .line 2160
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in method:getSELinuxMode, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2163
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string/jumbo v4, "getSELinuxMode, FALSE is returned"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSepolicyVersion(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2176
    const-string/jumbo v1, "getSepolicyVersion"

    .line 2179
    .local v1, "method":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2181
    .local v2, "sepolicyVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/SELinux;->getSEPolicyVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 2186
    :goto_0
    return-object v3

    .line 2184
    :catch_0
    move-exception v0

    .line 2185
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in method:getSepolicyVersion, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getSignatureFromCertificate([B)Ljava/lang/String;
    .locals 11
    .param p1, "certificate"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 2207
    const-string/jumbo v1, "getSignatureFromCertificate"

    .line 2210
    .local v1, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2211
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2213
    .local v2, "pid":I
    sget-object v7, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v2, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2214
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string/jumbo v9, "getSignatureFromCertificate: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    :goto_0
    return-object v6

    .line 2220
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 2221
    .local v4, "signatureString":Ljava/lang/String;
    const-string v7, "-----BEGIN CERTIFICATE-----"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-----END CERTIFICATE-----"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2225
    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 2227
    .local v3, "signatureBytes":[B
    invoke-direct {p0, v3}, Lcom/android/server/SEAMService;->encodeBase16([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 2228
    .end local v3    # "signatureBytes":[B
    .end local v4    # "signatureString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2229
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in byte array operations when getting signature."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string/jumbo v9, "getSignatureFromCertificate: null is returned"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2352
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2353
    .local v4, "pid":I
    const/4 v0, 0x0

    .line 2354
    .local v0, "bbcFlag":Z
    const/4 v3, 0x0

    .line 2355
    .local v3, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v1, 0x0

    .line 2356
    .local v1, "callpkgName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v6}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 2357
    const/4 v5, 0x0

    .line 2359
    .local v5, "ret":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 2360
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string/jumbo v9, "getSignatureFromMac: packageName is null"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    const/4 v7, 0x0

    .line 2389
    :goto_0
    return-object v7

    .line 2364
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2365
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2366
    const/4 v0, 0x1

    .line 2370
    :cond_1
    if-eqz v0, :cond_2

    .line 2371
    const/4 v7, 0x3

    :try_start_0
    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    .line 2372
    invoke-virtual {v3, p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v7, v5

    .line 2389
    goto :goto_0

    .line 2375
    :cond_2
    const-string v7, "com.samsung.android.irm.service"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2376
    const/4 v7, 0x4

    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    .line 2377
    invoke-virtual {v3, p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 2380
    :cond_3
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    .line 2381
    invoke-virtual {v3, p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 2385
    :catch_0
    move-exception v2

    .line 2386
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getInstance fail. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2252
    const-string/jumbo v5, "getSignatureFromPackage"

    .line 2254
    .local v5, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2255
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 2257
    .local v7, "pid":I
    const/4 v2, 0x0

    .line 2258
    .local v2, "currentUserId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 2259
    const/4 v1, 0x0

    .line 2262
    .local v1, "bbcFlag":Z
    sget-object v12, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v12, v13}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2263
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage: License validation failed"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    const/4 v9, 0x0

    .line 2327
    :goto_0
    return-object v9

    .line 2266
    :cond_0
    if-nez p1, :cond_1

    .line 2267
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage: packageName is null"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    const/4 v9, 0x0

    goto :goto_0

    .line 2271
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 2272
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    .line 2274
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v8, :cond_9

    .line 2275
    const/16 v12, 0x40

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v8, v0, v12, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 2278
    if-eqz v6, :cond_3

    .line 2279
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2280
    .local v10, "s":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .line 2281
    .local v9, "returnSignature":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v12, v10

    if-ge v4, v12, :cond_9

    .line 2282
    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 2283
    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    .line 2285
    goto :goto_0

    .line 2281
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2289
    .end local v4    # "i":I
    .end local v9    # "returnSignature":Ljava/lang/String;
    .end local v10    # "s":[Landroid/content/pm/Signature;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2290
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2291
    const/4 v1, 0x1

    .line 2294
    :cond_4
    if-eqz v1, :cond_8

    .line 2295
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    if-eqz v12, :cond_7

    .line 2296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/PersonaManager;->getBbcEnabled()I

    move-result v2

    .line 2297
    const/16 v12, 0x40

    move-object/from16 v0, p1

    invoke-interface {v8, v0, v12, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 2298
    if-eqz v6, :cond_6

    .line 2299
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2300
    .restart local v10    # "s":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .line 2301
    .restart local v9    # "returnSignature":Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v12, v10

    if-ge v4, v12, :cond_9

    .line 2302
    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 2303
    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    .line 2305
    goto :goto_0

    .line 2301
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2309
    .end local v4    # "i":I
    .end local v9    # "returnSignature":Ljava/lang/String;
    .end local v10    # "s":[Landroid/content/pm/Signature;
    :cond_6
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, pi is null"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2313
    :cond_7
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, mPersona is null"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2317
    :cond_8
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, bbcFlag is false"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2318
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2322
    :catch_0
    move-exception v3

    .line 2323
    .local v3, "e1":Ljava/lang/Exception;
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in method:getSignatureFromPackage, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2326
    .end local v3    # "e1":Ljava/lang/Exception;
    :cond_9
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, null is returned"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public hasKnoxContainers()I
    .locals 10

    .prologue
    .line 2439
    const/4 v5, 0x0

    .line 2440
    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2442
    .local v2, "ident":J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2444
    .local v4, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :try_start_0
    iget-object v6, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    if-nez v6, :cond_0

    .line 2446
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    iput-object v6, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    .line 2449
    :cond_0
    iget-object v6, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    if-eqz v6, :cond_2

    .line 2451
    iget-object v6, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v6}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v4

    .line 2452
    if-eqz v4, :cond_2

    .line 2453
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 2454
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    iget v6, v6, Landroid/content/pm/PersonaInfo;->id:I

    const/16 v7, 0x64

    if-lt v6, v7, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    iget v6, v6, Landroid/content/pm/PersonaInfo;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0xc2

    if-gt v6, v7, :cond_1

    .line 2456
    const/4 v5, 0x1

    .line 2453
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2464
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 2465
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasKnoxContainers - Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2468
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2470
    return v5
.end method

.method public hasSEContainers()I
    .locals 7

    .prologue
    .line 2497
    const/4 v1, 0x0

    .line 2499
    .local v1, "result":I
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasSEContainers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2500
    const/4 v1, 0x1

    .line 2502
    :cond_0
    const/4 v2, 0x0

    .line 2503
    .local v2, "val":Ljava/lang/String;
    const-string/jumbo v3, "persist.security.good.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2504
    if-eqz v2, :cond_1

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 2505
    const/4 v1, 0x1

    .line 2512
    .end local v2    # "val":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 2507
    :catch_0
    move-exception v0

    .line 2508
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hasSEContainers - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "service"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2531
    sget-boolean v2, Lcom/android/server/SEAMService;->bootCompleted:Z

    if-nez v2, :cond_1

    sget v2, Lcom/android/server/SEAMService;->SELF_PID:I

    if-ne v2, p1, :cond_1

    .line 2543
    :cond_0
    :goto_0
    return v0

    .line 2535
    :cond_1
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v1

    .line 2536
    .local v1, "sk":Lcom/android/server/ServiceKeeper;
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lcom/android/server/SEAMService;->SELF_PID:I

    if-eq v2, p1, :cond_0

    .line 2540
    :cond_2
    iget-object v2, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2543
    .local v0, "result":I
    goto :goto_0
.end method

.method public isBBCAgent()Z
    .locals 1

    .prologue
    .line 2978
    iget-object v0, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->isBBCAgent()Z

    move-result v0

    return v0
.end method

.method public isSBAApp(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceType"    # I

    .prologue
    .line 2942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2943
    const/4 v0, -0x2

    .line 2945
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->isSBAApp(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public isSEAndroidLogDumpStateInclude(Landroid/app/enterprise/ContextInfo;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2126
    const-string/jumbo v1, "isSEAndroidLogDumpStateInclude"

    .line 2129
    .local v1, "method":Ljava/lang/String;
    sget-object v5, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2130
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string/jumbo v5, "isSEAndroidLogDumpStateInclude: License validation failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    const/4 v3, -0x2

    .line 2143
    :cond_0
    :goto_0
    return v3

    .line 2135
    :cond_1
    :try_start_0
    const-string/jumbo v5, "persist.security.mdm.SElogs"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2136
    .local v2, "val":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 2142
    .end local v2    # "val":Ljava/lang/String;
    :goto_1
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string/jumbo v6, "isSEAndroidLogDumpStateInclude, FALSE is returned"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 2143
    goto :goto_0

    .line 2138
    :catch_0
    move-exception v0

    .line 2139
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in method:isSEAndroidLogDumpStateInclude, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public isSEPolicyAutoUpdateEnabled(Landroid/app/enterprise/ContextInfo;)I
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1672
    const/4 v7, -0x1

    .line 1673
    .local v7, "ret":I
    const/4 v8, 0x0

    .line 1674
    .local v8, "settingValue":I
    const-string/jumbo v4, "isSEPolicyAutoUpdateEnabled"

    .line 1678
    .local v4, "method":Ljava/lang/String;
    sget-object v11, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-direct {p0, p1, v11, v10}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1679
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "isSEPolicyAutoUpdateEnabled: License validation failed"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    const/4 v10, -0x2

    .line 1717
    :goto_0
    return v10

    .line 1682
    :cond_0
    iget-object v11, p0, Lcom/android/server/SEAMService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSdkVer()Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v0

    .line 1683
    .local v0, "currentVersion":Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;
    sget-object v11, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v0, v11}, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v11

    if-gez v11, :cond_4

    .line 1684
    const-wide/16 v2, 0x0

    .line 1687
    .local v2, "ident":J
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1688
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    const-string v12, "android"

    const-string v13, "com.sec.android.app.msa"

    invoke-interface {v11, v12, v13}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    move v5, v10

    .line 1691
    .local v5, "msaInstalled":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/SEAMService;->getSELinuxMode(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    if-ne v11, v10, :cond_3

    .line 1692
    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "security_update_db"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 1705
    .end local v5    # "msaInstalled":Z
    :cond_2
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "ident":J
    :goto_2
    move v10, v7

    .line 1717
    goto :goto_0

    .line 1694
    .restart local v2    # "ident":J
    .restart local v5    # "msaInstalled":Z
    :cond_3
    if-eqz v5, :cond_2

    .line 1695
    :try_start_1
    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "cr_msa_auto_update"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    goto :goto_1

    .line 1698
    .end local v5    # "msaInstalled":Z
    :catch_0
    move-exception v6

    .line 1699
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "remote exception in method:isSEPolicyAutoUpdateEnabled"

    invoke-virtual {v10, v11, v12, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1700
    const/4 v7, -0x1

    .line 1704
    goto :goto_1

    .line 1701
    .end local v6    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1702
    .local v1, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string v12, "Exception in method:isSEPolicyAutoUpdateEnabled"

    invoke-virtual {v10, v11, v12, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1703
    const/4 v7, -0x1

    goto :goto_1

    .line 1708
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ident":J
    :cond_4
    :try_start_2
    const-string/jumbo v10, "spd_control_policy"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/enterprise/spd/ISPDControlPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/spd/ISPDControlPolicy;

    move-result-object v9

    .line 1710
    .local v9, "spdControlPolicy":Lcom/sec/enterprise/spd/ISPDControlPolicy;
    invoke-interface {v9}, Lcom/sec/enterprise/spd/ISPDControlPolicy;->getAutoSecurityPolicyUpdateMode()I

    move-result v8

    .line 1711
    rem-int/lit8 v7, v8, 0x2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1712
    .end local v9    # "spdControlPolicy":Lcom/sec/enterprise/spd/ISPDControlPolicy;
    :catch_2
    move-exception v6

    .line 1713
    .restart local v6    # "re":Landroid/os/RemoteException;
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string v12, "Exception in method:isSEPolicyAutoUpdateEnabled"

    invoke-virtual {v10, v11, v12, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1714
    const/4 v7, -0x1

    goto :goto_2
.end method

.method public isWhitelistApp(ILjava/lang/String;I)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    .line 2907
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2908
    const/4 v0, -0x2

    .line 2910
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->isWhitelistApp(ILjava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public loadContainerSetting(Ljava/lang/String;)I
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2573
    const-string/jumbo v4, "loadContainerSetting"

    .line 2574
    .local v4, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2575
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2577
    .local v5, "pid":I
    sget-object v7, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-direct {p0, v6, v5, v7, v9}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2578
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string/jumbo v9, "loadContainerSetting: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    const/4 v7, -0x2

    .line 2600
    :goto_0
    return v7

    .line 2584
    :cond_0
    const/4 v7, 0x1

    :try_start_0
    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 2585
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_2

    .line 2586
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 2587
    .local v3, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v7, 0x80

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-interface {v3, p1, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2589
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 2590
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, p1, v7, v8}, Lcom/android/server/SEAMSContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v7

    goto :goto_0

    .line 2592
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v2, p1, v7, v8}, Lcom/android/server/SEAMSContainer;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 2595
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    .end local v3    # "mPM":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v1

    .line 2596
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in method:loadContainerSetting, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2599
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string/jumbo v9, "loadContainerSetting: POLICY_FAILED is returned"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    const/4 v7, -0x1

    goto :goto_0
.end method

.method public relabelAppDir(Ljava/lang/String;)I
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2623
    const-string/jumbo v6, "relabelAppDir"

    .line 2624
    .local v6, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2625
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 2627
    .local v7, "pid":I
    sget-object v9, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, v8, v7, v9, v10}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2628
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "relabelAppDir: License validation failed"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    const/4 v9, -0x2

    .line 2683
    :goto_0
    return v9

    .line 2632
    :cond_0
    if-nez p1, :cond_1

    .line 2633
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "packageName is null"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    const/4 v9, 0x0

    goto :goto_0

    .line 2637
    :cond_1
    const/4 v4, 0x0

    .line 2638
    .local v4, "hasApp":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 2639
    .local v2, "currentUid":I
    const/4 v1, 0x0

    .line 2640
    .local v1, "bbcFlag":Z
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2641
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2642
    const/4 v1, 0x1

    .line 2646
    :cond_2
    if-eqz v1, :cond_3

    .line 2647
    iget-object v9, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/PersonaManager;->getBbcEnabled()I

    move-result v2

    .line 2652
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 2653
    .local v5, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v9, 0x80

    invoke-interface {v5, p1, v9, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2654
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v9, "package"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageManagerService;

    iput-object v9, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    .line 2655
    if-nez v0, :cond_4

    .line 2656
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AppInfo of package:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", is NULL, return false"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    const/4 v9, 0x0

    goto :goto_0

    .line 2659
    :cond_4
    const-string v9, "/data/system"

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2660
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The package has /data/system/ datadir, dataDir:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and cannot be relabeled"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2663
    :cond_5
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v8, v9, :cond_6

    .line 2664
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2666
    :cond_6
    if-eqz v1, :cond_7

    .line 2667
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BBC case, relabelAppDir with packageName:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", seinfo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    iget-object v9, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v9, p1, v10, v8, v11}, Lcom/android/server/pm/PackageManagerService;->relabelAppDir(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v9

    if-nez v9, :cond_8

    .line 2669
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "BBC case, mPMS.relabelAppDir returned false"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2673
    :cond_7
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "non-BBC (Good/generic) case, relabelAppDir with packageName:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", seinfo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    iget-object v9, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v9, p1, v10, v8, v11}, Lcom/android/server/pm/PackageManagerService;->relabelAppDir(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v9

    if-nez v9, :cond_8

    .line 2675
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "non-BBC case, mPMS.relabelAppDir returned false"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2676
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2679
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "mPM":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v3

    .line 2680
    .local v3, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "relabelAppDir cannot get app list"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2683
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "mPM":Landroid/content/pm/IPackageManager;
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public relabelData(Landroid/app/enterprise/ContextInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2701
    const-string/jumbo v0, "relabelData"

    .line 2704
    .local v0, "method":Ljava/lang/String;
    sget-object v1, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2705
    sget-object v1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMService"

    const-string/jumbo v3, "relabelData: License validation failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    const/4 v1, -0x2

    .line 2718
    :goto_0
    return v1

    .line 2711
    :cond_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    .line 2713
    iget-object v1, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->relabelData()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2714
    sget-object v1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string/jumbo v4, "mPMS.relabelData returned false"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2715
    goto :goto_0

    :cond_1
    move v1, v3

    .line 2718
    goto :goto_0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 2758
    const-string/jumbo v9, "removeAppFromContainer"

    .line 2759
    .local v9, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 2760
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2761
    .local v10, "pid":I
    const-wide/16 v6, 0x0

    .line 2764
    .local v6, "ident":J
    sget-object v13, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v14}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2765
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    const-string/jumbo v15, "removeAppFromContainer: License validation failed"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    const/4 v11, -0x2

    .line 2819
    :goto_0
    return v11

    .line 2779
    :cond_0
    const/4 v8, 0x0

    .line 2782
    .local v8, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v11, 0x0

    .line 2783
    .local v11, "ret":I
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2784
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 2785
    if-eqz v8, :cond_5

    .line 2786
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    .line 2787
    goto :goto_0

    .line 2789
    :cond_1
    const/16 v13, 0x2be

    move/from16 v0, p3

    if-ne v0, v13, :cond_2

    .line 2790
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 2791
    if-eqz v8, :cond_5

    .line 2792
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    .line 2793
    goto :goto_0

    .line 2795
    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2796
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 2797
    if-eqz v8, :cond_5

    .line 2798
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    .line 2799
    goto :goto_0

    .line 2802
    :cond_3
    const-string v13, "SEAMS"

    const-string/jumbo v14, "removeAppFromContainer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13, v14}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2803
    .local v4, "containerType":I
    if-gez v4, :cond_4

    .line 2804
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unauthorized call to removeAppFromContainer for package name ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2806
    const/4 v11, -0x2

    goto/16 :goto_0

    .line 2808
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v4, v13}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 2809
    if-eqz v8, :cond_5

    .line 2810
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 2811
    goto/16 :goto_0

    .line 2814
    .end local v4    # "containerType":I
    :catch_0
    move-exception v5

    .line 2815
    .local v5, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in method:removeAppFromContainer, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 2818
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    const-string/jumbo v15, "removeAppFromContainer: POLICY_FAILED is returned"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2819
    const/4 v11, -0x1

    goto/16 :goto_0
.end method

.method public removeAppFromSBABlacklist(ILjava/lang/String;I)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    .line 2956
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2957
    const/4 v0, -0x2

    .line 2959
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromSBABlacklist(ILjava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public removeAppFromWhitelist(ILjava/lang/String;I)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    .line 2921
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2922
    const/4 v0, -0x2

    .line 2924
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromWhitelist(ILjava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public removeSEContainer(I)I
    .locals 10
    .param p1, "containerID"    # I

    .prologue
    .line 1275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1276
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1277
    .local v4, "pid":I
    const/4 v3, 0x0

    .line 1278
    .local v3, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v1, 0x0

    .line 1279
    .local v1, "callpkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 1280
    const/4 v0, 0x0

    .line 1281
    .local v0, "bbcFlag":Z
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1282
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1283
    const/4 v0, 0x1

    .line 1288
    :cond_0
    sget-object v6, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    invoke-direct {p0, v5, v4, v6, v7}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1289
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string v8, "activateDomain: License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    const/4 v6, -0x2

    .line 1312
    :goto_0
    return v6

    .line 1294
    :cond_1
    if-eqz v0, :cond_2

    .line 1295
    const/4 v6, 0x3

    :try_start_0
    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    .line 1304
    :goto_1
    if-eqz v3, :cond_4

    .line 1305
    invoke-virtual {v3, v5, v4, p1}, Lcom/android/server/SEAMSContainer;->removeSEContainer(III)I

    move-result v6

    goto :goto_0

    .line 1297
    :cond_2
    const-string v6, "com.samsung.android.irm.service"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1298
    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    goto :goto_1

    .line 1300
    :cond_3
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 1307
    :catch_0
    move-exception v2

    .line 1308
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in removeSEContainer:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1311
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string/jumbo v8, "removeSEContainer, POLICY_FAILED is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public setAMSLogLevel(Landroid/app/enterprise/ContextInfo;I)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "FLAG"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 2836
    const-string/jumbo v1, "setAMSLogLevel"

    .line 2840
    .local v1, "method":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2841
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string/jumbo v5, "setAMSLogLevel: License validation failed"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    const/4 v2, -0x2

    .line 2859
    :goto_0
    return v2

    .line 2845
    :cond_0
    if-ltz p2, :cond_1

    const/4 v4, 0x2

    if-le p2, v4, :cond_2

    .line 2847
    :cond_1
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "Flag with a wrong value"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 2848
    goto :goto_0

    .line 2853
    :cond_2
    const-string/jumbo v4, "persist.security.ams.verbose"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2857
    :catch_0
    move-exception v0

    .line 2858
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAMSLogLevel failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 2859
    goto :goto_0
.end method

.method public setBBCFlag(Z)I
    .locals 5
    .param p1, "value"    # Z

    .prologue
    .line 2982
    const-string/jumbo v0, "setBBCFlag"

    .line 2983
    .local v0, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2984
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2985
    .local v1, "pid":I
    const-string v3, "SEAMS"

    const-string/jumbo v4, "setBBCFlag"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    .line 2986
    const/4 v3, -0x1

    .line 2989
    :goto_0
    return v3

    .line 2988
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->setBBCFlag(Z)I

    .line 2989
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setSEAndroidLogDumpStateInclude(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "include"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2873
    const-string/jumbo v1, "setSEAndroidLogDumpStateInclude"

    .line 2875
    .local v1, "method":Ljava/lang/String;
    sget-object v3, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2876
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string/jumbo v4, "setSEAndroidLogDumpStateInclude: License validation failed"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    const/4 v2, -0x2

    .line 2891
    :goto_0
    return v2

    .line 2881
    :cond_0
    if-eqz p2, :cond_1

    .line 2882
    :try_start_0
    const-string/jumbo v3, "persist.security.mdm.SElogs"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2886
    :catch_0
    move-exception v0

    .line 2887
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in method:setSEAndroidLogDumpStateInclude, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2888
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2890
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string/jumbo v4, "setSEAndroidLogDumpStateInclude: POLICY_FAILED is returned"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    const/4 v2, -0x1

    goto :goto_0

    .line 2884
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "persist.security.mdm.SElogs"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setSEContainerClipboardMode(II)I
    .locals 17
    .param p1, "containerID"    # I
    .param p2, "mode"    # I

    .prologue
    .line 3059
    const-string/jumbo v9, "setSEContainerClipboardMode"

    .line 3061
    .local v9, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 3062
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 3063
    .local v10, "pid":I
    const/4 v11, 0x0

    .line 3064
    .local v11, "ret":Z
    const-wide/16 v6, 0x0

    .line 3065
    .local v6, "ident":J
    const/4 v5, 0x0

    .line 3068
    .local v5, "instanceCon":Lcom/android/server/SEAMSContainer;
    sget-object v13, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v14}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_0

    .line 3069
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    const-string/jumbo v15, "setSEContainerClipboardMode: License validation failed"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    const/4 v13, -0x2

    .line 3115
    :goto_0
    return v13

    .line 3072
    :cond_0
    if-ltz p2, :cond_1

    const/4 v13, 0x1

    move/from16 v0, p2

    if-le v0, v13, :cond_2

    .line 3073
    :cond_1
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mode:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    const/4 v13, -0x1

    goto :goto_0

    .line 3077
    :cond_2
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v5

    .line 3078
    if-eqz v5, :cond_3

    .line 3079
    invoke-virtual {v5}, Lcom/android/server/SEAMSContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v8

    .line 3080
    .local v8, "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iget-object v13, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v14, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p1

    invoke-static {v13, v14, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_4

    .line 3081
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "containerID: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not owned by caller:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    const/4 v13, -0x1

    goto :goto_0

    .line 3085
    .end local v8    # "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_3
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    const-string/jumbo v15, "unable to get instance"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3086
    const/4 v13, -0x1

    goto :goto_0

    .line 3090
    .restart local v8    # "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_4
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3091
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v13, "containerID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3093
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3094
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v13, "containerID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3095
    const-string/jumbo v13, "mode"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3099
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "SeamsClipboardTable"

    const-string/jumbo v15, "mode"

    invoke-virtual {v13, v14, v15, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    .line 3101
    .local v3, "cvOld":Landroid/content/ContentValues;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v13

    if-eqz v13, :cond_6

    .line 3102
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CHecking if entry already exists:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "SeamsClipboardTable"

    invoke-virtual {v13, v14, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v11

    .line 3114
    :cond_5
    :goto_1
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setSecontainerClipboardMode: ret = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    const/4 v13, 0x1

    if-ne v11, v13, :cond_7

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3106
    :cond_6
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    const-string v15, "CvOld null or size 0"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "SeamsClipboardTable"

    invoke-virtual {v13, v14, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    .line 3109
    if-nez v11, :cond_5

    .line 3111
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "SeamsClipboardTable"

    invoke-virtual {v13, v14, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    goto :goto_1

    .line 3115
    :cond_7
    const/4 v13, -0x1

    goto/16 :goto_0
.end method

.method public updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "allowcategory"    # I
    .param p5, "appType"    # I
    .param p6, "removeFlag"    # Z

    .prologue
    .line 1070
    const-string/jumbo v11, "updateAppToContainer"

    .line 1072
    .local v11, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 1073
    .local v16, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 1074
    .local v14, "pid":I
    const/4 v15, 0x0

    .line 1075
    .local v15, "ret":I
    const-wide/16 v12, 0x0

    .line 1076
    .local v12, "ident":J
    const/4 v2, 0x0

    .line 1079
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    sget-object v3, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v14, v3, v4}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1080
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string/jumbo v5, "updateAppToContainer: License validation failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const/4 v3, -0x2

    .line 1124
    :goto_0
    return v3

    .line 1089
    :cond_0
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1090
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1091
    if-eqz v2, :cond_5

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 1092
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/SEAMSContainer;->updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I

    move-result v15

    move v3, v15

    .line 1093
    goto :goto_0

    .line 1095
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1096
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1097
    if-eqz v2, :cond_5

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 1098
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/SEAMSContainer;->updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I

    move-result v15

    move v3, v15

    .line 1099
    goto :goto_0

    .line 1101
    :cond_2
    const/16 v3, 0x2be

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 1102
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1103
    if-eqz v2, :cond_5

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 1104
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/SEAMSContainer;->updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I

    move-result v15

    move v3, v15

    .line 1105
    goto :goto_0

    .line 1108
    :cond_3
    const-string v3, "SEAMS"

    const-string/jumbo v4, "updateAppToContainer"

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1, v3, v4}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1109
    .local v9, "containerType":I
    if-gez v9, :cond_4

    .line 1110
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unauthorized call to updateAppToContainer for package name ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const/4 v3, -0x2

    goto/16 :goto_0

    .line 1113
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v9, v3}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1114
    if-eqz v2, :cond_5

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 1115
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/SEAMSContainer;->updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    move v3, v15

    .line 1116
    goto/16 :goto_0

    .line 1119
    .end local v9    # "containerType":I
    :catch_0
    move-exception v10

    .line 1120
    .local v10, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "Exception in methodupdateAppToContainer"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1123
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string/jumbo v5, "updateAppToContainer POLICY_FAILED is returned "

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const/4 v3, -0x1

    goto/16 :goto_0
.end method
