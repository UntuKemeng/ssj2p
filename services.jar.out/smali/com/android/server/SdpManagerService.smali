.class public Lcom/android/server/SdpManagerService;
.super Lcom/sec/sdp/ISdpManagerService$Stub;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$1;,
        Lcom/android/server/SdpManagerService$EngineMonitor;,
        Lcom/android/server/SdpManagerService$SdpHandler;,
        Lcom/android/server/SdpManagerService$SecureFileSystemManager;,
        Lcom/android/server/SdpManagerService$ActionReceiver;,
        Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;,
        Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    }
.end annotation


# static fields
.field private static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field private static final CMK_DEBUG:Z = false

.field private static final DEFAULT_USER_ENGINE_ID:I = 0x0

.field private static final DEVICE_SUPPORT_KNOX:Z

.field private static final ENABLE_ENGINE_MONITOR:Z = false

.field public static final INTENT_SDP_STATE_CHANGED:Ljava/lang/String; = "com.sec.sdp.SDP_STATE_CHANGED"

.field public static final KEK_LEN:I = 0x20

.field private static final KEYMGNT_DEBUG:Z = false

.field private static final KNOX_SENS_COLUMNS:Ljava/lang/String; = "/system/etc/knox_sensitive_columns.xml"

.field private static final MAX_FAILURE_COUNT:I = 0xa

.field private static final MSG_LOCK:I = 0x2

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final MSG_UNLOCK:I = 0x3

.field public static final SDK_CURRENT_VERSION:D = 1.1

.field public static final SDK_NOT_SUPPORTED:D = 0.0

.field public static final SDK_VERSION_1_0:D = 1.0

.field public static final SDK_VERSION_1_1:D = 1.1

.field public static final SDPK_PWD_LEN:I = 0x20

.field public static final SDP_ACTIVE:I = 0x1

.field public static final SDP_BOOTED:I = 0x1

.field public static final SDP_ID:Ljava/lang/String; = "id"

.field public static final SDP_INACTIVE:I = 0x2

.field public static final SDP_LATEST_VERSION:I = 0x5

.field public static final SDP_STATE:Ljava/lang/String; = "state"

.field public static final SDP_VERSION_1:I = 0x1

.field public static final SDP_VERSION_2:I = 0x2

.field public static final SDP_VERSION_3:I = 0x3

.field public static final SDP_VERSION_4:I = 0x4

.field public static final SDP_VERSION_5:I = 0x5

.field public static final SDP_VERSION_DISABLED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SdpManagerService"

.field private static mFailureCount:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;


# instance fields
.field private bootComplete:Z

.field private handlerThread:Landroid/os/HandlerThread;

.field private final mBinderListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCMKMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

.field private mEnginState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineMonitor:Lcom/android/server/SdpManagerService$EngineMonitor;

.field private mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mPolicyManager:Lcom/android/server/SdpPolicyManager;

.field private mResetPwdKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

.field private final mSdpEngineDbLock:Ljava/lang/Object;

.field private mSdpEngineMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

.field private mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

.field private mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

.field mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private mUM:Landroid/os/UserManager;

