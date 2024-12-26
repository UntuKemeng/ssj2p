.class public Lcom/android/server/TimaService;
.super Landroid/service/tima/ITimaService$Stub;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TimaService$TuiReceiver;,
        Lcom/android/server/TimaService$TimaServiceHandler;
    }
.end annotation


# static fields
.field private static final ATTESTATION_BLOCK_PACKAGE_DIGESTS:B = 0x41t

.field private static final ATTESTATION_BLOCK_PACKAGE_DIGEST_COUNT:B = 0x40t

.field private static final ATTESTATION_BLOCK_PACKAGE_NAMES:B = 0x42t

.field private static final ATTESTATION_BLOCK_PACKAGE_VERSIONS:B = 0x43t

.field private static final ATTESTATION_BLOCK_SIGNATURE_DIGESTS:B = 0x45t

.field private static final ATTESTATION_BLOCK_SIGNATURE_DIGEST_COUNT:B = 0x44t

.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final DEBUG:Z = true

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final EVENT_MSG_KERNEL_METADATA_MODIFIED:I = 0x4

.field private static final EVENT_MSG_KERNEL_MODIFIED:I = 0x3

.field private static final EVENT_MSG_LKM_MODIFIED:I = 0x1

.field private static final EVENT_MSG_SELINUX_OFF:I = 0x2

.field public static final INTENT_KLMS_KAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

.field public static final KAP_ID_FIRST_LICENSE_ACTIVATION:I = 0x1

.field public static final KAP_ID_LAST_LICENSE_DEACTIVATION:I = 0x2

.field public static final KAP_ID_LICENSE_STATUS_RESPONSE:I = 0x3

.field private static final KAP_KAP_MODE_PERSIST_STATUS:Ljava/lang/String; = "persist.sys.kap.status"

.field public static final KAP_LICENSE_STATUS_REQUEST:Ljava/lang/String; = "KAP_LICENSE_STATUS_REQUEST"

.field public static final KAP_MODE_STATUS:Ljava/lang/String; = "KAP_RP_MODE_STATUS"

.field public static final KAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.samsung.action.knox.kap.KAP_NOTIFICATION"

.field private static final KAP_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.kap.date"

.field private static final PACKAGE_SECURITY_LOGUPLOAD_AGENT:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final TAG:Ljava/lang/String; = "TimaService"

.field private static final TIMA_ALERT_TITLE:Ljava/lang/String; = "TIMA security measurement"

.field private static final TIMA_CCM_CSR_PROFILES_DIR:Ljava/lang/String; = "/data/misc/tz_ccm/csr_profiles"

.field private static final TIMA_CCM_DB_FILE:Ljava/lang/String; = "/data/misc/tz_ccm/key_db"

.field private static final TIMA_CCM_DIR:Ljava/lang/String; = "/data/misc/tz_ccm"

.field private static final TIMA_DUMP_LOG_EXEC:Ljava/lang/String; = "/system/bin/tima_dump_log -s 20 -d 40 -o "

.field private static final TIMA_ERROR_KEYSTORE_NO_PERMISSON:I = 0x64

.field private static final TIMA_EVENT_ID:I = 0x2

.field private static final TIMA_EVENT_MSG:Ljava/lang/String; = "MSG="

.field private static final TIMA_EVENT_STATUS:Ljava/lang/String; = "TIMA_STATUS="

.field private static final TIMA_INTENT_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

.field private static final TIMA_ISV_APK_DIGEST_MAX:I = 0xa

.field private static final TIMA_ISV_CERT_DIGEST_MAX:I = 0xa

.field private static final TIMA_ISV_PACKAGE_NAME_MAX:I = 0x32

.field private static final TIMA_KEYSTORE_20_MAX_KEY_LENGTH:I = 0x20

.field private static final TIMA_LOG_DIR:Ljava/lang/String; = "/data/misc/tima"

.field private static final TIMA_LOG_STEM:Ljava/lang/String; = "/tima.log."

.field public static TIMA_MAX_EVENTS:I = 0x0

.field private static final TIMA_NOTIFICATION_ID:I = 0x1b58

.field public static final TIMA_OPCODE_HISTORY:I = 0xc351

.field public static final TIMA_OPCODE_MEASUREMENT:I = 0xc350

.field private static final TIMA_SERVICE_NAME:Ljava/lang/String; = "tima"

.field private static final TIMA_START_ID:I = 0x1

.field public static final TIMA_SUBCODE_LKM:I = 0x2711

.field public static final TIMA_SUBCODE_PKM:I = 0x2710

.field private static final TIMA_TIMER_CHECK_INTERVAL:J = 0x493e0L

.field private static final TIMA_TIMER_START_DELAY:J = 0x1388L

.field private static final TIMA_TIMER_START_DELAY_FIRST_TIME:J = 0x493e0L

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field public static iBootCompleted:Z

.field private static final mEventList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsBuildUpdate:Z

.field private mIsLicenseActive:Z

.field private mNotifMgr:Landroid/app/NotificationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private timaISLClbk:Landroid/service/tima/ITimaISLCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x64

    sput v0, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    .line 128
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    .line 152
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 250
    invoke-direct {p0}, Landroid/service/tima/ITimaService$Stub;-><init>()V

    .line 181
    iput-boolean v2, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    .line 182
    iput-boolean v2, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 2230
    new-instance v2, Lcom/android/server/TimaService$1;

    invoke-direct {v2, p0}, Lcom/android/server/TimaService$1;-><init>(Lcom/android/server/TimaService;)V

    iput-object v2, p0, Lcom/android/server/TimaService;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    iput-object p1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    .line 253
    invoke-direct {p0}, Lcom/android/server/TimaService;->registerTuiReceiver()V

    .line 255
    iget-object v2, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    .line 256
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TimaService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, "timaThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 258
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 259
    .local v0, "timaLooper":Landroid/os/Looper;
    if-eqz v0, :cond_4

    .line 260
    new-instance v2, Lcom/android/server/TimaService$TimaServiceHandler;

    invoke-direct {v2, p0, v0}, Lcom/android/server/TimaService$TimaServiceHandler;-><init>(Lcom/android/server/TimaService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/TimaService;->mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

    .line 266
    const-string v2, "CCM"

    invoke-virtual {p0, v2}, Lcom/android/server/TimaService;->loadTlcServer(Ljava/lang/String;)I

    .line 267
    invoke-direct {p0}, Lcom/android/server/TimaService;->isDCMsupported()Z

    move-result v2

    if-ne v4, v2, :cond_0

    .line 268
    const-string v2, "DCM"

    invoke-virtual {p0, v2}, Lcom/android/server/TimaService;->loadTlcServer(Ljava/lang/String;)I

    .line 271
    :cond_0
    invoke-direct {p0}, Lcom/android/server/TimaService;->isESECOMMSupported()Z

    move-result v2

    if-ne v4, v2, :cond_1

    .line 272
    const-string v2, "ESECOMM"

    invoke-virtual {p0, v2}, Lcom/android/server/TimaService;->loadTlcServer(Ljava/lang/String;)I

    .line 275
    :cond_1
    invoke-direct {p0}, Lcom/android/server/TimaService;->initCCMDatabase()Z

    .line 277
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    invoke-direct {p0}, Lcom/android/server/TimaService;->isLicenseActive()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 280
    const-string/jumbo v2, "ro.crypto.state"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unencrypted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "vold.decrypt"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "trigger_restart_framework"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "vold.decrypt"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "trigger_reset_main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 282
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TimaService;->handleBuildUpdate()V

    .line 285
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TimaService;->registerBroadcastReceiver()V

    .line 286
    const-string v2, "TimaService"

    const-string v3, "TIMA: Start TimaService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-void

    .line 262
    :cond_4
    const-string v2, "TimaService"

    const-string v3, "Failed getting looper for TimaServiceHandler"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TimaService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TimaService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/TimaService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/TimaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/TimaService;->notifyKapEnabled()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/TimaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/TimaService;->setKapBuildProp()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/TimaService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/TimaService;->getCCMVersionBoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/TimaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/TimaService;->startAttestationBoot()V

    return-void
.end method

.method static native ccm_register_for_default_cert(II)J
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 473
    const-string v1, "TimaService"

    .line 474
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/TimaService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 475
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

    .line 478
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 480
    throw v0

    .line 482
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 1117
    if-eqz p0, :cond_0

    .line 1118
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1120
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private enforcePermission()Z
    .locals 2

    .prologue
    .line 874
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 876
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 877
    const/4 v1, 0x1

    .line 880
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getCCMVersionBoot()Ljava/lang/String;
    .locals 2

    .prologue
    .line 938
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string/jumbo v1, "in getCCMVersionBoot"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    invoke-static {}, Lcom/android/server/TimaService;->get_ccm_version()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 945
    :goto_0
    monitor-exit p0

    return-object v0

    .line 944
    :cond_0
    :try_start_1
    const-string v0, "TimaService"

    const-string/jumbo v1, "getCCMVersionBoot - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    const/4 v0, 0x0

    goto :goto_0

    .line 938
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCollectorApkDigest(Ljava/lang/String;)[B
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1905
    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculate APK Digest for package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1908
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1911
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1912
    .local v2, "baseApkPath":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/TimaService;->getDigestOfFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1913
    .local v0, "apkDigest":[B
    if-eqz v0, :cond_0

    .line 1914
    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APK file MessageDigest: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISV apkDigest size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    .end local v0    # "apkDigest":[B
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "baseApkPath":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    .line 1920
    .restart local v0    # "apkDigest":[B
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "baseApkPath":Ljava/lang/String;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const-string v5, "TimaService"

    const-string v6, "ISV apkDigest is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1924
    .end local v0    # "apkDigest":[B
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "baseApkPath":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 1925
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1927
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCollectorBlob(I)[B
    .locals 20
    .param p1, "callerUid"    # I

    .prologue
    .line 1932
    const/4 v7, 0x0

    .line 1934
    .local v7, "digestCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 1936
    .local v13, "packageNames":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    const/16 v7, 0xa

    .line 1937
    :goto_0
    const/16 v17, 0x3e8

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1938
    const-string v17, "TimaService"

    const-string v18, "This call was from System UID app."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    const/16 v17, 0x16

    move/from16 v0, v17

    new-array v15, v0, [B

    fill-array-data v15, :array_0

    .line 2009
    :goto_1
    return-object v15

    .line 1936
    :cond_0
    array-length v7, v13

    goto :goto_0

    .line 1950
    :cond_1
    mul-int/lit8 v17, v7, 0x20

    add-int/lit8 v6, v17, 0x8

    .line 1951
    .local v6, "blobSize":I
    new-array v5, v6, [B

    .line 1952
    .local v5, "blob":[B
    const/4 v10, 0x0

    .line 1955
    .local v10, "idx":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .local v11, "idx":I
    const/16 v17, 0x40

    aput-byte v17, v5, v10

    .line 1956
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    const/16 v17, 0x0

    aput-byte v17, v5, v11

    .line 1957
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .restart local v11    # "idx":I
    const/16 v17, 0x2

    aput-byte v17, v5, v10

    .line 1958
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    ushr-int/lit8 v17, v7, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v5, v11

    .line 1959
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .restart local v11    # "idx":I
    int-to-byte v0, v7

    move/from16 v17, v0

    aput-byte v17, v5, v10

    .line 1962
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    const/16 v17, 0x41

    aput-byte v17, v5, v11

    .line 1963
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .restart local v11    # "idx":I
    mul-int/lit8 v17, v7, 0x20

    ushr-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v5, v10

    .line 1964
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    mul-int/lit8 v17, v7, 0x20

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v5, v11

    .line 1967
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v7, :cond_3

    .line 1968
    aget-object v17, v13, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/TimaService;->getCollectorApkDigest(Ljava/lang/String;)[B

    move-result-object v2

    .line 1969
    .local v2, "apkDigest":[B
    if-eqz v2, :cond_2

    .line 1970
    const/16 v17, 0x0

    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v2, v0, v5, v10, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1971
    array-length v0, v2

    move/from16 v17, v0

    add-int v10, v10, v17

    .line 1972
    const-string v17, "TimaService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ISV blob has been filled with "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bytes"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1975
    :cond_2
    const-string v17, "TimaService"

    const-string v18, "ISV apkDigest is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1979
    .end local v2    # "apkDigest":[B
    :cond_3
    const-string v17, "TimaService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ISV blob total size="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v5

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    move-object v3, v5

    .local v3, "arr$":[B
    array-length v12, v3

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_4
    if-ge v9, v12, :cond_4

    aget-byte v16, v3, v9

    .line 1982
    .local v16, "value":B
    const-string v17, "TimaService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "blob"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1985
    .end local v16    # "value":B
    :cond_4
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1988
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1992
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/TimaService;->writePackageNames(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V

    .line 1994
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/TimaService;->writePackageVersions(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V

    .line 1996
    const/16 v17, 0x0

    aget-object v17, v13, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v1, v7}, Lcom/android/server/TimaService;->writeCertificateDigests(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 2000
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 2001
    .local v14, "returnBytes":[B
    const-string v17, "TimaService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "TimaService.getCollectorBlob() returnBytes.length "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v14

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2006
    if-eqz v4, :cond_5

    .line 2008
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_6
    move-object v15, v14

    .line 2009
    goto/16 :goto_1

    .line 2006
    .end local v14    # "returnBytes":[B
    :catchall_0
    move-exception v17

    if-eqz v4, :cond_6

    .line 2008
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2009
    :cond_6
    :goto_7
    throw v17

    .line 1989
    :catch_0
    move-exception v17

    goto :goto_5

    .line 2009
    .restart local v14    # "returnBytes":[B
    :catch_1
    move-exception v17

    goto :goto_6

    .end local v14    # "returnBytes":[B
    :catch_2
    move-exception v18

    goto :goto_7

    .line 1939
    nop

    :array_0
    .array-data 1
        0x40t
        0x0t
        0x2t
        0x0t
        0x0t
        0x41t
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x43t
        0x0t
        0x0t
        0x44t
        0x0t
        0x2t
        0x0t
        0x0t
        0x45t
        0x0t
        0x0t
    .end array-data
.end method

.method private getDigestOfBytes([B)[B
    .locals 10
    .param p1, "inBytes"    # [B

    .prologue
    .line 2129
    const/4 v5, 0x0

    .line 2130
    .local v5, "dis":Ljava/security/DigestInputStream;
    const/4 v3, 0x0

    .line 2131
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 2133
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    const-string v9, "SHA256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 2134
    .local v8, "md":Ljava/security/MessageDigest;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2135
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

    .line 2136
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

    .line 2138
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v4, "bis":Ljava/io/BufferedInputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 2139
    .local v0, "b":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_0

    .line 2142
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v9

    .line 2153
    if-eqz v6, :cond_1

    .line 2154
    :try_start_4
    invoke-virtual {v6}, Ljava/security/DigestInputStream;->close()V

    .line 2155
    :cond_1
    if-eqz v4, :cond_2

    .line 2156
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 2157
    :cond_2
    if-eqz v2, :cond_3

    .line 2158
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

    .line 2163
    .end local v0    # "b":I
    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .end local v8    # "md":Ljava/security/MessageDigest;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    :goto_1
    return-object v9

    .line 2159
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

    .line 2160
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2143
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

    .line 2144
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    :try_start_5
    invoke-virtual {v7}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2153
    if-eqz v5, :cond_4

    .line 2154
    :try_start_6
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2155
    :cond_4
    if-eqz v3, :cond_5

    .line 2156
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2157
    :cond_5
    if-eqz v1, :cond_6

    .line 2158
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2163
    .end local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_6
    :goto_3
    const/4 v9, 0x0

    goto :goto_1

    .line 2159
    .restart local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v7

    .line 2160
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2145
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 2146
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2153
    if-eqz v5, :cond_7

    .line 2154
    :try_start_8
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2155
    :cond_7
    if-eqz v3, :cond_8

    .line 2156
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2157
    :cond_8
    if-eqz v1, :cond_6

    .line 2158
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 2159
    :catch_4
    move-exception v7

    .line 2160
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2147
    .end local v7    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 2148
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2153
    if-eqz v5, :cond_9

    .line 2154
    :try_start_a
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2155
    :cond_9
    if-eqz v3, :cond_a

    .line 2156
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2157
    :cond_a
    if-eqz v1, :cond_6

    .line 2158
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 2159
    :catch_6
    move-exception v7

    .line 2160
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2149
    .end local v7    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v7

    .line 2150
    .local v7, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_b
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2153
    if-eqz v5, :cond_b

    .line 2154
    :try_start_c
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2155
    :cond_b
    if-eqz v3, :cond_c

    .line 2156
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2157
    :cond_c
    if-eqz v1, :cond_6

    .line 2158
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_3

    .line 2159
    :catch_8
    move-exception v7

    .line 2160
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2152
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 2153
    :goto_7
    if-eqz v5, :cond_d

    .line 2154
    :try_start_d
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2155
    :cond_d
    if-eqz v3, :cond_e

    .line 2156
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2157
    :cond_e
    if-eqz v1, :cond_f

    .line 2158
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 2161
    :cond_f
    :goto_8
    throw v9

    .line 2159
    :catch_9
    move-exception v7

    .line 2160
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 2152
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

    .line 2149
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

    .line 2147
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

    .line 2145
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

    .line 2143
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

.method private getDigestOfFile(Ljava/lang/String;)[B
    .locals 10
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 2169
    const/4 v3, 0x0

    .line 2170
    .local v3, "dis":Ljava/security/DigestInputStream;
    const/4 v1, 0x0

    .line 2171
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 2173
    .local v6, "fileStream":Ljava/io/InputStream;
    :try_start_0
    const-string v9, "SHA256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 2174
    .local v8, "md":Ljava/security/MessageDigest;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2175
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .local v7, "fileStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/security/DigestInputStream;

    invoke-direct {v4, v7, v8}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2176
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .local v4, "dis":Ljava/security/DigestInputStream;
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2178
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 2179
    .local v0, "b":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_0

    .line 2182
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v9

    .line 2193
    if-eqz v4, :cond_1

    .line 2194
    :try_start_4
    invoke-virtual {v4}, Ljava/security/DigestInputStream;->close()V

    .line 2195
    :cond_1
    if-eqz v2, :cond_2

    .line 2196
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 2197
    :cond_2
    if-eqz v7, :cond_3

    .line 2198
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    :goto_0
    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .line 2203
    .end local v0    # "b":I
    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .end local v8    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    :goto_1
    return-object v9

    .line 2199
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v0    # "b":I
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v8    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v5

    .line 2200
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2183
    .end local v0    # "b":I
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fileStream":Ljava/io/InputStream;
    .end local v8    # "md":Ljava/security/MessageDigest;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 2184
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2193
    if-eqz v3, :cond_4

    .line 2194
    :try_start_6
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2195
    :cond_4
    if-eqz v1, :cond_5

    .line 2196
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2197
    :cond_5
    if-eqz v6, :cond_6

    .line 2198
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2203
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_6
    :goto_3
    const/4 v9, 0x0

    goto :goto_1

    .line 2199
    .restart local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v5

    .line 2200
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2185
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 2186
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2193
    if-eqz v3, :cond_7

    .line 2194
    :try_start_8
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2195
    :cond_7
    if-eqz v1, :cond_8

    .line 2196
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2197
    :cond_8
    if-eqz v6, :cond_6

    .line 2198
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 2199
    :catch_4
    move-exception v5

    .line 2200
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2187
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 2188
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2193
    if-eqz v3, :cond_9

    .line 2194
    :try_start_a
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2195
    :cond_9
    if-eqz v1, :cond_a

    .line 2196
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2197
    :cond_a
    if-eqz v6, :cond_6

    .line 2198
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 2199
    :catch_6
    move-exception v5

    .line 2200
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2189
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 2190
    .local v5, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2193
    if-eqz v3, :cond_b

    .line 2194
    :try_start_c
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2195
    :cond_b
    if-eqz v1, :cond_c

    .line 2196
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2197
    :cond_c
    if-eqz v6, :cond_6

    .line 2198
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_3

    .line 2199
    :catch_8
    move-exception v5

    .line 2200
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2192
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 2193
    :goto_7
    if-eqz v3, :cond_d

    .line 2194
    :try_start_d
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2195
    :cond_d
    if-eqz v1, :cond_e

    .line 2196
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2197
    :cond_e
    if-eqz v6, :cond_f

    .line 2198
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 2201
    :cond_f
    :goto_8
    throw v9

    .line 2199
    :catch_9
    move-exception v5

    .line 2200
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 2192
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v8    # "md":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto :goto_7

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_7

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catchall_3
    move-exception v9

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_7

    .line 2189
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_a
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto :goto_6

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_b
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_6

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_c
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_6

    .line 2187
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_d
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto :goto_5

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_e
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_5

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_f
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_5

    .line 2185
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_10
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_4

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_11
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_4

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_12
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_4

    .line 2183
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_13
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_14
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_2

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_15
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_2
.end method

.method private getImei()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2207
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2208
    const-string v0, "INVALID IMEI"

    .line 2209
    .local v0, "imei":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 2210
    iget-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 2211
    if-nez v0, :cond_0

    .line 2212
    iget-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2213
    if-nez v0, :cond_0

    .line 2214
    const-string v0, "INVALID IMEI"

    .line 2219
    :cond_0
    return-object v0
.end method

.method private getKapState()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1624
    const/4 v5, 0x0

    .line 1626
    .local v5, "ret":Z
    const/4 v8, 0x1

    :try_start_0
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "kapstate"

    aput-object v9, v0, v8

    .line 1630
    .local v0, "columns":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v8, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1631
    .local v3, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const-string/jumbo v8, "knox_active_protection"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 1634
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1635
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1636
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 1637
    const-string/jumbo v8, "kapstate"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-ne v8, v6, :cond_1

    move v5, v6

    .line 1647
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getKapState ret: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    move v5, v7

    .line 1637
    goto :goto_0

    .line 1641
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 1643
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getKapState failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static native get_ccm_version()Ljava/lang/String;
.end method

.method static native get_tima_Version()Ljava/lang/String;
.end method

.method private handleBuildUpdate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1790
    :try_start_0
    const-string/jumbo v3, "ro.build.date"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1792
    .local v0, "currentBuild":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.kap.date"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1796
    .local v2, "oldBuild":Ljava/lang/String;
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleBuildUpdate - currentBuild: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldBuild: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", license: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v6, :cond_1

    .line 1801
    const-string v3, "TimaService"

    const-string/jumbo v4, "handleBuildUpdate - updated"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    .line 1804
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1805
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    .line 1806
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1808
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    if-eqz v3, :cond_1

    .line 1810
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1811
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    .line 1812
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    .end local v0    # "currentBuild":Ljava/lang/String;
    .end local v2    # "oldBuild":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1815
    :catch_0
    move-exception v1

    .line 1816
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initCCMDatabase()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 903
    const-string v4, "TimaService"

    const-string v5, "TIMA: in initCCMDatabase"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/misc/tz_ccm"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 907
    .local v1, "dbDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 908
    const-string v4, "TimaService"

    const-string v5, "TIMA: in initCCMDatabase - creating CCM directory"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 910
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 911
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 914
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/misc/tz_ccm/csr_profiles"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 915
    .local v0, "csrProfileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 916
    const-string v4, "TimaService"

    const-string v5, "TIMA: in initCCMDatabase - creating CCM CSR profile directory"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 918
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 919
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 923
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/misc/tz_ccm/key_db"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 924
    .local v2, "dbFile":Ljava/io/File;
    const-string v4, "TimaService"

    const-string v5, "TIMA: in initCCMDatabase - creating CCM DB file"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 927
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    .end local v0    # "csrProfileDir":Ljava/io/File;
    .end local v1    # "dbDir":Ljava/io/File;
    .end local v2    # "dbFile":Ljava/io/File;
    :goto_0
    return v6

    .line 928
    :catch_0
    move-exception v3

    .line 929
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "TimaService"

    const-string v5, "Exception in initCCMDatabase"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private isDCMsupported()Z
    .locals 4

    .prologue
    .line 1867
    const/4 v1, 0x0

    .line 1868
    .local v1, "support":Z
    const-string/jumbo v2, "ro.product.name"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1869
    .local v0, "modelName":Ljava/lang/String;
    const-string/jumbo v2, "noble"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "zen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "zero"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1872
    :cond_0
    const-string v2, "TimaService"

    const-string v3, "DCM is supported"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    const/4 v1, 0x1

    .line 1876
    :cond_1
    return v1
.end method

.method private isESECOMMSupported()Z
    .locals 4

    .prologue
    .line 1880
    const/4 v1, 0x0

    .line 1881
    .local v1, "support":Z
    const-string/jumbo v2, "ro.product.name"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1882
    .local v0, "modelName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1883
    const-string/jumbo v2, "noble"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "zen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "zero"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "hero"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "grace"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1888
    :cond_0
    const-string v2, "TimaService"

    const-string v3, "ESECOMM is supported"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    const/4 v1, 0x1

    .line 1891
    :cond_1
    return v1
.end method

.method private declared-synchronized isKapOnInternal()Z
    .locals 1

    .prologue
    .line 2223
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/TimaService;->is_kap_on()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isKapSupported()Z
    .locals 4

    .prologue
    .line 1856
    const/4 v1, 0x0

    .line 1857
    .local v1, "mIsKapSupported":Z
    const-string/jumbo v2, "ro.config.kap"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1858
    .local v0, "kapSupported":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1859
    const/4 v1, 0x1

    .line 1863
    :cond_0
    return v1
.end method

.method private isLicenseActive()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1522
    const/4 v5, 0x0

    .line 1524
    .local v5, "ret":Z
    const/4 v8, 0x1

    :try_start_0
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "licensestate"

    aput-object v9, v0, v8

    .line 1528
    .local v0, "columns":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v8, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1529
    .local v3, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const-string/jumbo v8, "knox_active_protection"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 1532
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1533
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1534
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 1535
    const-string/jumbo v8, "licensestate"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-ne v8, v6, :cond_1

    move v5, v6

    .line 1545
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isLicenseActive ret: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    move v5, v7

    .line 1535
    goto :goto_0

    .line 1539
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 1541
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isLicenseActive failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 857
    const/4 v1, 0x0

    .line 858
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 860
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 861
    if-eqz v1, :cond_0

    .line 862
    const/4 v3, 0x1

    .line 867
    :cond_0
    :goto_0
    return v3

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isZeroModel()Z
    .locals 4

    .prologue
    .line 1896
    const/4 v1, 0x0

    .line 1897
    .local v1, "isZeroModel":Z
    const-string/jumbo v2, "ro.config.kap_default_on"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1898
    .local v0, "isKapDefaultOn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1899
    const/4 v1, 0x1

    .line 1901
    :cond_0
    return v1
.end method

.method static native is_kap_on()Z
.end method

.method private notifyKapEnabled()V
    .locals 6

    .prologue
    .line 1824
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1825
    .local v2, "kapStatus":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1826
    .local v1, "kapIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.action.knox.kap.KAP_NOTIFICATION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1827
    const-string v3, "com.samsung.klmsagent"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1830
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - kapStatus:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1833
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v0

    .line 1835
    .local v0, "isKapOn":Z
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - isKapOn:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    if-eqz v0, :cond_0

    .line 1838
    const-string v3, "KAP_RP_MODE_STATUS"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1839
    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1841
    :cond_0
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    .end local v0    # "isKapOn":Z
    :cond_1
    :goto_0
    return-void

    .line 1842
    :cond_2
    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1843
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v0

    .line 1845
    .restart local v0    # "isKapOn":Z
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - isKapOn:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    if-nez v0, :cond_3

    .line 1848
    const-string v3, "KAP_RP_MODE_STATUS"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1849
    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1851
    :cond_3
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyTLCServiceStart(Ljava/lang/String;)I
    .locals 8
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "Status":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 414
    .local v2, "startTime":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xbb8

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    if-eqz v0, :cond_1

    .line 416
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 418
    :cond_1
    return v0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v1, "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TimaService;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    return-void
.end method

.method private registerTuiReceiver()V
    .locals 3

    .prologue
    .line 291
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 293
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 294
    new-instance v1, Lcom/android/server/TimaService$TuiReceiver;

    invoke-direct {v1}, Lcom/android/server/TimaService$TuiReceiver;-><init>()V

    .line 295
    .local v1, "tuiReceiver":Lcom/android/server/TimaService$TuiReceiver;
    iget-object v2, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    return-void
.end method

.method private restartTLCService(Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.security.tlc.restart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.security.tlc.restart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TimaService;->notifyTLCServiceStart(Ljava/lang/String;)I

    .line 424
    return-void
.end method

.method private declared-synchronized setKapBuildProp()V
    .locals 3

    .prologue
    .line 969
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string/jumbo v1, "in setKapBuildProp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-string v0, "0"

    const-string/jumbo v1, "persist.sys.kap.date"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 973
    const-string/jumbo v0, "persist.sys.kap.date"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v0, "TimaService"

    const-string v1, "KAP_SAVED_BUILD_FINGERPRINT is set to 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    :cond_0
    monitor-exit p0

    return-void

    .line 969
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startAttestationBoot()V
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 951
    monitor-enter p0

    :try_start_0
    const-string v4, "TimaService"

    const-string/jumbo v5, "in startAttestationBoot"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/16 v4, 0x20

    new-array v2, v4, [B

    .line 954
    .local v2, "nonce":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 955
    int-to-byte v4, v1

    aput-byte v4, v2, v1

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 958
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 959
    .local v3, "uid":I
    const/4 v0, 0x0

    .line 960
    .local v0, "blobByteArray":[B
    invoke-virtual {p0, v2, v3}, Lcom/android/server/TimaService;->attestation([BI)[B

    move-result-object v0

    .end local v0    # "blobByteArray":[B
    check-cast v0, [B

    .line 962
    .restart local v0    # "blobByteArray":[B
    if-nez v0, :cond_1

    .line 963
    const-string v4, "TimaService"

    const-string v5, "Blob from TIMA is invalid"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    :cond_1
    monitor-exit p0

    return-void

    .line 951
    .end local v0    # "blobByteArray":[B
    .end local v1    # "i":I
    .end local v2    # "nonce":[B
    .end local v3    # "uid":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method static native timaAttestation([B[B[B)[B
.end method

.method static native timaCheckEvent(II)Ljava/lang/String;
.end method

.method static native timaCheckHistory(II)Ljava/lang/String;
.end method

.method static native timaDumpLog()[B
.end method

.method static native timaGetDeviceID()[B
.end method

.method static native timaKeystoreInit()I
.end method

.method static native timaKeystoreInstallKey(I[B)I
.end method

.method static native timaKeystoreRetrieveKey(I)[B
.end method

.method static native timaKeystoreShutdown()I
.end method

.method static native timaLaunchTui(Ljava/lang/String;Ljava/lang/String;[BZI)[B
.end method

.method static native timaLoadTui()I
.end method

.method static native timaSetLicenseStatus(Z)Z
.end method

.method private declared-synchronized timaSetLicenseStatusInternal(Z)Z
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 2227
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/TimaService;->timaSetLicenseStatus(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static native timaTuiDecryptPinHash(Ljava/lang/String;[B)[B
.end method

.method static native timaTuiGetCerts()[B
.end method

.method static native timaTuiGetSecretDimension()[I
.end method

.method static native timaTuiInitSecret([BIILjava/lang/String;)I
.end method

.method static native timaTuiRegAppImage(Ljava/lang/String;[B)[I
.end method

.method static native timaUnloadTui()I
.end method

.method static native tima_Fips_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_Fips_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_Fips_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_Fips_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_Fips_KeyStore3_init(Z)I
.end method

.method static native tima_Fips_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method static native tima_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_KeyStore3_init()I
.end method

.method static native tima_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method private updateKapState(ZZ)V
    .locals 12
    .param p1, "isEnabled"    # Z
    .param p2, "isUserSet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1554
    const/4 v5, 0x0

    .line 1555
    .local v5, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 1558
    .local v0, "buffReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v9, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1567
    .local v4, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const/4 v7, 0x0

    .line 1568
    .local v7, "isKapOn":Z
    if-eqz p2, :cond_2

    .line 1569
    move v7, p1

    .line 1592
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1595
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v9, "TimaService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateKapState - isKapOn: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isUserSet: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    if-eqz v7, :cond_4

    .line 1598
    const-string/jumbo v9, "kapstate"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1602
    :goto_1
    const-string/jumbo v9, "knox_active_protection"

    invoke-virtual {v4, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    if-eqz v0, :cond_0

    .line 1611
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1614
    :cond_0
    if-eqz v5, :cond_1

    .line 1615
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 1618
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v7    # "isKapOn":Z
    :cond_1
    :goto_2
    return-void

    .line 1571
    .restart local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v7    # "isKapOn":Z
    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/dev/knox_kap"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1572
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v6, "fileReader":Ljava/io/FileReader;
    if-eqz v6, :cond_9

    .line 1574
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1576
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .local v1, "buffReader":Ljava/io/BufferedReader;
    if-eqz v1, :cond_8

    .line 1577
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 1578
    .local v8, "outPut":Ljava/lang/String;
    if-eqz v8, :cond_8

    .line 1579
    const-string v9, "11"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "01"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v9

    if-eqz v9, :cond_8

    .line 1580
    :cond_3
    const/4 v7, 0x1

    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_0

    .line 1600
    .end local v8    # "outPut":Ljava/lang/String;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    :cond_4
    :try_start_4
    const-string/jumbo v9, "kapstate"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1604
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v7    # "isKapOn":Z
    :catch_0
    move-exception v3

    .line 1606
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v9, "TimaService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateKapState failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1610
    if-eqz v0, :cond_5

    .line 1611
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1614
    :cond_5
    if-eqz v5, :cond_1

    .line 1615
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    goto :goto_2

    .line 1610
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v0, :cond_6

    .line 1611
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1614
    :cond_6
    if-eqz v5, :cond_7

    .line 1615
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    :cond_7
    throw v9

    .line 1610
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "isKapOn":Z
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 1604
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :cond_8
    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_0

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :cond_9
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_0
.end method

.method private updateLicenseState(Z)V
    .locals 6
    .param p1, "isLicenseActive"    # Z

    .prologue
    .line 1494
    :try_start_0
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1501
    .local v2, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1503
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 1504
    const-string/jumbo v3, "licensestate"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1508
    :goto_0
    const-string/jumbo v3, "knox_active_protection"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1516
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :goto_1
    return-void

    .line 1506
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_0
    const-string/jumbo v3, "licensestate"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1510
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :catch_0
    move-exception v1

    .line 1512
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLicenseState failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private validateRequest(II)Z
    .locals 2
    .param p1, "opCode"    # I
    .param p2, "subCode"    # I

    .prologue
    .line 323
    const/4 v0, 0x1

    .line 324
    .local v0, "ret":Z
    const v1, 0xc350

    if-eq p1, v1, :cond_0

    const v1, 0xc351

    if-ne p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x2710

    if-eq p2, v1, :cond_2

    const/16 v1, 0x2711

    if-eq p2, v1, :cond_2

    .line 328
    :cond_1
    const/4 v0, 0x0

    .line 330
    :cond_2
    return v0
.end method

.method private writeCertificateDigests(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V
    .locals 10
    .param p1, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "digestCount"    # I

    .prologue
    const/16 v0, 0xa

    .line 2084
    const-string v6, "TimaService"

    const-string v7, "TimaService.writeCertificateDigests()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    const/16 v6, 0x44

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2087
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2088
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2089
    iget-object v6, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 2090
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2091
    .local v4, "signatures":[Landroid/content/pm/Signature;
    if-nez v4, :cond_1

    .line 2092
    const-string v6, "TimaService"

    const-string/jumbo v7, "failed to get signatures"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "signatures":[Landroid/content/pm/Signature;
    :cond_0
    :goto_0
    return-void

    .line 2096
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "signatures":[Landroid/content/pm/Signature;
    :cond_1
    array-length v6, v4

    if-le v6, v0, :cond_4

    .line 2097
    .local v0, "certificateCount":I
    :goto_1
    if-nez p3, :cond_2

    .line 2099
    const/4 v0, 0x0

    .line 2102
    :cond_2
    ushr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2103
    int-to-byte v6, v0

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2105
    mul-int/lit8 v1, v0, 0x20

    .line 2106
    .local v1, "certificateDigestBlockSize":I
    const/16 v6, 0x45

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2107
    ushr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2108
    int-to-byte v6, v1

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2110
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 2111
    aget-object v6, v4, v2

    if-nez v6, :cond_5

    .line 2112
    const-string v6, "TimaService"

    const-string/jumbo v7, "signature is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2096
    .end local v0    # "certificateCount":I
    .end local v1    # "certificateDigestBlockSize":I
    .end local v2    # "i":I
    :cond_4
    array-length v0, v4

    goto :goto_1

    .line 2115
    .restart local v0    # "certificateCount":I
    .restart local v1    # "certificateDigestBlockSize":I
    .restart local v2    # "i":I
    :cond_5
    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TimaService.writeCertificateDigests() signature "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    aget-object v9, v4, v2

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    aget-object v6, v4, v2

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/TimaService;->getDigestOfBytes([B)[B

    move-result-object v5

    .line 2117
    .local v5, "tempDigest":[B
    if-eqz v5, :cond_3

    .line 2118
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 2120
    .end local v0    # "certificateCount":I
    .end local v1    # "certificateDigestBlockSize":I
    .end local v2    # "i":I
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "signatures":[Landroid/content/pm/Signature;
    .end local v5    # "tempDigest":[B
    :catch_0
    move-exception v6

    goto :goto_0

    .line 2122
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private writePackageNames(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V
    .locals 7
    .param p1, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "digestCount"    # I

    .prologue
    const/16 v6, 0x32

    .line 2018
    :try_start_0
    const-string v3, "TimaService"

    const-string v4, "TimaService.writePackageNames()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    const/16 v3, 0x42

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2022
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2024
    .local v1, "tempBaos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 2025
    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-le v3, v6, :cond_1

    .line 2026
    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x32

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2030
    :goto_1
    add-int/lit8 v3, p3, -0x1

    if-ge v0, v3, :cond_0

    .line 2031
    const/16 v3, 0x7c

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2024
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2028
    :cond_1
    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 2047
    .end local v0    # "i":I
    .end local v1    # "tempBaos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    .line 2050
    :goto_2
    return-void

    .line 2035
    .restart local v0    # "i":I
    .restart local v1    # "tempBaos":Ljava/io/ByteArrayOutputStream;
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 2036
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v2, v3

    .line 2037
    .local v2, "totalLengthOfPackages":I
    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2038
    int-to-byte v3, v2

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2040
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimaService.writePackageNames() wrote \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimaService.writePackageNames() totalLengthOfPackages "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimaService.writePackageNames() tempBaos.toByteArray().length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2045
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private writePackageVersions(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V
    .locals 7
    .param p1, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "digestCount"    # I

    .prologue
    .line 2054
    const-string v4, "TimaService"

    const-string v5, "TimaService.writePackageVersions()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const/16 v4, 0x43

    :try_start_0
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2062
    mul-int/lit8 v2, p3, 0x4

    .line 2063
    .local v2, "packageVersionsBlockSize":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2064
    int-to-byte v4, v2

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2066
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 2067
    iget-object v4, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    aget-object v5, p2, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2068
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 2069
    .local v3, "versionCode":I
    const-string v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TimaService.writePackageVersions() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " versionCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    ushr-int/lit8 v4, v3, 0x18

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2071
    ushr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2072
    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2073
    int-to-byte v4, v3

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2066
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2078
    .end local v0    # "i":I
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageVersionsBlockSize":I
    .end local v3    # "versionCode":I
    :catch_0
    move-exception v4

    .line 2081
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized DCMSelfCheck()V
    .locals 7

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    const-string v0, "Device_Default"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    .local v0, "dcm_default_alias":Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/prov_data/dcm/dcm.dat"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v4, "src":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/misc/tz_dcm/dcm.dat"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 432
    const-string v5, "DCM"

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->restartTLCService(Ljava/lang/String;)V

    .line 433
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/misc/tz_dcm/dcm.dat"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v2, "dest2":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 435
    const-string v5, "TimaService"

    const-string v6, "DCM certificate regeneration success!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    .end local v1    # "dest":Ljava/io/File;
    .end local v2    # "dest2":Ljava/io/File;
    .end local v4    # "src":Ljava/io/File;
    :goto_0
    monitor-exit p0

    return-void

    .line 437
    .restart local v1    # "dest":Ljava/io/File;
    .restart local v2    # "dest2":Ljava/io/File;
    .restart local v4    # "src":Ljava/io/File;
    :cond_0
    :try_start_2
    const-string v5, "TimaService"

    const-string v6, "DCM certificate regeneration failed!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 442
    .end local v1    # "dest":Ljava/io/File;
    .end local v2    # "dest2":Ljava/io/File;
    .end local v4    # "src":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 443
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TimaService"

    const-string v6, "Could not get DCM certificate"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 427
    .end local v0    # "dcm_default_alias":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 440
    .restart local v0    # "dcm_default_alias":Ljava/lang/String;
    .restart local v1    # "dest":Ljava/io/File;
    .restart local v4    # "src":Ljava/io/File;
    :cond_1
    :try_start_4
    const-string v5, "TimaService"

    const-string v6, "DCM certificate exists!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized FipsKeyStore3_del(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 681
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_del"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    if-nez p1, :cond_1

    .line 684
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_del, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 688
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_del(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_exist(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 635
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_exist"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    if-nez p1, :cond_1

    .line 639
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_exist, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 643
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_exist(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_get(Ljava/lang/String;[C)[B
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    const/4 v0, 0x0

    .line 651
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_get"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 654
    :cond_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_get, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 658
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_get(Ljava/lang/String;[C)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_getmtime(Ljava/lang/String;)J
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 666
    monitor-enter p0

    :try_start_0
    const-string v2, "TimaService"

    const-string v3, "TIMA3: FipsKeyStore3_getmtime"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    if-nez p1, :cond_1

    .line 669
    const-string v2, "TimaService"

    const-string v3, "TIMA3: FipsKeyStore3_getmtime, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 673
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    invoke-static {p1}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_getmtime(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_init(Z)I
    .locals 2
    .param p1, "selfTestOnly"    # Z

    .prologue
    .line 611
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-static {p1}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_init(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 617
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_put(Ljava/lang/String;[BI[C)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "password"    # [C

    .prologue
    const/4 v0, -0x1

    .line 621
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_put"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_2

    .line 624
    :cond_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_put, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 628
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_put(Ljava/lang/String;[BI[C)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 696
    monitor-enter p0

    :try_start_0
    const-string v2, "TimaService"

    const-string v3, "TIMA3: FipsKeyStore3_saw"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    if-nez p1, :cond_1

    .line 699
    const-string v2, "TimaService"

    const-string v3, "TIMA3: FipsKeyStore3_saw, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 703
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    .line 705
    .local v0, "tmp":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 706
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 696
    .end local v0    # "tmp":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized KeyStore3_del(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 578
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_del"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    if-nez p1, :cond_1

    .line 581
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_del, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 585
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_del(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_exist(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 532
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_exist"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    if-nez p1, :cond_1

    .line 536
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_exist, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 540
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_exist(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_get(Ljava/lang/String;[C)[B
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    const/4 v0, 0x0

    .line 548
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_get"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 551
    :cond_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_get, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 555
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_get(Ljava/lang/String;[C)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_getmtime(Ljava/lang/String;)J
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 563
    monitor-enter p0

    :try_start_0
    const-string v2, "TimaService"

    const-string v3, "TIMA3: KeyStore3_getmtime"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    if-nez p1, :cond_1

    .line 566
    const-string v2, "TimaService"

    const-string v3, "TIMA3: KeyStore3_getmtime, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 570
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    invoke-static {p1}, Lcom/android/server/TimaService;->tima_KeyStore3_getmtime(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_init()I
    .locals 2

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Lcom/android/server/TimaService;->tima_KeyStore3_init()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 514
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_put(Ljava/lang/String;[BI[C)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "password"    # [C

    .prologue
    const/4 v0, -0x1

    .line 518
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_put"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_2

    .line 521
    :cond_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_put, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 525
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/TimaService;->tima_KeyStore3_put(Ljava/lang/String;[BI[C)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 593
    monitor-enter p0

    :try_start_0
    const-string v2, "TimaService"

    const-string v3, "TIMA3: KeyStore3_saw"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    if-nez p1, :cond_1

    .line 596
    const-string v2, "TimaService"

    const-string v3, "TIMA3: KeyStore3_del, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 600
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    .line 602
    .local v0, "tmp":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 603
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 593
    .end local v0    # "tmp":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized attestation([BI)[B
    .locals 7
    .param p1, "nonce"    # [B
    .param p2, "callerUid"    # I

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    const-string v4, "attestation"

    invoke-static {v4}, Lcom/android/server/TimaService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 487
    const-string v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TIMA: attestation for callerUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v4, "TimaService"

    const-string v5, "TimaService.attestation()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 492
    .local v2, "id":J
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/TimaService;->getCollectorBlob(I)[B

    move-result-object v0

    .line 493
    .local v0, "blob":[B
    invoke-direct {p0}, Lcom/android/server/TimaService;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 494
    .local v1, "imei":[B
    invoke-static {p1, v0, v1}, Lcom/android/server/TimaService;->timaAttestation([B[B[B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 496
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v4

    .end local v0    # "blob":[B
    .end local v1    # "imei":[B
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 486
    .end local v2    # "id":J
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 6
    .param p1, "uid"    # I
    .param p2, "regPassword"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;
    .param p4, "isTrustedBootRequired"    # Z

    .prologue
    .line 983
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: in ccmRegisterForDefaultCertificate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 988
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 989
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 991
    :cond_0
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v4, "tima"

    const-string v5, "ccmRegisterForDefaultCertificate"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 994
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception Occurred while pid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ccmRegisterForDefaultCertificate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "tima"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1005
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 1006
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/TimaService;->ccm_register_for_default_cert(II)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    long-to-int v1, v2

    .line 1010
    :goto_0
    monitor-exit p0

    return v1

    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public declared-synchronized checkEvent(II)Ljava/lang/String;
    .locals 2
    .param p1, "operation"    # I
    .param p2, "subject"    # I

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: checkEvent, operation is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkHistory(II)Ljava/lang/String;
    .locals 2
    .param p1, "operation"    # I
    .param p2, "subject"    # I

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: checkHistory, operation is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public displayEvent(Ljava/lang/String;)V
    .locals 23
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 719
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA MEASUREMENT Result: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    if-nez p1, :cond_0

    .line 853
    :goto_0
    return-void

    .line 723
    :cond_0
    sget-object v20, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->size()I

    move-result v20

    sget v21, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1

    .line 724
    sget-object v20, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 728
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/service/tima/ITimaISLCallback;->onTimaViolation(Ljava/lang/String;)V

    .line 730
    const-string v20, "TimaService"

    const-string v21, "Reporting violation to ISL"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :cond_2
    :goto_1
    const-string v19, " "

    .line 739
    .local v19, "time":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 743
    :goto_2
    sget-object v20, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 746
    const-string v20, "TIMA_STATUS="

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 747
    .local v16, "statusIdx":I
    const/16 v20, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 748
    .local v15, "sepIdx":I
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_4

    .line 749
    :cond_3
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA MEASUREMENT invalid status: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 732
    .end local v15    # "sepIdx":I
    .end local v16    # "statusIdx":I
    .end local v19    # "time":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 733
    .local v9, "e":Landroid/os/RemoteException;
    const-string v20, "TimaService"

    const-string v21, "Exception"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 740
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v19    # "time":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 741
    .local v9, "e":Ljava/lang/Exception;
    const-string v20, "TimaService"

    const-string/jumbo v21, "toLocalString() exception"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 754
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v15    # "sepIdx":I
    .restart local v16    # "statusIdx":I
    :cond_4
    const-string v20, "0"

    const-string v21, "TIMA_STATUS="

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v16

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 755
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA MEASUREMENT success status: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 757
    :cond_5
    const-string v20, "1"

    const-string v21, "TIMA_STATUS="

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v16

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 758
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA Internal Error: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 763
    :cond_6
    const-string v20, "MSG="

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 764
    .local v14, "msgIdx":I
    const/16 v20, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 765
    const-string v13, ""

    .line 766
    .local v13, "msg":Ljava/lang/String;
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v14, v0, :cond_7

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_8

    .line 767
    :cond_7
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA MEASUREMENT invalid result: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 771
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v20, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    .local v3, "TimaEventIntent":Landroid/content/Intent;
    const-string v20, "MSG="

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v14

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 776
    const-string/jumbo v20, "lkm_modified"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 777
    const-string v20, "TIMA_STATUS="

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 789
    :goto_3
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v20, "yyyyMMddHHmmss"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 790
    .local v7, "dateFormat":Ljava/text/DateFormat;
    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 793
    .local v6, "date":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    const-string/jumbo v21, "mkdir -p /data/misc/tima"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 799
    :goto_4
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    const-string v21, "chmod 701 /data/misc/tima"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 805
    :goto_5
    :try_start_4
    new-instance v8, Ljava/io/File;

    const-string v20, "/data/misc/tima"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 806
    .local v8, "delAllTimaLogFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 808
    .local v10, "files":[Ljava/io/File;
    move-object v5, v10

    .local v5, "arr$":[Ljava/io/File;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_6
    if-ge v11, v12, :cond_d

    aget-object v18, v5, v11

    .line 809
    .local v18, "timafile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 808
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 778
    .end local v5    # "arr$":[Ljava/io/File;
    .end local v6    # "date":Ljava/lang/String;
    .end local v7    # "dateFormat":Ljava/text/DateFormat;
    .end local v8    # "delAllTimaLogFile":Ljava/io/File;
    .end local v10    # "files":[Ljava/io/File;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v18    # "timafile":Ljava/io/File;
    :cond_9
    const-string/jumbo v20, "seandroid_off"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 779
    const-string v20, "TIMA_STATUS="

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 780
    :cond_a
    const-string/jumbo v20, "kern_modified"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 781
    const-string v20, "TIMA_STATUS="

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 782
    :cond_b
    const-string/jumbo v20, "kern_metadata_modified"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 783
    const-string v20, "TIMA_STATUS="

    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 785
    :cond_c
    const-string v20, "TimaService"

    const-string v21, "TIMA: Unknown message from TIMA APPs. Not notifying the user"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 794
    .restart local v6    # "date":Ljava/lang/String;
    .restart local v7    # "dateFormat":Ljava/text/DateFormat;
    :catch_2
    move-exception v9

    .line 795
    .local v9, "e":Ljava/io/IOException;
    const-string v20, "TimaService"

    const-string v21, "Failed to create /data/misc/tima"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 800
    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 801
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v20, "TimaService"

    const-string v21, "Failed to change permissions of /data/misc/tima"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 812
    .end local v9    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 813
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 816
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_d
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/data/misc/tima/tima.log."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 819
    .local v17, "tima_log_file":Ljava/lang/String;
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/system/bin/tima_dump_log -s 20 -d 40 -o "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 825
    :goto_7
    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "chmod 640 "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 830
    :goto_8
    sget-boolean v20, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v20, :cond_e

    .line 831
    const-string v20, "TimaService"

    const-string v21, "displayEvent(): iBootCompleted==false"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 820
    :catch_5
    move-exception v9

    .line 821
    .local v9, "e":Ljava/io/IOException;
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to execute: /system/bin/tima_dump_log -s 20 -d 40 -o "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 826
    .end local v9    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v9

    .line 827
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to change permissions of "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 834
    .end local v9    # "e":Ljava/io/IOException;
    :cond_e
    const-string v20, "com.samsung.android.securitylogagent"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string v20, "TIMA_LOG_FILE"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.samsung.android.sm"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/TimaService;->isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 839
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v20, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 840
    .local v4, "TimaSmartManagerIntent":Landroid/content/Intent;
    const-string v20, "com.samsung.android.sm"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 843
    .end local v4    # "TimaSmartManagerIntent":Landroid/content/Intent;
    :cond_f
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v20, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .restart local v4    # "TimaSmartManagerIntent":Landroid/content/Intent;
    const-string v20, "com.android.settings"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized dumpLog()[B
    .locals 2

    .prologue
    .line 1059
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: timaDumpLog is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1059
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceID()[B
    .locals 2

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: getDeviceID"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-static {}, Lcom/android/server/TimaService;->timaGetDeviceID()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEventList(I)Ljava/util/List;
    .locals 1
    .param p1, "subject"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    sget-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public declared-synchronized getTimaVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 895
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: in getTimaVersion"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-static {}, Lcom/android/server/TimaService;->get_tima_Version()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTuiVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1383
    const-string v1, "TimaService"

    const-string v2, "TIMA3: get TUI version"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    const/4 v0, 0x0

    .line 1386
    .local v0, "ver":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1387
    invoke-virtual {p0}, Lcom/android/server/TimaService;->loadTui()I

    move-result v1

    if-nez v1, :cond_0

    .line 1388
    const-string v0, "3.0"

    .line 1389
    invoke-virtual {p0}, Lcom/android/server/TimaService;->unloadTui()I

    .line 1392
    :cond_0
    return-object v0
.end method

.method public handleLicenseStatus(IZ)V
    .locals 11
    .param p1, "notiTrigger"    # I
    .param p2, "licenseStatus"    # Z

    .prologue
    const/4 v10, 0x1

    .line 1657
    const-string v5, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleLicenseStatus - notiTrigger: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", licenseStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1661
    .local v6, "token":J
    const/4 v2, 0x0

    .line 1662
    .local v2, "kapState":Z
    packed-switch p1, :pswitch_data_0

    .line 1719
    :cond_0
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1724
    .end local v2    # "kapState":Z
    .end local v6    # "token":J
    :goto_1
    return-void

    .line 1664
    .restart local v2    # "kapState":Z
    .restart local v6    # "token":J
    :pswitch_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1665
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1666
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1668
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1669
    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, Lcom/android/server/TimaService;->setKapMode(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1720
    .end local v2    # "kapState":Z
    .end local v6    # "token":J
    :catch_0
    move-exception v1

    .line 1722
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleLicenseStatus exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1673
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "kapState":Z
    .restart local v6    # "token":J
    :pswitch_1
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1674
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1675
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    .line 1676
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1678
    invoke-direct {p0}, Lcom/android/server/TimaService;->getKapState()Z

    move-result v2

    .line 1679
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    goto :goto_0

    .line 1683
    :pswitch_2
    const-string/jumbo v5, "ro.build.date"

    const-string v8, "NONE"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1684
    .local v0, "currentBuild":Ljava/lang/String;
    const-string/jumbo v5, "persist.sys.kap.date"

    const-string v8, "NONE"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1686
    .local v4, "oldBuild":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 1687
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1688
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1691
    iget-boolean v5, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v5, :cond_3

    .line 1693
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1694
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1695
    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    .line 1697
    :cond_1
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    .line 1715
    :cond_2
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v10, :cond_0

    .line 1716
    const-string/jumbo v5, "persist.sys.kap.date"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1699
    :cond_3
    const-string/jumbo v5, "security.knox_kap_mode"

    const-string v8, "NONE"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1700
    .local v3, "kapStatus":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1701
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    goto :goto_2

    .line 1705
    .end local v3    # "kapStatus":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1706
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1707
    iget-boolean v5, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v5, :cond_5

    .line 1708
    invoke-direct {p0}, Lcom/android/server/TimaService;->getKapState()Z

    move-result v2

    .line 1709
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1710
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    .line 1713
    :cond_5
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1662
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isKapEnforced()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1731
    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKapEnforced - mIsLicenseActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iBootCompleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/TimaService;->iBootCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsBuildUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    iget-boolean v1, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    if-eqz v1, :cond_1

    .line 1741
    :cond_0
    :goto_0
    return v0

    .line 1737
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-eqz v1, :cond_0

    .line 1741
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized keystoreInit()I
    .locals 2

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: keystoreInit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    :cond_0
    invoke-static {}, Lcom/android/server/TimaService;->timaKeystoreInit()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 378
    :goto_0
    monitor-exit p0

    return v0

    .line 375
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 378
    :cond_2
    const/16 v0, 0x64

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keystoreInstallKey(I[B)I
    .locals 5
    .param p1, "ID"    # I
    .param p2, "key"    # [B

    .prologue
    const/16 v4, 0x20

    const/4 v1, -0x1

    .line 382
    monitor-enter p0

    :try_start_0
    const-string v2, "TimaService"

    const-string v3, "TIMA: keystoreInstallKey"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 384
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_2

    .line 386
    :cond_0
    const-string v2, "TimaService"

    const-string v3, "TIMA: Invalid key data"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 390
    :cond_2
    :try_start_1
    array-length v2, p2

    if-ge v4, v2, :cond_3

    .line 391
    const-string v2, "TimaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TIMA: Key length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") exceeds max key length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 397
    :cond_3
    const/16 v1, 0x20

    :try_start_2
    new-array v0, v1, [B

    .line 400
    .local v0, "keyBytes":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 402
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, p2

    invoke-static {p2, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 403
    invoke-static {p1, v0}, Lcom/android/server/TimaService;->timaKeystoreInstallKey(I[B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0

    .line 408
    .end local v0    # "keyBytes":[B
    :cond_4
    const/16 v1, 0x64

    goto :goto_0
.end method

.method public declared-synchronized keystoreRetrieveKey(I)[B
    .locals 3
    .param p1, "ID"    # I

    .prologue
    const/4 v0, 0x0

    .line 448
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA: keystoreRetrieveKey"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    :cond_0
    invoke-static {p1}, Lcom/android/server/TimaService;->timaKeystoreRetrieveKey(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 457
    :cond_1
    monitor-exit p0

    return-object v0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keystoreShutdown()I
    .locals 2

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: keystoreShutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    :cond_0
    invoke-static {}, Lcom/android/server/TimaService;->timaKeystoreShutdown()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 469
    :goto_0
    monitor-exit p0

    return v0

    .line 466
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 469
    :cond_2
    const/16 v0, 0x64

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized launchTui(Ljava/lang/String;[BZI)[B
    .locals 3
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "nonce"    # [B
    .param p3, "verify"    # Z
    .param p4, "min_pin_length"    # I

    .prologue
    const/4 v0, 0x0

    .line 1086
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: launch TUI"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1089
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1090
    :cond_0
    const-string v1, "TimaService"

    const-string v2, "Null pointer received!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1093
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0, p2, p3, p4}, Lcom/android/server/TimaService;->timaLaunchTui(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1086
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized launchTuiWithSecretId(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    .locals 3
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "secret_id"    # Ljava/lang/String;
    .param p3, "nonce"    # [B
    .param p4, "verify"    # Z
    .param p5, "min_pin_length"    # I

    .prologue
    const/4 v0, 0x0

    .line 1100
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: launch TUI"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1103
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 1104
    :cond_0
    const-string v1, "TimaService"

    const-string v2, "Null pointer received!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1107
    :cond_2
    :try_start_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/TimaService;->timaLaunchTui(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadTlcServer(Ljava/lang/String;)I
    .locals 8
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1014
    monitor-enter p0

    const/4 v0, 0x0

    .line 1015
    .local v0, "START_IN_HERE":Z
    :try_start_0
    const-string v5, "TimaService"

    const-string v6, "TIMA3: in loadTlcServer"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1019
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1020
    .local v2, "tlcBinder":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 1021
    const-string v5, "TimaService"

    const-string v6, "TIMA3: tlc_server already loaded"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    .end local v2    # "tlcBinder":Landroid/os/IBinder;
    :goto_0
    monitor-exit p0

    return v4

    .line 1026
    .restart local v2    # "tlcBinder":Landroid/os/IBinder;
    :cond_0
    if-eqz v0, :cond_1

    .line 1029
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/bin/tlc_server "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1030
    .local v3, "tlcProcess":Ljava/lang/Process;
    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start tlc_server for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " done"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1031
    .end local v3    # "tlcProcess":Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 1032
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1014
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "tlcBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1035
    .restart local v2    # "tlcBinder":Landroid/os/IBinder;
    :cond_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persist.security.tlc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start tlc_server for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " done : setprop"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1041
    .end local v2    # "tlcBinder":Landroid/os/IBinder;
    :cond_2
    const/4 v4, -0x1

    goto/16 :goto_0
.end method

.method public declared-synchronized loadTui()I
    .locals 2

    .prologue
    .line 1064
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA3: load TUI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    const-string v0, "TimaService"

    const-string v1, "Really start to load"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-static {}, Lcom/android/server/TimaService;->timaLoadTui()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1070
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1064
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setISLCallback(Landroid/service/tima/ITimaISLCallback;)V
    .locals 2
    .param p1, "timaISLClbk"    # Landroid/service/tima/ITimaISLCallback;

    .prologue
    .line 887
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: setISLCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iput-object p1, p0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    monitor-exit p0

    return-void

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setKapMode(ZZ)V
    .locals 6
    .param p1, "isEnabled"    # Z
    .param p2, "notifyKapState"    # Z

    .prologue
    .line 1745
    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1748
    :try_start_0
    const-string v1, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKapMode - isEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", notifyKapState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1753
    .local v2, "token":J
    if-eqz p1, :cond_2

    .line 1754
    const-string/jumbo v1, "security.knox_kap_mode"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    :goto_0
    if-nez p2, :cond_0

    .line 1767
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    :cond_0
    if-eqz p2, :cond_1

    .line 1772
    invoke-direct {p0, p1, p2}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1775
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1783
    .end local v2    # "token":J
    :goto_1
    return-void

    .line 1757
    .restart local v2    # "token":J
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1758
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    :goto_2
    const-string/jumbo v1, "security.knox_kap_mode"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1776
    .end local v2    # "token":J
    :catch_0
    move-exception v0

    .line 1778
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKapMode exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1761
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "token":J
    :cond_3
    :try_start_1
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1781
    .end local v2    # "token":J
    :cond_4
    const-string v1, "TimaService"

    const-string v4, "No Permission : setKapMode"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized tuiDecryptPinHash(Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "buffer"    # [B

    .prologue
    const/4 v1, 0x0

    .line 1476
    monitor-enter p0

    :try_start_0
    const-string v2, "TimaService"

    const-string v3, "TIMA3: TUI decrypt PIN hash"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1479
    invoke-virtual {p0, p2}, Lcom/android/server/TimaService;->verifyCertChain([B)[B

    move-result-object v0

    .line 1480
    .local v0, "verified":[B
    if-nez v0, :cond_1

    .line 1481
    const-string v2, "TimaService"

    const-string v3, "Certificate chain verification failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    .end local v0    # "verified":[B
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1484
    .restart local v0    # "verified":[B
    :cond_1
    :try_start_1
    invoke-static {p1, v0}, Lcom/android/server/TimaService;->timaTuiDecryptPinHash(Ljava/lang/String;[B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1476
    .end local v0    # "verified":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized tuiGetCerts()[B
    .locals 2

    .prologue
    .line 1446
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA3: TUI Get Certs"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    invoke-static {}, Lcom/android/server/TimaService;->timaTuiGetCerts()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1450
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tuiGetSecretDimension()[I
    .locals 2

    .prologue
    .line 1467
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA3: TUI get secret dimension"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1470
    invoke-static {}, Lcom/android/server/TimaService;->timaTuiGetSecretDimension()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1472
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tuiInitSecret([BIILjava/lang/String;)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "secret_id"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 1126
    monitor-enter p0

    :try_start_0
    const-string v2, "TimaService"

    const-string v3, "TIMA3: TUI init secret"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1129
    invoke-virtual {p0, p1}, Lcom/android/server/TimaService;->verifyCertChain([B)[B

    move-result-object v0

    .line 1130
    .local v0, "verified":[B
    if-nez v0, :cond_1

    .line 1131
    const-string v2, "TimaService"

    const-string v3, "Certificate chain verification failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    .end local v0    # "verified":[B
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1134
    .restart local v0    # "verified":[B
    :cond_1
    :try_start_1
    invoke-static {v0, p2, p3, p4}, Lcom/android/server/TimaService;->timaTuiInitSecret([BIILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1126
    .end local v0    # "verified":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized tuiInitSecretFile(Ljava/lang/String;IILjava/lang/String;)I
    .locals 18
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "secret_id"    # Ljava/lang/String;

    .prologue
    .line 1140
    monitor-enter p0

    :try_start_0
    const-string v13, "TimaService"

    const-string v14, "TIMA3: TUI init secret file"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const/4 v11, -0x1

    .line 1143
    .local v11, "ret":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-eqz v13, :cond_0

    .line 1144
    const/4 v9, 0x0

    .line 1145
    .local v9, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1147
    .local v4, "dis":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1148
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_1

    .line 1149
    const-string v13, "TimaService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot open secret file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1166
    :goto_0
    :try_start_2
    invoke-static {v4}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1167
    invoke-static {v9}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1171
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    monitor-exit p0

    return v11

    .line 1151
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v13, v14

    new-array v8, v13, [B

    .line 1152
    .local v8, "fileData":[B
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1153
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1154
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .local v5, "dis":Ljava/io/DataInputStream;
    :try_start_5
    invoke-virtual {v5, v8}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1156
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/TimaService;->verifyCertChain([B)[B

    move-result-object v12

    .line 1157
    .local v12, "verified":[B
    if-nez v12, :cond_2

    .line 1158
    const-string v13, "TimaService"

    const-string v14, "Certificate chain verification failed!"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 1160
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :cond_2
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v12, v0, v1, v2}, Lcom/android/server/TimaService;->timaTuiInitSecret([BIILjava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result v11

    move-object v4, v5

    .end local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 1163
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileData":[B
    .end local v12    # "verified":[B
    :catch_0
    move-exception v6

    .line 1164
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    const-string v13, "TimaService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1166
    :try_start_7
    invoke-static {v4}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1167
    invoke-static {v9}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 1140
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "ret":I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 1166
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "ret":I
    :catchall_1
    move-exception v13

    :goto_3
    :try_start_8
    invoke-static {v4}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1167
    invoke-static {v9}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1166
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fileData":[B
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v13

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v13

    move-object v4, v5

    .end local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1163
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public declared-synchronized tuiInitSecretMemoryFile(Landroid/os/ParcelFileDescriptor;IIILjava/lang/String;)I
    .locals 15
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "secret_id"    # Ljava/lang/String;

    .prologue
    .line 1175
    monitor-enter p0

    :try_start_0
    const-string v12, "TimaService"

    const-string v13, "TIMA3: TUI init secret via memory file"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v10, -0x1

    .line 1179
    .local v10, "ret":I
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v12

    const-string v13, "3.0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1180
    if-nez p1, :cond_0

    .line 1181
    const-string v12, "TimaService"

    const-string v13, "PFD is null!"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    const/4 v12, -0x1

    .line 1213
    :goto_0
    monitor-exit p0

    return v12

    .line 1184
    :cond_0
    if-gtz p2, :cond_1

    .line 1185
    :try_start_1
    const-string v12, "TimaService"

    const-string v13, "Memory file size is invalid"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    const/4 v12, -0x1

    goto :goto_0

    .line 1188
    :cond_1
    const/4 v7, 0x0

    .line 1189
    .local v7, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 1191
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1192
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1193
    .end local v7    # "in":Ljava/io/InputStream;
    .local v8, "in":Ljava/io/InputStream;
    :try_start_4
    move/from16 v0, p2

    new-array v9, v0, [B

    .line 1194
    .local v9, "result":[B
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {v8, v9, v12, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1195
    .local v3, "bytes":I
    move/from16 v0, p2

    if-eq v3, v0, :cond_3

    .line 1196
    const-string v12, "TimaService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read error from Secret image memory file! read "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " != size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1197
    const/4 v10, -0x1

    .line 1209
    :goto_1
    :try_start_5
    invoke-static {v8}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1210
    invoke-static {v6}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v3    # "bytes":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "result":[B
    :cond_2
    :goto_2
    move v12, v10

    .line 1213
    goto :goto_0

    .line 1199
    .restart local v3    # "bytes":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "result":[B
    :cond_3
    :try_start_6
    invoke-virtual {p0, v9}, Lcom/android/server/TimaService;->verifyCertChain([B)[B

    move-result-object v11

    .line 1200
    .local v11, "verified":[B
    if-nez v11, :cond_4

    .line 1201
    const-string v12, "TimaService"

    const-string v13, "Certificate chain verification failed!"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    .line 1206
    .end local v3    # "bytes":I
    .end local v9    # "result":[B
    .end local v11    # "verified":[B
    :catch_0
    move-exception v4

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 1207
    .end local v8    # "in":Ljava/io/InputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v7    # "in":Ljava/io/InputStream;
    :goto_3
    :try_start_7
    const-string v12, "TimaService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception occurred: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1209
    :try_start_8
    invoke-static {v7}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1210
    invoke-static {v5}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 1175
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v10    # "ret":I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 1203
    .restart local v3    # "bytes":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "result":[B
    .restart local v10    # "ret":I
    .restart local v11    # "verified":[B
    :cond_4
    :try_start_9
    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v11, v0, v1, v2}, Lcom/android/server/TimaService;->timaTuiInitSecret([BIILjava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v10

    goto :goto_1

    .line 1209
    .end local v3    # "bytes":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "result":[B
    .end local v11    # "verified":[B
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v12

    :goto_4
    :try_start_a
    invoke-static {v7}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1210
    invoke-static {v5}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    throw v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1209
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v12

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    :catchall_3
    move-exception v12

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 1206
    :catch_1
    move-exception v4

    goto :goto_3

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public declared-synchronized tuiRegAppImage(Ljava/lang/String;[B)[I
    .locals 3
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "png_buffer"    # [B

    .prologue
    const/4 v0, 0x0

    .line 1396
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: TUI Register App Image"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1398
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1399
    :cond_0
    const-string v1, "TimaService"

    const-string v2, "Null pointer received!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1404
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1402
    :cond_2
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->timaTuiRegAppImage(Ljava/lang/String;[B)[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tuiRegAppImageFile(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 12
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "png_file"    # Ljava/lang/String;

    .prologue
    .line 1409
    monitor-enter p0

    :try_start_0
    const-string v8, "TimaService"

    const-string v9, "TIMA3: TUI Register App Image File"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const/4 v7, 0x0

    .line 1413
    .local v7, "ret":[I
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1414
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1415
    :cond_0
    const-string v8, "TimaService"

    const-string v9, "Null string received in tuiRegAppImageFile!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    const/4 v8, 0x0

    .line 1441
    :goto_0
    monitor-exit p0

    return-object v8

    .line 1419
    :cond_1
    const/4 v5, 0x0

    .line 1420
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 1422
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1423
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 1424
    const-string v8, "TimaService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot open App image file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1436
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1437
    invoke-static {v5}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    move-object v8, v7

    .line 1441
    goto :goto_0

    .line 1426
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v4, v8, [B

    .line 1427
    .local v4, "fileData":[B
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1428
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1429
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_5
    invoke-virtual {v1, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1431
    invoke-static {p1, v4}, Lcom/android/server/TimaService;->timaTuiRegAppImage(Ljava/lang/String;[B)[I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v7

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 1433
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileData":[B
    :catch_0
    move-exception v2

    .line 1434
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v8, "TimaService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1436
    :try_start_7
    invoke-static {v0}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1437
    invoke-static {v5}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1409
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ret":[I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1436
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "ret":[I
    :catchall_1
    move-exception v8

    :goto_4
    :try_start_8
    invoke-static {v0}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1437
    invoke-static {v5}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1436
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileData":[B
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v8

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1433
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public declared-synchronized unloadTui()I
    .locals 2

    .prologue
    .line 1075
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA3: unload TUI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    invoke-static {}, Lcom/android/server/TimaService;->timaUnloadTui()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1080
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1075
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized verifyCertChain([B)[B
    .locals 23
    .param p1, "buffer"    # [B

    .prologue
    .line 1218
    monitor-enter p0

    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v2, 0x0

    .local v2, "aes_len":I
    const/4 v10, 0x0

    .local v10, "img_len":I
    const/16 v16, 0x0

    .local v16, "sig_len":I
    const/4 v6, 0x0

    .local v6, "cert_len":I
    const/4 v11, 0x0

    .line 1220
    .local v11, "len_without_cert":I
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    .local v4, "cert_array":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x16

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 1223
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Secret image buffer is too small: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    const/16 p1, 0x0

    .line 1338
    .end local p1    # "buffer":[B
    :goto_0
    monitor-exit p0

    return-object p1

    .line 1227
    .restart local p1    # "buffer":[B
    :cond_0
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    :try_start_1
    aget-byte v20, p1, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v2, v20, 0x8

    .line 1228
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_2
    aget-byte v20, p1, v9

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v2, v2, v20

    .line 1230
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Encrypted AES key length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    add-int/lit8 v8, v2, 0x2

    .line 1234
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_1

    .line 1235
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Encrypted AES key is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/16 p1, 0x0

    goto :goto_0

    .line 1239
    :cond_1
    add-int/lit8 v8, v8, 0x10

    .line 1240
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_2

    .line 1241
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IV is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1242
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 1245
    :cond_2
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :try_start_3
    aget-byte v20, p1, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v10, v20, 0x18

    .line 1246
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_4
    aget-byte v20, p1, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    add-int v10, v10, v20

    .line 1247
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :try_start_5
    aget-byte v20, p1, v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    add-int v10, v10, v20

    .line 1248
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_6
    aget-byte v20, p1, v9

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v10, v10, v20

    .line 1250
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Encrypted image length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    add-int/2addr v8, v10

    .line 1254
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_3

    .line 1255
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Encrypted image is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 1259
    :cond_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v8, v0, :cond_4

    .line 1260
    const-string v20, "TimaService"

    const-string v21, "No signature is included in secret image buffer, skip signature verification"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1218
    .end local v4    # "cert_array":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catchall_0
    move-exception v20

    :goto_1
    monitor-exit p0

    throw v20

    .line 1264
    .restart local v4    # "cert_array":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_4
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :try_start_7
    aget-byte v20, p1, v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v16, v20, 0x8

    .line 1265
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_8
    aget-byte v20, p1, v9

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v16, v16, v20

    .line 1267
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Signature length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    add-int v8, v8, v16

    .line 1270
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v8, v0, :cond_5

    .line 1271
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Signature is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1272
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 1275
    :cond_5
    move v11, v8

    move v9, v8

    .line 1278
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :goto_2
    :try_start_9
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move/from16 v0, v20

    if-ge v9, v0, :cond_7

    .line 1279
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_a
    aget-byte v20, p1, v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v6, v20, 0x8

    .line 1280
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :try_start_b
    aget-byte v20, p1, v8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v6, v6, v20

    .line 1281
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Certificate length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    add-int v20, v9, v6

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    .line 1283
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Certificate is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1284
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 1289
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :cond_6
    :try_start_c
    const-string v20, "X509"

    invoke-static/range {v20 .. v20}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v20

    new-instance v21, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual/range {v20 .. v21}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 1292
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1299
    add-int v8, v9, v6

    .end local v9    # "i":I
    .restart local v8    # "i":I
    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_2

    .line 1294
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v7

    .line 1295
    .local v7, "e":Ljava/lang/Exception;
    :try_start_d
    const-string v20, "TimaService"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1296
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 1304
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :cond_7
    :try_start_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    .line 1305
    .local v5, "cert_chain":[Ljava/security/cert/X509Certificate;
    const-string v20, "X509"

    invoke-static/range {v20 .. v20}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v17

    .line 1306
    .local v17, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/16 v20, 0x0

    check-cast v20, Ljava/security/KeyStore;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1307
    invoke-virtual/range {v17 .. v17}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v18

    .line 1308
    .local v18, "tms":[Ljavax/net/ssl/TrustManager;
    const/16 v20, 0x0

    aget-object v19, v18, v20

    check-cast v19, Ljavax/net/ssl/X509TrustManager;

    .line 1309
    .local v19, "xtm":Ljavax/net/ssl/X509TrustManager;
    const-string v20, "RSA"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v5, v1}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 1310
    const-string v20, "TimaService"

    const-string v21, "Certificate chain is verified successfully"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    array-length v0, v5

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v20, v5, v20

    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    check-cast v12, Ljava/security/interfaces/RSAPublicKey;

    .line 1314
    .local v12, "pubkey":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v13

    .line 1315
    .local v13, "pubkey_encoded":[B
    new-instance v15, Lorg/apache/http/util/ByteArrayBuffer;

    add-int/lit8 v20, v11, 0x2

    array-length v0, v13

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 1316
    .local v15, "rb":Lorg/apache/http/util/ByteArrayBuffer;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1, v11}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 1317
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [B

    .line 1318
    .local v14, "pubkey_len":[B
    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v21, v0

    shr-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v14, v20

    .line 1319
    const/16 v20, 0x1

    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v14, v20

    .line 1321
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "pubkey: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v22, v14, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-byte v22, v14, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v14, v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 1324
    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v13, v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 1326
    invoke-virtual {v15}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object p1

    .end local p1    # "buffer":[B
    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 1329
    .end local v5    # "cert_chain":[Ljava/security/cert/X509Certificate;
    .end local v8    # "i":I
    .end local v12    # "pubkey":Ljava/security/interfaces/RSAPublicKey;
    .end local v13    # "pubkey_encoded":[B
    .end local v14    # "pubkey_len":[B
    .end local v15    # "rb":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v17    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v18    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v19    # "xtm":Ljavax/net/ssl/X509TrustManager;
    .restart local v9    # "i":I
    .restart local p1    # "buffer":[B
    :catch_1
    move-exception v7

    .line 1330
    .local v7, "e":Ljava/security/cert/CertificateException;
    :try_start_f
    const-string v20, "TimaService"

    const-string v21, "Certificate chain cannot be verify!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 1332
    .end local v7    # "e":Ljava/security/cert/CertificateException;
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :catch_2
    move-exception v7

    .line 1333
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v20, "TimaService"

    const-string v21, "Certificate chain error!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 1335
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :catch_3
    move-exception v7

    .line 1336
    .local v7, "e":Ljava/lang/Exception;
    const-string v20, "TimaService"

    const-string v21, "Some other error happened"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    const-string v20, "TimaService"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1338
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 1218
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :catchall_1
    move-exception v20

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_1
.end method