.field private mWaitForPassword:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    .line 263
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    .line 277
    invoke-static {}, Landroid/os/PersonaManager;->isKnoxSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 267
    invoke-direct {p0}, Lcom/sec/sdp/ISdpManagerService$Stub;-><init>()V

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mStateMap:Ljava/util/HashMap;

    .line 160
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mPolicyManager:Lcom/android/server/SdpPolicyManager;

    .line 178
    iput-boolean v2, p0, Lcom/android/server/SdpManagerService;->mWaitForPassword:Z

    .line 183
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    .line 184
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    .line 185
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .line 239
    iput-boolean v2, p0, Lcom/android/server/SdpManagerService;->bootComplete:Z

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mEnginState:Ljava/util/Map;

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    .line 245
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 246
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 248
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .line 249
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    .line 250
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mEngineMonitor:Lcom/android/server/SdpManagerService$EngineMonitor;

    .line 253
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    .line 254
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 2631
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    .line 268
    sput-object p1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    .line 269
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SdpManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 271
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 272
    new-instance v0, Lcom/android/server/SdpManagerService$SdpHandler;

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpManagerService$SdpHandler;-><init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    .line 273
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    .line 274
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/SdpManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/SdpManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleUserAdded(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/SdpManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleUserRemoved(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/SdpManagerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->handlePkgRemoved(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpServiceKeeper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpServiceKeeper;)Lcom/android/server/SdpServiceKeeper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/server/SdpServiceKeeper;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    return-object p1
.end method

.method static synthetic access$2900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/SdpManagerService;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/SdpManagerService;)Lcom/android/server/pm/TimaHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/SdpManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/TimaHelper;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/SdpManagerService;Lcom/sec/knox/container/util/EnterprisePartitionManager;)Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/SdpManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isKnoxEngine(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/SdpManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootInternal(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .param p5, "x5"    # [B

    .prologue
    .line 151
    invoke-direct/range {p0 .. p5}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/SdpManagerService;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # [B

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/SdpManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/SdpManagerService;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method private addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "param"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .param p5, "cmk"    # [B

    .prologue
    .line 889
    const/4 v5, 0x0

    .line 891
    .local v5, "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    if-nez p4, :cond_1

    .line 893
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .restart local v5    # "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    :goto_0
    if-eqz p5, :cond_2

    .line 906
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, Lcom/android/server/SdpManagerService;->addEngineNative(II[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 907
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error to handle addEngineNative ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/16 v6, -0xc

    .line 929
    :goto_1
    return v6

    .line 896
    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEngineInternalLocked :: custom engine requires creation parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/16 v6, -0xb

    goto :goto_1

    .line 902
    :cond_1
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_0

    .line 911
    :cond_2
    const-string v0, "SdpManagerService"

    const-string v1, "No cmk for adding engine. :: this must be migration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_3
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    move v2, p2

    move v3, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->addPolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/util/List;)I

    move-result v6

    .line 917
    .local v6, "ret":I
    if-nez v6, :cond_4

    .line 918
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setState(I)V

    .line 919
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 921
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 922
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 923
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engine added! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 926
    :cond_4
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEngineInternalLocked :: failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private assignEngineId(Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1051
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->extractAndroidDefaultUserId(Ljava/lang/String;)I

    move-result v1

    .line 1053
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 1054
    const/16 v0, 0x3e8

    .line 1055
    .local v0, "candidateId":I
    const-string v2, "SdpManagerService"

    const-string v3, "custom engine. assign custom engine id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1057
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1058
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1059
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "custom engine : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id assigned. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    .end local v0    # "candidateId":I
    :goto_1
    return v0

    .line 1059
    .restart local v0    # "candidateId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .end local v0    # "candidateId":I
    :cond_1
    move v0, v1

    .line 1064
    goto :goto_1
.end method

.method private bootInternal(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1111
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootNative(I)I

    move-result v0

    return v0
.end method

.method private bootNative(I)I
    .locals 12
    .param p1, "id"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 2457
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2458
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 2465
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2466
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2467
    if-eqz v0, :cond_0

    .line 2468
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2469
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2470
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 2472
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2475
    :cond_1
    if-nez v0, :cond_4

    .line 2483
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2484
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not knox container! boot failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    const/16 v8, -0xb

    .line 2542
    :goto_0
    return v8

    .line 2472
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2488
    :cond_2
    const-string v2, "SdpManagerService"

    const-string v3, "Migration from SDP v1(TMR)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 2490
    .local v1, "alias":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 2491
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootInternal :: migration attempt failed. unknown userid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    const/16 v8, -0xa

    goto :goto_0

    .line 2495
    :cond_3
    const-string v2, "SdpManagerService"

    const-string v3, "bootInternal :: SDP user is there but no SdpEngineInfo. This must be SDP v1 -> v1.1 migration"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    move v2, p1

    move v3, p1

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 2507
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2509
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v8

    .line 2511
    .local v8, "ret":I
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2513
    if-eqz v8, :cond_4

    .line 2514
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create engine info/creation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2511
    .end local v8    # "ret":I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 2519
    .end local v1    # "alias":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/SdpManagerService;->nativeOnBoot(II)I

    move-result v2

    if-eqz v2, :cond_5

    .line 2520
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootNative :: failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    const/16 v8, -0xc

    goto/16 :goto_0

    .line 2524
    :cond_5
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2525
    const/4 v2, 0x1

    :try_start_4
    invoke-direct {p0, v0, v2}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2526
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2528
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getVersion()I

    move-result v2

    if-eq v2, v11, :cond_6

    .line 2529
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootInternal :: upgrade detected. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] -> ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    invoke-direct {p0, v0, v10}, Lcom/android/server/SdpManagerService;->onMigrationInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;[B)I

    move-result v2

    const/16 v3, -0xd

    if-ne v2, v3, :cond_6

    .line 2533
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2534
    const/4 v2, 0x1

    :try_start_5
    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setIsMigrating(Z)V

    .line 2535
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2536
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2537
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2538
    const/4 v8, -0x4

    goto/16 :goto_0

    .line 2526
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 2537
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2

    .line 2542
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private cacheMasterKey(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "cmk"    # Ljava/lang/String;

    .prologue
    .line 1692
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheMasterKey :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    :cond_0
    return-void
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 282
    const-string v1, "SdpManagerService"

    .line 283
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 284
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

    .line 287
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 289
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private clearCachedMasterKey(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1672
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1673
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1675
    .local v0, "cmk":Ljava/lang/String;
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearCachedMasterKey (CMK) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1677
    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    .end local v0    # "cmk":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private clearFailureCount(I)V
    .locals 1
    .param p1, "engineId"    # I

    .prologue
    .line 325
    sget-object v0, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 326
    return-void
.end method

.method private clearResetPasswordKey(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1682
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1683
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1685
    .local v0, "resetPwdKey":Ljava/lang/String;
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearResetPasswordKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1687
    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    .end local v0    # "resetPwdKey":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "resetToken"    # Ljava/lang/String;

    .prologue
    .line 933
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 1024
    :goto_0
    return-object v1

    .line 935
    :cond_0
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onUserAdded :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/users/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 938
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 939
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 940
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "baseDir exists but not a directory! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v1, 0x0

    goto :goto_0

    .line 944
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-nez v6, :cond_2

    .line 945
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t create directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 950
    :cond_2
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 951
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6}, Lcom/sec/knox/container/util/KeyManagementUtil;->generatePasswordResetToken()Ljava/lang/String;

    move-result-object p3

    .line 952
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 954
    .local v3, "entry":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 955
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getResetTokenTimaAlias()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v6

    if-nez v6, :cond_3

    .line 956
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error in addEngine failed to store resetToken "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 960
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 962
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 963
    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 971
    .end local v3    # "entry":[B
    .end local v4    # "token":J
    :cond_4
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 975
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 976
    :cond_5
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "no password given. #1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateCMK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "cmk":Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_8

    .line 983
    const-string v6, "SdpManagerService"

    const-string v7, "can\'t generate CMK"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 965
    .end local v1    # "cmk":Ljava/lang/String;
    :cond_6
    if-nez p3, :cond_4

    .line 966
    const-string v6, "SdpManagerService"

    const-string v7, "can\'t create keys for MDPFF SDP without RST_TOKEN"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 979
    :cond_7
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateCMK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cmk":Ljava/lang/String;
    goto :goto_1

    .line 987
    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 988
    :cond_9
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "no password given. #2"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_a
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v1, p3, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 997
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "storeCMK(RST_TOKEN) failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 990
    :cond_b
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v1, p2, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 991
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "storeCMK(PW) failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1002
    .end local v1    # "cmk":Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateAndStoreCMK(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1007
    :cond_d
    const/4 v2, 0x0

    .line 1008
    .local v2, "encodedCmk":Ljava/lang/String;
    if-nez p2, :cond_e

    .line 1009
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x2

    const/16 v9, 0x20

    invoke-virtual {v6, v7, p3, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 1016
    :goto_2
    if-nez v2, :cond_f

    .line 1017
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "internal error!, can\'t retrieve CMK"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1012
    :cond_e
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x1

    const/16 v9, 0x20

    invoke-virtual {v6, v7, p2, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1021
    :cond_f
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 1022
    .local v1, "cmk":[B
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private deleteTokenInternal(ILjava/lang/String;)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 3850
    const/4 v0, 0x0

    .line 3851
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3852
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/TimaHelper;->checkEntry(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3853
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    .line 3854
    const/4 v0, 0x1

    .line 3856
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3857
    return v0
.end method

.method private dumpCache()V
    .locals 0

    .prologue
    .line 1708
    return-void
.end method

.method private enrollInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    .line 3968
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    .line 3969
    .local v1, "engineId":I
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 3971
    const/4 v3, -0x5

    .line 4000
    :goto_0
    return v3

    .line 3973
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3974
    const/4 v3, -0x2

    goto :goto_0

    .line 3976
    :cond_1
    const/4 v0, 0x0

    .line 3977
    .local v0, "cmk":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3978
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cmk":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 3979
    .restart local v0    # "cmk":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4, v1, v0, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3980
    const/4 v3, 0x0

    goto :goto_0

    .line 3982
    :cond_2
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3983
    const/4 v3, -0x1

    .line 3984
    .local v3, "ret":I
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v2

    .line 3986
    .local v2, "resetToken":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 3987
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v5, 0x20

    invoke-virtual {v4, v1, v2, v6, v5}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 3989
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4, v1, v0, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3991
    const/4 v3, 0x0

    .line 3994
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 3995
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    goto :goto_0

    .line 3998
    .end local v2    # "resetToken":Ljava/lang/String;
    .end local v3    # "ret":I
    :cond_4
    const-string v4, "SdpManagerService"

    const-string v5, "enrollInternal :: Master key is not found in the map"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    :cond_5
    const/16 v3, -0x63

    goto :goto_0
.end method

.method private getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1592
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 1594
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_0

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "engine map doesn\'t have engine info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :cond_0
    return-object v0
.end method

.method private getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1562
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1563
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1564
    .local v5, "userId":I
    invoke-static {v5}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isAndroidDefaultUser(I)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v1, v6

    .line 1588
    .end local v5    # "userId":I
    :cond_1
    :goto_0
    return-object v1

    .line 1567
    .restart local v5    # "userId":I
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1568
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v1, v6

    .line 1569
    goto :goto_0

    .line 1571
    :cond_3
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v2, 0x1

    .line 1573
    .local v2, "isMP":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 1574
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->getManagedProfileAlias(I)Ljava/lang/String;

    move-result-object p1

    .line 1580
    .end local v2    # "isMP":Z
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    :cond_4
    :goto_2
    if-eqz p1, :cond_7

    .line 1581
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "nsize":I
    :goto_3
    if-ge v0, v3, :cond_7

    .line 1582
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 1584
    .local v1, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1581
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1571
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v3    # "nsize":I
    .restart local v4    # "ui":Landroid/content/pm/UserInfo;
    .restart local v5    # "userId":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 1576
    .restart local v2    # "isMP":Z
    :cond_6
    invoke-static {v5}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .end local v2    # "isMP":Z
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    :cond_7
    move-object v1, v6

    .line 1588
    goto :goto_0
.end method

.method private getFailureCount(I)I
    .locals 2
    .param p1, "engineId"    # I

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "ret":I
    sget-object v1, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 314
    sget-object v1, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 316
    :cond_0
    return v0
.end method

.method private getManagedProfileAlias(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1549
    const/4 v1, 0x0

    .line 1550
    .local v1, "ret":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1551
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 1552
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 1554
    :cond_0
    return-object v1
.end method

.method private getPadded([BI)[B
    .locals 3
    .param p1, "pw"    # [B
    .param p2, "totalLen"    # I

    .prologue
    const/4 v2, 0x0

    .line 346
    new-array v0, p2, [B

    .line 347
    .local v0, "padded":[B
    invoke-static {v0, v2, p2, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 349
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 351
    return-object v0
.end method

.method private getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1537
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1538
    .local v0, "identity":J
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1540
    .local v2, "pi":Landroid/content/pm/UserInfo;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1541
    return-object v2

    .line 1538
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1334
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1347
    :goto_0
    return-object v1

    .line 1335
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1336
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getResetTokenTimaAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v0

    .line 1338
    .local v0, "entry":[B
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    const/4 v1, 0x0

    .line 1340
    .local v1, "resetToken":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1341
    new-instance v1, Ljava/lang/String;

    .end local v1    # "resetToken":Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1342
    .restart local v1    # "resetToken":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    goto :goto_0

    .line 1344
    :cond_2
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRstTokenFromTima :: entry not found. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1529
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1530
    .local v0, "identity":J
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1532
    .local v2, "ui":Landroid/content/pm/UserInfo;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1533
    return-object v2

    .line 1530
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handlePkgRemoved(ILjava/lang/String;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3205
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->removePkgDir(ILjava/lang/String;)Z
    invoke-static {v6, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$2000(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z

    .line 3208
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3209
    :try_start_0
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineListLocked()Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$2100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;

    move-result-object v0

    .line 3211
    .local v0, "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 3212
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 3213
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3215
    .local v3, "id":I
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-static {v6, v3}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v4

    .line 3217
    .local v4, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3218
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FOUND PACKAGE handlePkgRemoved :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/system/users/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3221
    .local v1, "file":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v8, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v6, v8, v9, v10, v4}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v5

    .line 3222
    .local v5, "ret":I
    if-nez v5, :cond_1

    .line 3223
    iget-object v8, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3224
    :try_start_1
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 3225
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v6, v4}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3226
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v6}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 3228
    invoke-direct {p0, v4}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3229
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3230
    :try_start_2
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v6

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v5

    .line 3237
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved engine removed! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    :goto_1
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved removing dir :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 3251
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v5    # "ret":I
    :cond_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3252
    return-void

    .line 3229
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v3    # "id":I
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .restart local v5    # "ret":I
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 3251
    .end local v0    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v5    # "ret":I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 3239
    .restart local v0    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v3    # "id":I
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .restart local v5    # "ret":I
    :cond_1
    :try_start_5
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved removeEngine :: failed ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3247
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "ret":I
    :cond_2
    const-string v8, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find engine info ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3212
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private handleUserAdded(I)V
    .locals 13
    .param p1, "userId"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 3090
    if-nez p1, :cond_1

    .line 3160
    :cond_0
    :goto_0
    return-void

    .line 3093
    :cond_1
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3094
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 3095
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3097
    if-nez v0, :cond_0

    .line 3103
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    .line 3104
    .local v11, "ui":Landroid/content/pm/UserInfo;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3105
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside handleUserAdded :: do not handle for bmode user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3095
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v11    # "ui":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3108
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .restart local v11    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3109
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside handleUserAdded :: do not handle for knox user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3112
    :cond_3
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3113
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is identified as managed profile..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    if-nez v2, :cond_4

    move v8, v7

    .line 3116
    .local v8, "res":Z
    :goto_1
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: Base directory has been set up... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: Managed profile is not appicable to engine creation... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3114
    .end local v8    # "res":Z
    :cond_4
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->setBaseDataUserDir(I)Z
    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$1800(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z

    move-result v8

    goto :goto_1

    .line 3121
    :cond_5
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleUserAdded for SDP "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 3123
    .local v1, "alias":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3127
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    const/4 v6, 0x5

    move v2, p1

    move v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 3136
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->generatePasswordResetToken()Ljava/lang/String;

    move-result-object v10

    .line 3137
    .local v10, "rstToken":Ljava/lang/String;
    invoke-direct {p0, v0, v12, v10}, Lcom/android/server/SdpManagerService;->createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 3138
    .local v7, "cmk":[B
    if-nez v7, :cond_6

    .line 3139
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded failed to create keys for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3144
    :cond_6
    iget-object v12, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3146
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v9

    .line 3148
    .local v9, "ret":I
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3150
    invoke-direct {p0, v7}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 3152
    if-eqz v9, :cond_7

    .line 3153
    invoke-virtual {p0, v0}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3154
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded failed to create engine info/creation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3148
    .end local v9    # "ret":I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 3158
    .restart local v9    # "ret":I
    :cond_7
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady(I)Z
    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$1900(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z

    goto/16 :goto_0
.end method

.method private handleUserRemoved(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 3163
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3164
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "handleUserRemoved SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    :goto_0
    return-void

    .line 3168
    :cond_0
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3169
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 3170
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3172
    if-nez v0, :cond_1

    .line 3173
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "handleUserRemoved removeEngine :: no engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3170
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3177
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside handleUserRemoved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    .line 3180
    .local v1, "ret":I
    if-nez v1, :cond_2

    .line 3181
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3182
    :try_start_2
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 3183
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3184
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 3186
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3187
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3188
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v1

    .line 3195
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserRemoved engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3187
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 3197
    :cond_2
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserRemoved removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isAccumulatedFailure(I)Z
    .locals 2
    .param p1, "engineId"    # I

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getFailureCount(I)I

    move-result v0

    .line 330
    .local v0, "currCount":I
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->clearFailureCount(I)V

    .line 332
    const/4 v1, 0x1

    .line 334
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isBiometricLockEnabled(II)Z
    .locals 1
    .param p1, "biometricType"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private isFingerprintLockscreen(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1792
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->isBiometricLockEnabled(II)Z

    move-result v0

    return v0
.end method

.method private isIrisLockscreen(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1796
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->isBiometricLockEnabled(II)Z

    move-result v0

    return v0
.end method

.method private isKnoxEngine(I)Z
    .locals 1
    .param p1, "engineId"    # I

    .prologue
    .line 2434
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLicensed()Z
    .locals 4

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SdpServiceKeeper;->isLicensed(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method private isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isPrivileged(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private isPwdChangeRequested()Z
    .locals 6

    .prologue
    .line 3784
    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3786
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    .line 3788
    .local v2, "mPwdPolicy":Landroid/app/enterprise/PasswordPolicy;
    const/4 v1, 0x0

    .line 3789
    .local v1, "isPwdChangeRequested":Z
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-lez v3, :cond_0

    .line 3791
    const/4 v1, 0x1

    .line 3793
    :cond_0
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPwdChangeRequested :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    return v1
.end method

.method private isSdpUserZeroSupported()Z
    .locals 1

    .prologue
    .line 1725
    sget-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecureUnlockRequired(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1179
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1180
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Not a default engine... Skip secure unlock... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :goto_0
    return v3

    .line 1184
    :cond_0
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v2

    .line 1185
    .local v2, "userId":I
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecureUnlock :: User : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v7, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService;->isAccumulatedFailure(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1192
    const-string v3, "Failure count has been fully accumulated...Secure unlock required!"

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    move v3, v4

    .line 1194
    goto :goto_0

    .line 1197
    :cond_1
    if-nez p2, :cond_2

    move v0, v4

    .line 1198
    .local v0, "noCredential":Z
    :goto_1
    if-eqz v0, :cond_6

    .line 1202
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1203
    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Lowest security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1204
    goto :goto_0

    .end local v0    # "noCredential":Z
    :cond_2
    move v0, v3

    .line 1197
    goto :goto_1

    .line 1209
    .restart local v0    # "noCredential":Z
    :cond_3
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 1211
    .local v1, "quality":I
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecureUnlock :: Quality for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    if-nez v1, :cond_4

    .line 1213
    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Very low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1214
    goto/16 :goto_0

    .line 1219
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isFingerprintLockscreen(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1220
    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1221
    goto/16 :goto_0

    .line 1226
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isIrisLockscreen(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1227
    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1228
    goto/16 :goto_0

    .line 1231
    .end local v1    # "quality":I
    :cond_6
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Not applicable... Skip secure unlock... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isSupportedDevice()Z
    .locals 1

    .prologue
    .line 1779
    sget-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    if-eqz v0, :cond_0

    .line 1781
    const/4 v0, 0x1

    .line 1783
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isSystemComponent(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private lockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    .locals 12
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    const/4 v7, 0x0

    const/16 v6, -0xe

    const/4 v8, 0x1

    .line 1120
    if-nez p1, :cond_0

    const/4 v6, -0x7

    .line 1175
    :goto_0
    return v6

    .line 1122
    :cond_0
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    .line 1123
    .local v0, "engineId":I
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v5

    .line 1124
    .local v5, "userId":I
    const-string v9, "SdpManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "lockInternal "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-direct {p0, v0, v5}, Lcom/android/server/SdpManagerService;->lockNative(II)I

    move-result v3

    .line 1132
    .local v3, "ret":I
    if-eqz v3, :cond_1

    .line 1133
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lockInternal :: native failed ret "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lockInternal :: native failed :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/16 v6, -0xc

    goto :goto_0

    .line 1137
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->clearCachedMasterKey(I)V

    .line 1138
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->clearResetPasswordKey(I)V

    .line 1140
    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1141
    const/4 v10, 0x1

    :try_start_0
    invoke-direct {p0, p1, v10}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 1142
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1147
    const/4 v1, 0x0

    .line 1148
    .local v1, "quality":I
    const-string/jumbo v9, "lock_settings"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/LockSettingsService;

    .line 1149
    .local v4, "service":Lcom/android/server/LockSettingsService;
    if-eqz v4, :cond_2

    .line 1151
    :try_start_1
    const-string/jumbo v9, "lockscreen.password_type"

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v9, v10, v11, v0}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v10

    long-to-int v1, v10

    .line 1157
    :cond_2
    :goto_1
    const v9, 0x61000

    if-eq v1, v9, :cond_3

    if-nez v1, :cond_4

    :cond_3
    move v2, v8

    .line 1160
    .local v2, "qualityNoPassword":Z
    :goto_2
    if-eqz v2, :cond_6

    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1162
    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1163
    const-string v7, "SdpManagerService"

    const-string v8, "couldn\'t remove ECMK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1142
    .end local v1    # "quality":I
    .end local v2    # "qualityNoPassword":Z
    .end local v4    # "service":Lcom/android/server/LockSettingsService;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v1    # "quality":I
    .restart local v4    # "service":Lcom/android/server/LockSettingsService;
    :cond_4
    move v2, v7

    .line 1157
    goto :goto_2

    .line 1167
    .restart local v2    # "qualityNoPassword":Z
    :cond_5
    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeKEK(II)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1168
    const-string v7, "SdpManagerService"

    const-string v8, "couldn\'t remove KEK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "quality":I
    .end local v2    # "qualityNoPassword":Z
    .end local v4    # "service":Lcom/android/server/LockSettingsService;
    :cond_6
    move v6, v7

    .line 1175
    goto/16 :goto_0

    .line 1153
    .restart local v1    # "quality":I
    .restart local v4    # "service":Lcom/android/server/LockSettingsService;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private lockNative(II)I
    .locals 3
    .param p1, "engineid"    # I
    .param p2, "userid"    # I

    .prologue
    .line 2554
    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnDeviceLocked(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2555
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    const/16 v0, -0xc

    .line 2559
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static native nativeMemGetSensitiveProcess()[I
.end method

.method static native nativeMemSetProcessSensitive(I)I
.end method

.method static native nativeOnBoot(II)I
.end method

.method static native nativeOnChangePassword(I[B[B)I
.end method

.method static native nativeOnDeviceLocked(II)I
.end method

.method static native nativeOnDeviceUnlocked(I[B)I
.end method

.method static native nativeOnMigration(IIII[B)I
.end method

.method static native nativeOnUserAdded(II[B)I
.end method

.method static native nativeOnUserRemoved(II)I
.end method

.method private notifyUnlockFailure(I)V
    .locals 2
    .param p1, "engineId"    # I

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getFailureCount(I)I

    move-result v0

    .line 339
    .local v0, "currCount":I
    add-int/lit8 v0, v0, 0x1

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_0

    .line 340
    const/4 v0, 0x0

    .line 342
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/SdpManagerService;->setFailureCount(II)V

    .line 343
    return-void
.end method

.method private onCipherModeMigration(I)V
    .locals 5
    .param p1, "engineId"    # I

    .prologue
    .line 2399
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCipherModeMigration :: Inisde... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Lcom/sec/knox/container/util/KeyManagementUtil;->getECMKLength(II)I

    move-result v0

    .line 2402
    .local v0, "cipherLength":I
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCipherModeMigration :: Detected cipher length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    if-gtz v0, :cond_1

    .line 2405
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "onCipherModeMigration :: Unexpected condition..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    :cond_0
    :goto_0
    return-void

    .line 2408
    :cond_1
    const/16 v2, 0x30

    if-ge v0, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isKnoxEngine(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2410
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "onCipherModeMigration :: Legacy header needed..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v3, 0x10

    invoke-virtual {v2, p1, v3}, Lcom/sec/knox/container/util/KeyManagementUtil;->addLegacyHeader(II)V

    .line 2412
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/SdpManagerService;->setSDPMigrating(IZ)V

    goto :goto_0

    .line 2419
    :cond_2
    const/16 v2, 0x59

    if-lt v0, v2, :cond_3

    .line 2420
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "onCipherModeMigration :: Cipher already has maximum length..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v1

    .line 2422
    .local v1, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v1, :cond_0

    .line 2423
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCipherModeMigration :: << DUMP >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2427
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v3, 0x20

    invoke-virtual {v2, p1, v3}, Lcom/sec/knox/container/util/KeyManagementUtil;->addLegacyHeader(II)V

    goto :goto_0
.end method

.method private onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 2739
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v6

    .line 2740
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2743
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v3, :cond_0

    monitor-exit v6

    .line 2757
    :goto_0
    return-void

    .line 2745
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 2746
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2748
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Lcom/sec/sdp/ISdpListener;

    invoke-interface {v5}, Lcom/sec/sdp/ISdpListener;->onEngineRemoved()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2745
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2749
    :catch_0
    move-exception v4

    .line 2750
    .local v4, "rex":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "SdpManagerService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 2756
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v2    # "i":I
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    .end local v4    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2752
    .restart local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .restart local v2    # "i":I
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :catch_1
    move-exception v1

    .line 2753
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "SdpManagerService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2756
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private onMigrationInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;[B)I
    .locals 13
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "cmk"    # [B

    .prologue
    const/4 v12, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 2245
    if-nez p1, :cond_0

    const/16 v10, -0xb

    .line 2367
    :goto_0
    return v10

    .line 2247
    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getVersion()I

    move-result v7

    .line 2250
    .local v7, "currentVersion":I
    if-ne v7, v12, :cond_1

    .line 2251
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: already up to date. version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 2252
    goto :goto_0

    .line 2255
    :cond_1
    if-nez v7, :cond_2

    .line 2256
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: SDP previously disabled. version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 2257
    goto :goto_0

    .line 2265
    :cond_2
    if-ne v7, v3, :cond_3

    .line 2266
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: MIGRATE from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    sget-object v0, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v8

    .line 2269
    .local v8, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    new-array v6, v5, [Ljava/lang/String;

    const-string v0, "/data/user/$/com.android.email/databases/EmailProviderBody.db"

    aput-object v0, v6, v11

    const-string v0, "Body"

    aput-object v0, v6, v3

    const-string/jumbo v0, "htmlContent,textContent"

    aput-object v0, v6, v4

    .line 2275
    .local v6, "args":[Ljava/lang/String;
    aget-object v0, v6, v11

    const-string v1, "$"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v11

    .line 2276
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v6, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    const-string/jumbo v1, "sdp_db"

    const-string/jumbo v2, "set_sensitive_from_db1"

    invoke-virtual {v8, v0, v1, v2, v6}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->migration(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 2283
    .local v10, "ret":I
    if-nez v10, :cond_4

    .line 2284
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2286
    add-int/lit8 v7, v7, 0x1

    .line 2287
    :try_start_0
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2288
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2289
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2306
    .end local v6    # "args":[Ljava/lang/String;
    .end local v8    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v10    # "ret":I
    :cond_3
    :goto_1
    if-ne v7, v4, :cond_6

    .line 2307
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: version 2 -> 3 not implemented (this is targeted for TMR/KMR)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    if-nez p2, :cond_5

    .line 2309
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: failed, CMK required!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    const/16 v10, -0xd

    goto/16 :goto_0

    .line 2289
    .restart local v6    # "args":[Ljava/lang/String;
    .restart local v8    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .restart local v10    # "ret":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2291
    :cond_4
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: Failed in 1st stage... Skip remaining steps other than termination"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: Must make it complete all steps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2295
    add-int/lit8 v7, v7, 0x3

    .line 2296
    :try_start_2
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2297
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2298
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2313
    .end local v6    # "args":[Ljava/lang/String;
    .end local v8    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v10    # "ret":I
    :cond_5
    const/16 v0, 0x20

    invoke-direct {p0, p2, v0}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v9

    .line 2314
    .local v9, "paddedCmk":[B
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-static {v0, v1, v7, v12, v9}, Lcom/android/server/SdpManagerService;->nativeOnMigration(IIII[B)I

    move-result v10

    .line 2316
    .restart local v10    # "ret":I
    invoke-direct {p0, v9}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2318
    if-nez v10, :cond_a

    .line 2319
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2321
    add-int/lit8 v7, v7, 0x1

    .line 2322
    :try_start_3
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2323
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2324
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2334
    .end local v9    # "paddedCmk":[B
    .end local v10    # "ret":I
    :cond_6
    if-ne v7, v5, :cond_8

    .line 2335
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: version 3 -> 4)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    const/16 v10, -0x63

    .line 2338
    .restart local v10    # "ret":I
    iget-object v12, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2340
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v10

    .line 2342
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2344
    if-eqz v10, :cond_7

    const/4 v0, -0x6

    if-ne v10, v0, :cond_b

    .line 2345
    :cond_7
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEngine ret :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2347
    add-int/lit8 v7, v7, 0x1

    .line 2348
    :try_start_5
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2349
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2350
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 2357
    .end local v10    # "ret":I
    :cond_8
    const/4 v0, 0x4

    if-ne v7, v0, :cond_9

    .line 2358
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: version 4 -> 5)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onCipherModeMigration(I)V

    .line 2360
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2361
    add-int/lit8 v7, v7, 0x1

    .line 2362
    :try_start_6
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2363
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2364
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 2366
    :cond_9
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 2367
    goto/16 :goto_0

    .line 2324
    .restart local v9    # "paddedCmk":[B
    .restart local v10    # "ret":I
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 2326
    :cond_a
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 2342
    .end local v9    # "paddedCmk":[B
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 2350
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 2352
    :cond_b
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: failed! can\'t create engine for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2364
    .end local v10    # "ret":I
    :catchall_5
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0
.end method

.method private onStateChange(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)V
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "state"    # I

    .prologue
    .line 2718
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v6

    .line 2719
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2722
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v3, :cond_0

    monitor-exit v6

    .line 2736
    :goto_0
    return-void

    .line 2724
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 2725
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2727
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Lcom/sec/sdp/ISdpListener;

    invoke-interface {v5, p2}, Lcom/sec/sdp/ISdpListener;->onStateChange(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2724
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2728
    :catch_0
    move-exception v4

    .line 2729
    .local v4, "rex":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "SdpManagerService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 2735
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v2    # "i":I
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    .end local v4    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2731
    .restart local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .restart local v2    # "i":I
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :catch_1
    move-exception v1

    .line 2732
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "SdpManagerService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2735
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private registerListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;

    .prologue
    const/4 v3, 0x0

    .line 2667
    if-nez p1, :cond_0

    const/4 v3, -0x7

    .line 2691
    :goto_0
    return v3

    .line 2669
    :cond_0
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerListener from pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2674
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v1, :cond_1

    .line 2675
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2676
    .restart local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2679
    :cond_1
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v4

    .line 2680
    :try_start_0
    new-instance v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v5, p2}, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;-><init>(Lcom/android/server/SdpManagerService;Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2683
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->setCaller(I)V

    .line 2684
    invoke-interface {p2}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2685
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2689
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2686
    .restart local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :catch_0
    move-exception v2

    .line 2687
    .local v2, "rex":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "SdpManagerService"

    const-string v6, "Failed to link to listener death"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .locals 7
    .param p1, "parent"    # Ljava/io/File;

    .prologue
    .line 3773
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3774
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 3775
    .local v3, "files":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 3776
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3777
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 3775
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3780
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 3781
    return-void
.end method

.method private removeEngineNative(II)I
    .locals 3
    .param p1, "engineid"    # I
    .param p2, "userid"    # I

    .prologue
    .line 2623
    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnUserRemoved(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2624
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeEngineNative :: failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    const/16 v0, -0xc

    .line 2628
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "resetToken"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 1464
    if-nez p1, :cond_1

    const/4 v3, -0x7

    .line 1499
    :cond_0
    :goto_0
    return v3

    .line 1467
    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    .line 1468
    .local v1, "engineId":I
    const/4 v2, 0x0

    .line 1472
    .local v2, "rstTokenFromTima":Z
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1473
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object p2

    .line 1474
    const/4 v2, 0x1

    .line 1477
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1478
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, -0x2

    goto :goto_0

    .line 1480
    :cond_3
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v5, 0x2

    const/16 v6, 0x20

    invoke-virtual {v4, v1, p2, v5, v6}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1486
    .local v0, "encodedCmk":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1487
    :cond_4
    if-eqz v0, :cond_0

    .line 1491
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v0, p3, v4}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1494
    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "resetPasswordInternal :: failed to storeCMK"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const/16 v3, -0xe

    goto :goto_0

    .line 1498
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    .line 1499
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private saveTokenInternal(ILjava/lang/String;[B)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "entry"    # [B

    .prologue
    .line 3826
    const/4 v0, 0x0

    .line 3827
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3828
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v0

    .line 3830
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3831
    return v0
.end method

.method private sendBroadcastForStateChange(III)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "engineId"    # I
    .param p3, "state"    # I

    .prologue
    .line 2768
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.sdp.SDP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2770
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcastAsUser(INTENT_SDP_STATE_CHANGED, state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2772
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2773
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2774
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2775
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2776
    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2777
    return-void
.end method

.method private setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "state"    # I

    .prologue
    .line 1068
    if-nez p1, :cond_0

    const/4 v7, -0x7

    .line 1100
    :goto_0
    return v7

    .line 1070
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setState(I)V

    .line 1071
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->onStateChange(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)V

    .line 1077
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v6

    .line 1078
    .local v6, "userId":I
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    .line 1079
    .local v0, "engineId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1081
    .local v4, "token":J
    invoke-direct {p0, v6, v0, p2}, Lcom/android/server/SdpManagerService;->sendBroadcastForStateChange(III)V

    .line 1086
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1087
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    invoke-virtual {v7, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 1088
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1089
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1090
    .local v2, "profile":Landroid/content/pm/UserInfo;
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    if-eqz v7, :cond_1

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v6, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1094
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v0, p2}, Lcom/android/server/SdpManagerService;->sendBroadcastForStateChange(III)V

    goto :goto_1

    .line 1099
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profile":Landroid/content/pm/UserInfo;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1100
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private setFailureCount(II)V
    .locals 2
    .param p1, "engineId"    # I
    .param p2, "count"    # I

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    return-void
.end method

.method private setPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I
    .locals 10
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1356
    if-nez p1, :cond_0

    const/4 v7, -0x7

    .line 1454
    :goto_0
    return v7

    .line 1363
    :cond_0
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v3

    .line 1364
    .local v3, "isDefaultEngine":Z
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    .line 1365
    .local v2, "engineId":I
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isPwdChangeRequested()Z

    move-result v4

    .line 1366
    .local v4, "isPwdChangeRequested":Z
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal:: isPwdChangeRequested "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 1368
    const/4 v7, -0x5

    goto :goto_0

    .line 1370
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1371
    :cond_2
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1372
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1380
    const/4 v7, 0x0

    goto :goto_0

    .line 1383
    :cond_3
    const-string v7, "SdpManagerService"

    const-string/jumbo v8, "setPasswordInternal:: removing ECMK_PWD"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1385
    const-string v7, "SdpManagerService"

    const-string v8, "Couldn\'t remove ECMK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const/16 v7, -0xe

    goto :goto_0

    .line 1391
    :cond_4
    const/4 v7, -0x2

    goto :goto_0

    .line 1396
    :cond_5
    const/4 v1, 0x0

    .line 1397
    .local v1, "encodedCmk":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1398
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "encodedCmk":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1422
    .restart local v1    # "encodedCmk":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v1, p2, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1425
    const-string v7, "SdpManagerService"

    const-string/jumbo v8, "setPasswordInternal :: failed to storeCMK"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const/16 v7, -0xe

    goto/16 :goto_0

    .line 1403
    :cond_7
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1405
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v5

    .line 1406
    .local v5, "resetToken":Ljava/lang/String;
    if-nez v5, :cond_8

    .line 1407
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 1409
    :cond_8
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v8, 0x2

    const/16 v9, 0x20

    invoke-virtual {v7, v2, v5, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 1411
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1413
    if-nez v1, :cond_6

    .line 1414
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 1418
    .end local v5    # "resetToken":Ljava/lang/String;
    :cond_9
    const/16 v7, -0x63

    goto/16 :goto_0

    .line 1431
    :cond_a
    if-eqz v4, :cond_c

    .line 1433
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v7, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1435
    .local v0, "cmk":[B
    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v6

    .line 1436
    .local v6, "ret":I
    if-eqz v6, :cond_b

    .line 1437
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal::unlockNative :: failed ret "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal::unlockNative :: failed :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->clearCachedMasterKey(I)V

    .line 1440
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 1441
    const/16 v7, -0xc

    goto/16 :goto_0

    .line 1444
    :cond_b
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 1446
    iget-object v8, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1447
    const/4 v7, 0x2

    :try_start_0
    invoke-direct {p0, p1, v7}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 1448
    monitor-exit v8

    .line 1454
    .end local v0    # "cmk":[B
    .end local v6    # "ret":I
    :goto_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1448
    .restart local v0    # "cmk":[B
    .restart local v6    # "ret":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1451
    .end local v0    # "cmk":[B
    .end local v6    # "ret":I
    :cond_c
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I
    .locals 1
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v0, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v6, -0x1

    const/16 v10, 0x20

    const/4 v5, -0x2

    .line 1245
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    .line 1246
    .local v2, "engineId":I
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unlock :: Internal... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const/4 v1, 0x0

    .line 1249
    .local v1, "encodedCmk":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMdfpp()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1251
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return v5

    .line 1254
    :cond_1
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, v2, p2, p3, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1256
    if-eqz v1, :cond_0

    .line 1259
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    .line 1314
    :goto_1
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1316
    .local v0, "cmk":[B
    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v4

    .line 1317
    .local v4, "ret":I
    if-eqz v4, :cond_6

    .line 1318
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockNative :: failed ret "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockNative :: failed :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->clearCachedMasterKey(I)V

    .line 1321
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 1322
    const/16 v5, -0xc

    goto :goto_0

    .line 1278
    .end local v0    # "cmk":[B
    .end local v4    # "ret":I
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->isSecureUnlockRequired(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1279
    const-string v5, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unlock :: onDeviceUnLocked from TIMA "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v3

    .line 1282
    .local v3, "resetToken":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 1283
    const-string v5, "SdpManagerService"

    const-string/jumbo v7, "unlock :: Invalid reset token"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1284
    goto/16 :goto_0

    .line 1287
    :cond_3
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5, v2, v3, v11, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 1289
    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1291
    if-nez v1, :cond_5

    move v5, v6

    .line 1292
    goto/16 :goto_0

    .line 1295
    .end local v3    # "resetToken":Ljava/lang/String;
    :cond_4
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unlock :: onDeviceUnLocked found ECMK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1299
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, v2, p2, p3, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1302
    if-nez v1, :cond_5

    .line 1303
    if-nez v2, :cond_0

    .line 1304
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unlock SDP... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 1305
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->notifyUnlockFailure(I)V

    goto/16 :goto_0

    .line 1310
    :cond_5
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1325
    .restart local v0    # "cmk":[B
    .restart local v4    # "ret":I
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 1327
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1328
    const/4 v5, 0x2

    :try_start_0
    invoke-direct {p0, p1, v5}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 1329
    monitor-exit v6

    .line 1330
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1329
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private unlockNative(I[B)I
    .locals 3
    .param p1, "id"    # I
    .param p2, "cmk"    # [B

    .prologue
    .line 2572
    if-eqz p2, :cond_0

    array-length v0, p2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 2573
    :cond_0
    const/16 v0, -0xb

    .line 2580
    :goto_0
    return v0

    .line 2575
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnDeviceUnlocked(I[B)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2576
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlockNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    const/16 v0, -0xc

    goto :goto_0

    .line 2580
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unlockViaTrustedInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "resetToken"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v4, -0x1

    .line 3910
    if-nez p1, :cond_1

    const/4 v4, -0x7

    .line 3937
    :cond_0
    :goto_0
    return v4

    .line 3911
    :cond_1
    if-eqz p2, :cond_0

    .line 3913
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    .line 3914
    .local v2, "engineId":I
    const/4 v1, 0x0

    .line 3916
    .local v1, "encodedCmk":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v6, 0x20

    invoke-virtual {v5, v2, p2, v7, v6}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 3918
    if-eqz v1, :cond_0

    .line 3921
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    .line 3923
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 3925
    .local v0, "cmk":[B
    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v3

    .line 3926
    .local v3, "ret":I
    if-eqz v3, :cond_2

    .line 3927
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockNative :: failed ret "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockNative :: failed :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3929
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 3930
    const/16 v4, -0xc

    goto :goto_0

    .line 3933
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 3934
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3935
    const/4 v4, 0x2

    :try_start_0
    invoke-direct {p0, p1, v4}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 3936
    monitor-exit v5

    .line 3937
    const/4 v4, 0x0

    goto :goto_0

    .line 3936
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private unregisterListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;

    .prologue
    const/4 v3, 0x0

    .line 2695
    if-nez p1, :cond_0

    const/4 v3, -0x7

    .line 2714
    :goto_0
    return v3

    .line 2697
    :cond_0
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v4

    .line 2698
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2701
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v2, :cond_1

    monitor-exit v4

    goto :goto_0

    .line 2712
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2703
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;

    .line 2704
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Lcom/sec/sdp/ISdpListener;

    invoke-interface {v5}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p2}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 2705
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2706
    invoke-interface {p2}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_1

    .line 2710
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 2711
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2712
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private zeroOut(Ljava/lang/String;)V
    .locals 0
    .param p1, "buff"    # Ljava/lang/String;

    .prologue
    .line 363
    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 365
    const/4 p1, 0x0

    .line 367
    :cond_0
    return-void
.end method

.method private zeroOut([B)V
    .locals 2
    .param p1, "buff"    # [B

    .prologue
    const/4 v1, 0x0

    .line 355
    if-nez p1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 356
    :cond_0
    array-length v0, p1

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 358
    const/4 p1, 0x0

    .line 359
    goto :goto_0
.end method


# virtual methods
.method public addEngine(Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I
    .locals 25
    .param p1, "param"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "rstToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 427
    .local v6, "userId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v7

    if-nez v7, :cond_0

    .line 428
    const-string v7, "SdpManagerService"

    const-string v8, "SDP not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/16 v23, -0x3

    .line 551
    :goto_0
    return v23

    .line 432
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 433
    .local v14, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 434
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    .line 435
    .local v18, "myPid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v19

    .line 436
    .local v19, "myUid":I
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calling pid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calling uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "my pid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "my uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    if-nez p1, :cond_1

    .line 442
    const-string v7, "SdpManagerService"

    const-string v8, "addEngine :: invalid arg"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/16 v23, -0xb

    goto/16 :goto_0

    .line 446
    :cond_1
    const-string v7, "SdpManagerService"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 454
    :cond_2
    invoke-static {v6}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v4

    .line 458
    .local v4, "alias":Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 459
    const/16 v23, -0xb

    goto/16 :goto_0

    .line 456
    .end local v4    # "alias":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "alias":Ljava/lang/String;
    goto :goto_1

    .line 461
    :cond_4
    const-string v20, ""

    .line 463
    .local v20, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/SdpManagerService;->assignEngineId(Ljava/lang/String;)I

    move-result v5

    .line 464
    .local v5, "newId":I
    sget-object v7, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    .line 465
    .local v22, "pkgNames":[Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 466
    move-object/from16 v13, v22

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    aget-object v21, v13, v16

    .line 467
    .local v21, "pkgName":Ljava/lang/String;
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addEngine :: calling getPackagesForUid  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    move-object/from16 v20, v21

    .line 466
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 472
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    .end local v21    # "pkgName":Ljava/lang/String;
    :cond_5
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adding engine :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 475
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 476
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addEngine :: failed.. engine["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] already exists"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/16 v23, -0x6

    monitor-exit v24

    goto/16 :goto_0

    .line 552
    :catchall_0
    move-exception v7

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 484
    :cond_6
    :try_start_1
    new-instance v3, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getFlags()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 493
    .local v3, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 500
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 501
    const/16 v23, -0x8

    monitor-exit v24

    goto/16 :goto_0

    .line 509
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService;->isLicensed()Z

    move-result v7

    if-nez v7, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 511
    const-string v7, "SdpManagerService"

    const-string v8, "Permission denied to invoke engine control API"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/16 v23, -0x8

    monitor-exit v24

    goto/16 :goto_0

    .line 517
    :cond_8
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMdfpp()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-nez v7, :cond_c

    .line 518
    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 519
    :cond_9
    const/16 v23, -0x2

    monitor-exit v24

    goto/16 :goto_0

    .line 520
    :cond_a
    if-eqz p3, :cond_b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x20

    if-ge v7, v8, :cond_c

    .line 521
    :cond_b
    const/16 v23, -0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 524
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/SdpManagerService;->createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v12

    .line 525
    .local v12, "cmk":[B
    if-nez v12, :cond_d

    .line 526
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to create keys for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/16 v23, -0xc

    monitor-exit v24

    goto/16 :goto_0

    .line 530
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    move-object/from16 v7, p0

    move-object v8, v3

    move-object/from16 v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v23

    .line 534
    .local v23, "ret":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 535
    if-eqz v23, :cond_e

    .line 536
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 551
    :cond_e
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public addEngineNative(II[B)Z
    .locals 4
    .param p1, "engineId"    # I
    .param p2, "userId"    # I
    .param p3, "cmk"    # [B

    .prologue
    const/4 v0, 0x0

    .line 2380
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2381
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    :goto_0
    return v0

    .line 2385
    :cond_0
    if-eqz p3, :cond_1

    array-length v1, p3

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    .line 2386
    :cond_1
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEngineNative :: invalid cmk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2390
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/android/server/SdpManagerService;->nativeOnUserAdded(II[B)I

    move-result v1

    if-eqz v1, :cond_3

    .line 2391
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEngineNative :: native failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2395
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1640
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1641
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v4

    .line 1642
    .local v4, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v1

    .line 1643
    if-nez v4, :cond_0

    .line 1644
    const/4 v6, -0x7

    .line 1650
    .local v6, "ret":I
    :goto_0
    return v6

    .line 1642
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1646
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_0
    new-instance v5, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    invoke-direct {v5, p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    .local v5, "privilegedApp":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->addPrivilegedApp(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)I

    move-result v6

    .restart local v6    # "ret":I
    goto :goto_0
.end method

.method public boot(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    const-string v0, "SdpManagerService"

    const-string v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v0, -0x3

    .line 643
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootInternal(I)I

    move-result v0

    goto :goto_0
.end method

.method public changeCMKNative(I[B[B)I
    .locals 3
    .param p1, "id"    # I
    .param p2, "oldCmk"    # [B
    .param p3, "newCmk"    # [B

    .prologue
    const/16 v0, -0xb

    .line 2594
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2595
    const-string v0, "SdpManagerService"

    const-string v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    const/4 v0, -0x3

    .line 2611
    :cond_0
    :goto_0
    return v0

    .line 2598
    :cond_1
    const-string v1, "changeCMKNative"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2600
    if-eqz p2, :cond_0

    .line 2603
    if-eqz p3, :cond_0

    array-length v1, p3

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 2606
    invoke-static {p1, p2, p3}, Lcom/android/server/SdpManagerService;->nativeOnChangePassword(I[B[B)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2607
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCMKNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    const/16 v0, -0xc

    goto :goto_0

    .line 2611
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearEncPkgCache(ILjava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 3042
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    .line 3043
    const-string v1, "SdpManagerService"

    const-string v2, "Permission denied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 3066
    :cond_0
    :goto_0
    return v5

    .line 3046
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3047
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 3048
    goto :goto_0

    .line 3050
    :cond_2
    new-array v4, v5, [Ljava/lang/String;

    .line 3051
    .local v4, "dataCacheArray":[Ljava/lang/String;
    const-string v1, "cache"

    aput-object v1, v4, v8

    .line 3053
    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 3055
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v6

    .line 3056
    .local v6, "retDataPart":Z
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v7

    .line 3058
    .local v7, "retExtPart":Z
    if-nez v6, :cond_3

    .line 3059
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear data part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 3060
    goto :goto_0

    .line 3061
    :cond_3
    if-nez v7, :cond_0

    .line 3062
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear ext part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 3063
    goto :goto_0
.end method

.method public clearEncPkgData(ILjava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 3010
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 3011
    const-string v1, "SdpManagerService"

    const-string v2, "Permission denied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    :goto_0
    return v5

    .line 3014
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3015
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3018
    :cond_1
    new-array v4, v8, [Ljava/lang/String;

    .line 3019
    .local v4, "dataCacheArray":[Ljava/lang/String;
    const-string v1, "/"

    aput-object v1, v4, v5

    .line 3021
    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 3023
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v6

    .line 3027
    .local v6, "retDataPart":Z
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v7

    .line 3029
    .local v7, "retExtPart":Z
    if-nez v6, :cond_2

    .line 3030
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear data part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3032
    :cond_2
    if-nez v7, :cond_3

    .line 3033
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear ext part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v5, v8

    .line 3037
    goto :goto_0
.end method

.method public createEncPkgDir(ILjava/lang/String;)I
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3071
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3072
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    const/4 v1, -0x3

    .line 3080
    :goto_0
    return v1

    .line 3075
    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPkgDir(ILjava/lang/String;)Z
    invoke-static {v1, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$1700(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z

    move-result v0

    .line 3077
    .local v0, "ret":Z
    if-eqz v0, :cond_1

    .line 3078
    const/4 v1, 0x0

    goto :goto_0

    .line 3080
    :cond_1
    const/16 v1, -0xc

    goto :goto_0
.end method

.method public deleteToeknFromTrusted(Ljava/lang/String;)I
    .locals 4
    .param p1, "nameTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3836
    const-string v3, "deleteToeknFromTrusted"

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3837
    const/16 v1, -0x63

    .line 3838
    .local v1, "ret":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3839
    const/16 v3, -0xb

    .line 3846
    :goto_0
    return v3

    .line 3841
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3842
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3844
    .local v0, "alias":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->deleteTokenInternal(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3845
    const/4 v1, 0x0

    :cond_1
    move v3, v1

    .line 3846
    goto :goto_0
.end method

.method public disallow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1658
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1659
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v4

    .line 1660
    .local v4, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v1

    .line 1661
    if-nez v4, :cond_0

    .line 1662
    const/4 v6, -0x7

    .line 1668
    .local v6, "ret":I
    :goto_0
    return v6

    .line 1660
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1664
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_0
    new-instance v5, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    invoke-direct {v5, p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    .local v5, "privilegedApp":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->removePrivilegedApp(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)I

    move-result v6

    .restart local v6    # "ret":I
    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4032
    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 4033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: Can\'t dump SDP from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4061
    :goto_0
    return-void

    .line 4038
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSdpUserZeroSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4039
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4040
    :try_start_0
    const-string v3, "SDP Engine List :"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4042
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "nsize":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 4043
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 4044
    .local v1, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v1, :cond_1

    .line 4042
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4047
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Id : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4048
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v3

    const/16 v5, 0x64

    if-ge v3, v5, :cond_2

    .line 4049
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4051
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tState : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4052
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tMDFPP : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMdfpp()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4053
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tAlias : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4054
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_2

    .line 4056
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v2    # "nsize":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i":I
    .restart local v2    # "nsize":I
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4060
    .end local v0    # "i":I
    .end local v2    # "nsize":I
    :goto_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_0

    .line 4058
    :cond_4
    const-string v3, "Not Supported..."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3945
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3946
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3947
    const/4 v1, -0x3

    .line 3964
    :goto_0
    return v1

    .line 3950
    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3951
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 3952
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 3953
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enroll :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 3956
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3961
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3962
    const/4 v1, -0x8

    goto :goto_0

    .line 3964
    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/SdpManagerService;->enrollInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public exists(Ljava/lang/String;)I
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1616
    const/4 v1, -0x7

    .line 1618
    .local v1, "ret":I
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1619
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 1620
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3

    .line 1621
    if-eqz v0, :cond_0

    .line 1622
    const/4 v1, -0x6

    .line 1623
    :cond_0
    return v1

    .line 1620
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getEncPkgDataSizeInfo(ILjava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2979
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2980
    const-string v5, "SdpManagerService"

    const-string v6, "SDP not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    :goto_0
    return-object v2

    .line 2983
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    .line 2984
    .local v0, "dataCacheArray":[Ljava/lang/String;
    const-string v5, "/"

    aput-object v5, v0, v11

    .line 2985
    const-string v5, "cache"

    aput-object v5, v0, v10

    .line 2987
    sget-object v5, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v1

    .line 2989
    .local v1, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    sget v5, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    invoke-virtual {v1, p1, p2, v5, v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J

    move-result-object v3

    .line 2990
    .local v3, "retDataPartInfo":[J
    sget v5, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    invoke-virtual {v1, p1, p2, v5, v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J

    move-result-object v4

    .line 2992
    .local v4, "retExtPartInfo":[J
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    array-length v5, v3

    if-ne v5, v6, :cond_1

    array-length v5, v4

    if-eq v5, v6, :cond_2

    .line 2994
    :cond_1
    const-string v5, "SdpManagerService"

    const-string v6, "Failed to get size info!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2998
    :cond_2
    new-instance v2, Landroid/content/pm/PackageStats;

    invoke-direct {v2, p2, p1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 3000
    .local v2, "pStats":Landroid/content/pm/PackageStats;
    aget-wide v6, v3, v11

    aget-wide v8, v3, v10

    sub-long/2addr v6, v8

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->dataSize:J

    .line 3001
    aget-wide v6, v3, v10

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 3002
    aget-wide v6, v4, v11

    aget-wide v8, v4, v10

    sub-long/2addr v6, v8

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 3003
    aget-wide v6, v4, v10

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    goto :goto_0
.end method

.method public getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v0, 0x0

    .line 635
    :goto_0
    return-object v0

    .line 631
    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 632
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 633
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v2

    goto :goto_0

    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSupportedSDKVersion()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1628
    const-wide/16 v0, 0x0

    .line 1629
    .local v0, "ret":D
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSdpUserZeroSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1630
    const-wide v0, 0x3ff199999999999aL    # 1.1

    .line 1632
    :cond_0
    return-wide v0
.end method

.method public isLicensed(Ljava/lang/String;)I
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1605
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isLicensed()Z

    move-result v0

    .line 1606
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 1607
    const/4 v1, 0x0

    .line 1609
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x63

    goto :goto_0
.end method

.method public isLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1507
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1508
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    const/4 v1, -0x3

    .line 1525
    :cond_0
    :goto_0
    return v1

    .line 1515
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1516
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 1517
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v2

    .line 1519
    if-nez v0, :cond_2

    .line 1520
    const/4 v1, -0x7

    goto :goto_0

    .line 1517
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1522
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1523
    const/4 v1, -0x5

    goto :goto_0
.end method

.method public isSDPEnabled(I)Z
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 370
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v0

    .line 374
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 375
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSdpMigrating(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 401
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_0
    return v1

    .line 406
    :cond_0
    const-string/jumbo v2, "isSdpMigrating"

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 408
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 409
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 410
    .local v0, "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 413
    .end local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 412
    .restart local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMigrating()Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isSdpSupported()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1716
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1717
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1718
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1719
    const/4 v2, 0x0

    .line 1721
    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSdpUserZeroSupported()Z

    move-result v2

    goto :goto_0
.end method

.method public lock(Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 649
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 650
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v1, -0x3

    .line 686
    :cond_0
    :goto_0
    return v1

    .line 655
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 656
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 657
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    .line 658
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 661
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 668
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->lockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    goto :goto_0

    .line 678
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 681
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public migrate(Ljava/lang/String;)I
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    const-string v0, "SdpManagerService"

    const-string v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v0, -0x3

    .line 870
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onBoot(I)I
    .locals 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/sdp/exception/SdpVersionException;
        }
    .end annotation

    .prologue
    .line 2782
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2783
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    const/4 v1, -0x3

    .line 2798
    :goto_0
    return v1

    .line 2786
    :cond_0
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBoot :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    const-string/jumbo v1, "onBoot"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2789
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootNative(I)I

    move-result v0

    .line 2790
    .local v0, "ret":I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 2792
    new-instance v1, Lcom/android/sdp/exception/SdpVersionException;

    invoke-direct {v1}, Lcom/android/sdp/exception/SdpVersionException;-><init>()V

    throw v1

    .line 2795
    :cond_1
    if-nez v0, :cond_2

    .line 2796
    const/4 v1, 0x0

    goto :goto_0

    .line 2798
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public onChangePassword(I[B[B)Z
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "oldCmk"    # [B
    .param p3, "newCmk"    # [B

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    .line 2856
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2857
    const-string v3, "SdpManagerService"

    const-string v4, "SDP not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    :goto_0
    return v2

    .line 2860
    :cond_0
    const-string/jumbo v3, "onChangePassword"

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2862
    invoke-direct {p0, p2, v4}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v1

    .line 2863
    .local v1, "paddedOldCmk":[B
    invoke-direct {p0, p3, v4}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v0

    .line 2865
    .local v0, "paddedNewCmk":[B
    invoke-static {p1, v1, v0}, Lcom/android/server/SdpManagerService;->nativeOnChangePassword(I[B[B)I

    move-result v3

    if-eqz v3, :cond_1

    .line 2866
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error to handle onChangePassword [persona : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2869
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2870
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2872
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onDeviceLocked(I)Z
    .locals 7
    .param p1, "personaId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2803
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2804
    const-string v3, "SdpManagerService"

    const-string v4, "SDP not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :goto_0
    return v2

    .line 2807
    :cond_0
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDeviceLocked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    const-string/jumbo v4, "onDeviceLocked"

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2810
    invoke-direct {p0, p1, p1}, Lcom/android/server/SdpManagerService;->lockNative(II)I

    move-result v1

    .line 2811
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 2812
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lockInternal failed ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2816
    :cond_1
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2817
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2818
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    monitor-exit v4

    goto :goto_0

    .line 2820
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2819
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v0, v2}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2820
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2822
    goto :goto_0
.end method

.method public onDeviceUnlocked(I[B)Z
    .locals 7
    .param p1, "personaId"    # I
    .param p2, "cmk"    # [B

    .prologue
    const/4 v3, 0x0

    .line 2827
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2828
    const-string v4, "SdpManagerService"

    const-string v5, "SDP not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    :goto_0
    return v3

    .line 2831
    :cond_0
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDeviceUnLocked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    const-string/jumbo v4, "onDeviceUnlocked"

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2834
    const/16 v4, 0x20

    invoke-direct {p0, p2, v4}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v1

    .line 2836
    .local v1, "paddedCmk":[B
    invoke-direct {p0, p1, v1}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v2

    .line 2837
    .local v2, "ret":I
    if-eqz v2, :cond_1

    .line 2838
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockNative failed ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2842
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2844
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2845
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2846
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    monitor-exit v4

    goto :goto_0

    .line 2848
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2847
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    const/4 v3, 0x2

    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2848
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2850
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onMigration(IZ[B)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "isMinor"    # Z
    .param p3, "cmk"    # [B

    .prologue
    const/4 v1, 0x0

    .line 2954
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2955
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    :goto_0
    return v1

    .line 2960
    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2961
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2962
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2963
    if-nez v0, :cond_1

    .line 2964
    const-string v2, "SdpManagerService"

    const-string v3, "can\'t find SDP INFO xml. Migration failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2962
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2968
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/server/SdpManagerService;->onMigrationInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;[B)I

    move-result v2

    if-eqz v2, :cond_2

    .line 2969
    const-string v2, "SdpManagerService"

    const-string v3, "Migration failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2973
    :cond_2
    const-string v1, "SdpManagerService"

    const-string v2, "Migration OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onUserAdded(I[BI)Z
    .locals 9
    .param p1, "personaId"    # I
    .param p2, "cmk"    # [B
    .param p3, "flags"    # I

    .prologue
    .line 2877
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2878
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    const/4 v2, 0x0

    .line 2912
    :goto_0
    return v2

    .line 2881
    :cond_0
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUserAdded :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    const-string/jumbo v2, "onUserAdded"

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2884
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 2885
    .local v1, "alias":Ljava/lang/String;
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    const/4 v4, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x0

    move v2, p1

    move v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 2901
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    const/16 v2, 0x20

    invoke-direct {p0, p2, v2}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v7

    .line 2904
    .local v7, "paddedCmk":[B
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v8

    .line 2908
    .local v8, "ret":I
    invoke-direct {p0, v7}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2909
    if-eqz v8, :cond_1

    .line 2910
    const/4 v2, 0x0

    goto :goto_0

    .line 2912
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onUserRemoved(I)Z
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2918
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2919
    const-string v3, "SdpManagerService"

    const-string v4, "SDP not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    :goto_0
    return v2

    .line 2922
    :cond_0
    const-string/jumbo v3, "onUserRemoved"

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2923
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUserRemoved "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2927
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2928
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2929
    if-nez v0, :cond_1

    .line 2930
    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "onUserRemoved :: no engine found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2928
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2934
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    .line 2935
    .local v1, "ret":I
    if-nez v1, :cond_2

    .line 2936
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2937
    :try_start_2
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 2938
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 2939
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 2941
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 2942
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2944
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    .line 2945
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2942
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 2947
    :cond_2
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerListener(Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 822
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v1, -0x3

    .line 838
    :goto_0
    return v1

    .line 826
    :cond_0
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "registerListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 833
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 834
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 835
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 836
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpManagerService;->registerListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I

    move-result v1

    goto :goto_0
.end method

.method public removeEngine(Ljava/lang/String;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x8

    .line 557
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 558
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v1, -0x3

    .line 619
    :cond_0
    :goto_0
    return v1

    .line 563
    :cond_1
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 564
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 565
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    if-nez v0, :cond_2

    .line 567
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "removeEngine :: no engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v1, -0x7

    goto :goto_0

    .line 565
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 571
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 576
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    :cond_3
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    .line 593
    .local v1, "ret":I
    if-nez v1, :cond_5

    .line 594
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 595
    :try_start_2
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 596
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 597
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 599
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 600
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 601
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v1

    .line 612
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    goto :goto_0

    .line 585
    .end local v1    # "ret":I
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 587
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 600
    .restart local v1    # "ret":I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 614
    :cond_5
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1028
    if-eqz p1, :cond_3

    .line 1029
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeKeys :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/sec/knox/container/util/KeyManagementUtil;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1032
    sget-object v3, Lcom/sec/knox/container/util/KeyManagementUtil;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1033
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1034
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    .line 1035
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeKEK(II)Z

    .line 1036
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeKeys :: Key pair of #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " removed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1039
    .end local v2    # "type":I
    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1040
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 1045
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 1044
    :cond_3
    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "removeKeys :: Failed. info null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "rstToken"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 778
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 779
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v1, -0x3

    .line 815
    :cond_0
    :goto_0
    return v1

    .line 784
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 785
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 786
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    .line 787
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 790
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 797
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 815
    :cond_3
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/SdpManagerService;->resetPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 807
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 810
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "nameTag"    # Ljava/lang/String;
    .param p2, "resetToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3808
    const-string/jumbo v4, "saveTokenIntoTrusted"

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3810
    const/16 v2, -0x63

    .line 3811
    .local v2, "ret":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3812
    :cond_0
    const/16 v4, -0xb

    .line 3822
    :goto_0
    return v4

    .line 3814
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3815
    .local v3, "userId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3816
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 3818
    .local v1, "entry":[B
    invoke-direct {p0, v3, v0}, Lcom/android/server/SdpManagerService;->deleteTokenInternal(ILjava/lang/String;)Z

    .line 3820
    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/SdpManagerService;->saveTokenInternal(ILjava/lang/String;[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3821
    const/4 v2, 0x0

    :cond_2
    move v4, v2

    .line 3822
    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 735
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 736
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v1, -0x3

    .line 772
    :cond_0
    :goto_0
    return v1

    .line 741
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 742
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 743
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    .line 744
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 747
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 754
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 772
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpManagerService;->setPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 764
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 767
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSDPMigrating(IZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "isSdpMigrating"    # Z

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return-void

    .line 386
    :cond_0
    const-string/jumbo v1, "setSDPMigrating"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 387
    iput-boolean p2, p0, Lcom/android/server/SdpManagerService;->mWaitForPassword:Z

    .line 389
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 390
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 391
    .local v0, "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 395
    .end local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 393
    .restart local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setIsMigrating(Z)V

    .line 394
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 395
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSDPMigrating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "systemReady SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 299
    :cond_0
    const-string v1, "SdpManagerService"

    const-string v2, "SdpManagerService ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string/jumbo v1, "systemReady"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 301
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 302
    new-instance v1, Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .line 303
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "sending message MSG_SYSTEM_READY to handler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 305
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpManagerService$SdpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "systemReady done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 692
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 693
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v1, -0x3

    .line 729
    :cond_0
    :goto_0
    return v1

    .line 698
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 699
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 700
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    .line 701
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 704
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 711
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 721
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 724
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "nameTag"    # Ljava/lang/String;
    .param p2, "engineAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x8

    .line 3863
    const-string/jumbo v8, "unlockViaTrusted"

    invoke-static {v8}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3865
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3866
    const-string v7, "SdpManagerService"

    const-string v8, "SDP not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    const/4 v7, -0x3

    .line 3906
    :cond_0
    :goto_0
    return v7

    .line 3871
    :cond_1
    iget-object v8, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3872
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v2

    .line 3873
    .local v2, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v2, :cond_2

    .line 3874
    const-string v7, "SdpManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unlockViaTrusted :: Couldn\'t find engine info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    const/4 v7, -0x7

    monitor-exit v8

    goto :goto_0

    .line 3877
    .end local v2    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v2    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3885
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3888
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3891
    const-string v8, "SdpManagerService"

    const-string v9, "Permission denied to invoke engine control API"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3896
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3897
    .local v6, "userId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3898
    .local v0, "alias":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3900
    .local v3, "resetToken":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3901
    .local v4, "token":J
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v7, v6, v0}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v1

    .line 3902
    .local v1, "entry":[B
    if-eqz v1, :cond_4

    .line 3903
    new-instance v3, Ljava/lang/String;

    .end local v3    # "resetToken":Ljava/lang/String;
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 3905
    .restart local v3    # "resetToken":Ljava/lang/String;
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3906
    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->unlockViaTrustedInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I

    move-result v7

    goto :goto_0
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 845
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/4 v1, -0x3

    .line 861
    :goto_0
    return v1

    .line 849
    :cond_0
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "unregisterListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 856
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 857
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 858
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 859
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 861
    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpManagerService;->unregisterListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I

    move-result v1

    goto :goto_0
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4008
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4009
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    const/4 v1, -0x3

    .line 4027
    :goto_0
    return v1

    .line 4013
    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4014
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 4015
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 4016
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verify :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 4019
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4024
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4025
    const/4 v1, -0x8

    goto :goto_0

    .line 4027
    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
