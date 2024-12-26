.class final Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# static fields
.field public static final NO_TOP_IN_APP_STARTING:I = 0x0

.field public static final NO_TOP_SERVICE_IN_APP_KILLING:I = 0x2

.field static final PROCESS_KEEP_ALIVE_DENSITY:I = 0x1

.field private static SMART_DHA_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field public static final TOP_ACTIVITY_IN_APP_KILLING:I = 0x3

.field public static final TOP_IN_APP_STARTING:I = 0x1

.field static final forceSchedGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field adjSeq:I

.field adjSource:Ljava/lang/Object;

.field adjSourceProcState:I

.field adjTarget:Ljava/lang/Object;

.field adjType:Ljava/lang/String;

.field adjTypeCode:I

.field anrDialog:Landroid/app/Dialog;

.field bad:Z

.field baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

.field cached:Z

.field callerHotnessAdj:I

.field compat:Landroid/content/res/CompatibilityInfo;

.field final conProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field final connections:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field crashDialog:Landroid/app/Dialog;

.field crashHandler:Ljava/lang/Runnable;

.field crashing:Z

.field crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field curAdj:I

.field curCpuTime:J

.field curProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field curProcState:I

.field curRawAdj:I

.field curReceiver:Lcom/android/server/am/BroadcastRecord;

.field curSchedGroup:I

.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field debugging:Z

.field displayId:I

.field empty:Z

.field errorReportReceiver:Landroid/content/ComponentName;

.field execServicesFg:Z

.field final executingServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field fgInteractionTime:J

.field forceCrashReport:Z

.field forceSchedGroup:I

.field forcingToForeground:Landroid/os/IBinder;

.field foregroundActivities:Z

.field foregroundServices:Z

.field gids:[I

.field hasAboveClient:Z

.field hasClientActivities:Z

.field hasProviderClient:Z

.field hasShownUi:Z

.field hasStartedServices:Z

.field hotnessAdj:I

.field final info:Landroid/content/pm/ApplicationInfo;

.field initialIdlePss:J

.field instructionSet:Ljava/lang/String;

.field instrumentationArguments:Landroid/os/Bundle;

.field instrumentationClass:Landroid/content/ComponentName;

.field instrumentationInfo:Landroid/content/pm/ApplicationInfo;

.field instrumentationProfileFile:Ljava/lang/String;

.field instrumentationResultClass:Landroid/content/ComponentName;

.field instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

.field interactionEventTime:J

.field final isolated:Z

.field killed:Z

.field killedByAm:Z

.field lastActivityTime:J

.field lastCachedPss:J

.field lastCpuTime:J

.field lastLowMemory:J

.field lastProcState:I

.field lastPss:J

.field lastPssTime:J

.field lastRequestedGc:J

.field lastStateTime:J

.field lastWakeTime:J

.field latestTab:Z

.field listGroupPolicyPkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SchedPolicyManager$GroupPolicy;",
            ">;"
        }
    .end annotation
.end field

.field listGroupPolicyProc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SchedPolicyManager$GroupPolicy;",
            ">;"
        }
    .end annotation
.end field

.field lowestClientAdj:I

.field lowestClientName:Ljava/lang/String;

.field lruSeq:I

.field private final mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mKeepAlive:I

.field maxAdj:I

.field nextPssTime:J

.field notCachedSinceIdle:Z

.field notResponding:Z

.field notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field pendingUiClean:Z

.field persistent:Z

.field pid:I

.field pkgDeps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final pkgList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;"
        }
    .end annotation
.end field

.field procStateChanged:Z

.field final processName:Ljava/lang/String;

.field pssProcState:I

.field final pubProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field final receivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field removed:Z

.field repForegroundActivities:Z

.field repProcState:I

.field reportLowMemory:Z

.field reportedInteraction:Z

.field requiredAbi:Ljava/lang/String;

.field serviceHighRam:Z

.field serviceb:Z

.field final services:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field setAdj:I

.field setIsForeground:Z

.field setProcState:I

.field setRawAdj:I

.field setSchedGroup:I

.field shortStringName:Ljava/lang/String;

.field slowAbnormal:Z

.field slowAbnormalStay:Z

.field slowCached:Z

.field slowCachedStay:Z

.field startTime:J

.field startUss:J

.field starting:Z

.field stringName:Ljava/lang/String;

.field systemNoUi:Z

.field thread:Landroid/app/IApplicationThread;

.field treatLikeActivity:Z

.field trimMemoryLevel:I

.field final uid:I

.field uidRecord:Lcom/android/server/am/UidRecord;

.field final userId:I

.field usingWrapper:Z

.field waitDialog:Landroid/app/Dialog;

.field waitedForDebugger:Z

.field waitingToKill:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ProcessRecord;->SMART_DHA_DEBUG:Z

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessRecord;->forceSchedGroupMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 8
    .param p1, "_batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "_info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "_processName"    # Ljava/lang/String;
    .param p4, "_uid"    # I

    .prologue
    const/16 v7, 0x10

    const/16 v6, -0x64

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 115
    iput v3, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 116
    iput v3, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    .line 117
    iput v3, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 118
    iput v3, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 173
    iput v7, p0, Lcom/android/server/am/ProcessRecord;->lowestClientAdj:I

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->lowestClientName:Ljava/lang/String;

    .line 181
    iput v3, p0, Lcom/android/server/am/ProcessRecord;->lastProcState:I

    .line 184
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    .line 185
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->callerHotnessAdj:I

    .line 187
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->latestTab:Z

    .line 205
    iput v6, p0, Lcom/android/server/am/ProcessRecord;->forceSchedGroup:I

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 218
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    .line 220
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    .line 222
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    .line 224
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    .line 226
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    .line 579
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 580
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 581
    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, p4, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 582
    iput p4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 583
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 584
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 585
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    iget v5, p2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v4, v5}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iput v7, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 587
    iput v6, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    iput v6, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    .line 588
    iput v6, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iput v6, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 589
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    .line 590
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 591
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    iput-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    iput-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    .line 593
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->displayId:I

    .line 596
    invoke-static {}, Lcom/android/server/am/SchedPolicyManager;->getManager()Lcom/android/server/am/SchedPolicyManager;

    move-result-object v0

    .line 597
    .local v0, "manager":Lcom/android/server/am/SchedPolicyManager;
    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v0, p0}, Lcom/android/server/am/SchedPolicyManager;->applyPolicyToRecord(Lcom/android/server/am/ProcessRecord;)V

    .line 600
    :cond_0
    sget-boolean v1, Lcom/android/server/am/SchedPolicyManager;->DEBUG_CPUSET:Z

    if-eqz v1, :cond_1

    .line 601
    invoke-static {p0}, Lcom/android/server/am/ProcessRecord;->initSchedGroupForce(Lcom/android/server/am/ProcessRecord;)V

    .line 603
    :cond_1
    return-void

    .end local v0    # "manager":Lcom/android/server/am/SchedPolicyManager;
    :cond_2
    move v1, v2

    .line 581
    goto :goto_0
.end method

.method static initSchedGroupForce(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 209
    sget-object v1, Lcom/android/server/am/ProcessRecord;->forceSchedGroupMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 210
    .local v0, "schedGroup":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/16 v1, -0x64

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->forceSchedGroup:I

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->forceSchedGroup:I

    goto :goto_0
.end method

.method public static setSmartDHADebugMode(Z)V
    .locals 0
    .param p0, "debugMode"    # Z

    .prologue
    .line 345
    sput-boolean p0, Lcom/android/server/am/ProcessRecord;->SMART_DHA_DEBUG:Z

    .line 346
    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    const/4 v2, 0x1

    .line 814
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 815
    new-instance v1, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    invoke-direct {v1, p2}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    .line 818
    .local v1, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessRecord;->isKeepAlive(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 820
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x80

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 822
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.keepalive.density"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 824
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessRecord;->setKeepAlive(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v3, :cond_2

    .line 832
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p3, p1, v3, p2, v4}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 834
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    iget-object v3, v1, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v3, v4, :cond_1

    .line 836
    iget-object v3, v1, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 843
    .end local v1    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_1
    :goto_1
    return v2

    .line 839
    .restart local v1    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 843
    .end local v1    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 826
    .restart local v1    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 352
    .local v2, "now":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "user #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 353
    const-string v6, " uid="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 354
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v7, :cond_0

    .line 355
    const-string v6, " ISOLATED uid="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 357
    :cond_0
    const-string v6, " gids={"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    if-eqz v6, :cond_2

    .line 359
    const/4 v0, 0x0

    .local v0, "gi":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    array-length v6, v6

    if-ge v0, v6, :cond_2

    .line 360
    if-eqz v0, :cond_1

    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    aget v6, v6, v0

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "gi":I
    :cond_2
    const-string/jumbo v6, "}"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "requiredAbi="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->requiredAbi:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    const-string v6, " instructionSet="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instructionSet:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 369
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "class="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 372
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "manageSpaceActivityName="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 373
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "dir="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    const-string v6, " publicDir="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 377
    const-string v6, " data="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "packageList={"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 380
    if-lez v1, :cond_5

    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    :cond_5
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 383
    :cond_6
    const-string/jumbo v6, "}"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    if-eqz v6, :cond_9

    .line 385
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "packageDependencies={"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 387
    if-lez v1, :cond_7

    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    :cond_7
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 390
    :cond_8
    const-string/jumbo v6, "}"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "compat="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 393
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    if-eqz v6, :cond_b

    .line 395
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "instrumentationClass="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 397
    const-string v6, " instrumentationProfileFile="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 398
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "instrumentationArguments="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 401
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "instrumentationInfo="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 403
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_b

    .line 404
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v7, Landroid/util/PrintWriterPrinter;

    invoke-direct {v7, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 407
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "thread="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 408
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "pid="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " starting="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->starting:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 410
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "lastActivityTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 412
    const-string v6, " lastPssTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 414
    const-string v6, " nextPssTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 416
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 417
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "adjSeq="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 418
    const-string v6, " lruSeq="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 419
    const-string v6, " lastPss="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    invoke-static {p1, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 420
    const-string v6, " lastCachedPss="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    invoke-static {p1, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 421
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 422
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "cached="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 423
    const-string v6, " empty="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->empty:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 424
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v6, :cond_c

    .line 425
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "serviceb="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 426
    const-string v6, " serviceHighRam="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 428
    :cond_c
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    if-eqz v6, :cond_d

    .line 429
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "notCachedSinceIdle="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 430
    const-string v6, " initialIdlePss="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 432
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "oom: max="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 433
    const-string v6, " curRaw="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 434
    const-string v6, " setRaw="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 435
    const-string v6, " cur="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 436
    const-string v6, " set="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 437
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "curSchedGroup="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 438
    const-string v6, " setSchedGroup="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 439
    const-string v6, " systemNoUi="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 440
    const-string v6, " trimMemoryLevel="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 441
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "curProcState="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 442
    const-string v6, " repProcState="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 443
    const-string v6, " pssProcState="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 444
    const-string v6, " setProcState="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 445
    const-string v6, " lastStateTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 447
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 448
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-nez v6, :cond_e

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    if-nez v6, :cond_e

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-nez v6, :cond_e

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v6, :cond_f

    .line 449
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "hasShownUi="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 450
    const-string v6, " pendingUiClean="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 451
    const-string v6, " hasAboveClient="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 452
    const-string v6, " treatLikeActivity="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 454
    :cond_f
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    if-nez v6, :cond_10

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    if-eqz v6, :cond_11

    .line 455
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "setIsForeground="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 456
    const-string v6, " foregroundServices="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 457
    const-string v6, " forcingToForeground="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 459
    :cond_11
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-nez v6, :cond_12

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_15

    .line 460
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "reportedInteraction="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 462
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->interactionEventTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_13

    .line 463
    const-string v6, " time="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->interactionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 466
    :cond_13
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_14

    .line 467
    const-string v6, " fgInteractionTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 468
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 470
    :cond_14
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 472
    :cond_15
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v6, :cond_16

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v6, :cond_17

    .line 473
    :cond_16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "persistent="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 474
    const-string v6, " removed="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 476
    :cond_17
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-nez v6, :cond_18

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-nez v6, :cond_18

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    if-eqz v6, :cond_19

    .line 477
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "hasClientActivities="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 478
    const-string v6, " foregroundActivities="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 479
    const-string v6, " (rep="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, ")"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    :cond_19
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v6, :cond_1a

    .line 482
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "hasStartedServices="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 484
    :cond_1a
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_1b

    .line 486
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 487
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessWakeTime(IIJ)J

    move-result-wide v4

    .line 489
    .local v4, "wtime":J
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "lastWakeTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 491
    const-string v6, " timeUsed="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 492
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    sub-long v6, v4, v6

    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "lastCpuTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 494
    const-string v6, " timeUsed="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iget-wide v8, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    .end local v4    # "wtime":J
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "lastRequestedGc="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastRequestedGc:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 499
    const-string v6, " lastLowMemory="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 500
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastLowMemory:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 501
    const-string v6, " reportLowMemory="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->reportLowMemory:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 502
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v6, :cond_1c

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v6, :cond_1c

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v6, :cond_1d

    .line 503
    :cond_1c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "killed="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 504
    const-string v6, " killedByAm="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 505
    const-string v6, " waitingToKill="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    :cond_1d
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    if-nez v6, :cond_1e

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v6, :cond_1e

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-nez v6, :cond_1e

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v6, :cond_1e

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-nez v6, :cond_1e

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    if-eqz v6, :cond_20

    .line 509
    :cond_1e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "debugging="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 510
    const-string v6, " crashing="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 511
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 512
    const-string v6, " notResponding="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 513
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 514
    const-string v6, " bad="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 517
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v6, :cond_1f

    .line 518
    const-string v6, " errorReportReceiver="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 519
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 521
    :cond_1f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 524
    :cond_20
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->mKeepAlive:I

    if-eqz v6, :cond_21

    .line 525
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "mKeepAlive="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->mKeepAlive:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 528
    :cond_21
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_22

    .line 529
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Activities:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    const/4 v1, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_22

    .line 531
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 489
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 534
    :cond_22
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_23

    .line 535
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Services:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    const/4 v1, 0x0

    :goto_4
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v1, v6, :cond_23

    .line 537
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 540
    :cond_23
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_24

    .line 541
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Executing Services (fg="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, ")"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    const/4 v1, 0x0

    :goto_5
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v1, v6, :cond_24

    .line 544
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 547
    :cond_24
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_25

    .line 548
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Connections:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    const/4 v1, 0x0

    :goto_6
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v1, v6, :cond_25

    .line 550
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 553
    :cond_25
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-lez v6, :cond_26

    .line 554
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Published Providers:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    const/4 v1, 0x0

    :goto_7
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_26

    .line 556
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    -> "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 560
    :cond_26
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_27

    .line 561
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Connected Providers:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    const/4 v1, 0x0

    :goto_8
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_27

    .line 563
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {v6}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 566
    :cond_27
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v6, :cond_28

    .line 567
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "curReceiver="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 569
    :cond_28
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_29

    .line 570
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Receivers:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    const/4 v1, 0x0

    :goto_9
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v1, v6, :cond_29

    .line 572
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 571
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 575
    :cond_29
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 856
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    if-le v0, p1, :cond_0

    .line 857
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    iput p1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 859
    :cond_0
    return-void
.end method

.method public getHistoricallyAvgUSS(Lcom/android/server/am/ProcessStatsService;I)J
    .locals 14
    .param p1, "procstatsservice"    # Lcom/android/server/am/ProcessStatsService;
    .param p2, "avgCase"    # I

    .prologue
    .line 273
    const-wide/16 v0, 0x0

    .line 274
    .local v0, "beforeMemCheck":J
    const-wide/16 v8, 0x0

    .line 275
    .local v8, "timetaken":J
    const-wide/16 v6, 0x0

    .line 277
    .local v6, "ret":J
    sget-boolean v5, Lcom/android/server/am/ProcessRecord;->SMART_DHA_DEBUG:Z

    if-eqz v5, :cond_0

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    .line 279
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v12, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5, v10, v11, v12}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v4

    .line 283
    .local v4, "processStat":Lcom/android/internal/app/ProcessStats$ProcessState;
    packed-switch p2, :pswitch_data_0

    .line 316
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v11, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 322
    .local v3, "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v4, v3, v10, v11}, Lcom/android/internal/app/ProcessStats;->computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 323
    iget-wide v10, v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    const-wide/16 v12, 0x400

    mul-long v6, v10, v12

    .line 325
    sget-boolean v5, Lcom/android/server/am/ProcessRecord;->SMART_DHA_DEBUG:Z

    if-eqz v5, :cond_1

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v10

    sub-long v8, v10, v0

    .line 327
    const-string v5, "ActivityManager_SDHA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "procstat t :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "us, sz : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v12, 0x400

    div-long v12, v6, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "K, proc : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-nez v5, :cond_3

    .line 331
    sget-boolean v5, Lcom/android/server/am/ProcessRecord;->SMART_DHA_DEBUG:Z

    if-eqz v5, :cond_2

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    .line 334
    :cond_2
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 335
    .local v2, "mi":Lcom/android/internal/util/MemInfoReader;
    iget v5, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v5}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v6

    .line 336
    sget-boolean v5, Lcom/android/server/am/ProcessRecord;->SMART_DHA_DEBUG:Z

    if-eqz v5, :cond_3

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v10

    sub-long v8, v10, v0

    .line 338
    const-string v5, "ActivityManager_SDHA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "statm    t :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "us, sz : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v12, 0x400

    div-long v12, v6, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "K, proc : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v2    # "mi":Lcom/android/internal/util/MemInfoReader;
    :cond_3
    return-wide v6

    .line 285
    .end local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :pswitch_0
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v13, v11, v12

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 289
    .restart local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    goto/16 :goto_0

    .line 291
    .end local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :pswitch_1
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    const/16 v11, 0xd

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 299
    .restart local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    goto/16 :goto_0

    .line 302
    .end local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :pswitch_2
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/16 v13, 0xd

    aput v13, v11, v12

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 306
    .restart local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    goto/16 :goto_0

    .line 308
    .end local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :pswitch_3
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    const/4 v11, 0x3

    new-array v11, v11, [I

    fill-array-data v11, :array_1

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 313
    .restart local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    goto/16 :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 291
    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data

    .line 308
    :array_1
    .array-data 4
        0xa
        0xb
        0xc
    .end array-data
.end method

.method public getPackageList()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 896
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 897
    .local v2, "size":I
    if-nez v2, :cond_1

    .line 898
    const/4 v1, 0x0

    .line 904
    :cond_0
    return-object v1

    .line 900
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    .line 901
    .local v1, "list":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 902
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSetAdjWithServices()I
    .locals 2

    .prologue
    .line 847
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 848
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v0, :cond_0

    .line 849
    const/16 v0, 0x8

    .line 852
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    goto :goto_0
.end method

.method public isInterestingToUserLocked()Z
    .locals 4

    .prologue
    .line 662
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 663
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 664
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 665
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 666
    const/4 v3, 0x1

    .line 669
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return v3

    .line 663
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isKeepAlive(I)Z
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 266
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mKeepAlive:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method kill(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "noisy"    # Z

    .prologue
    const-wide/16 v6, 0x40

    const/4 v4, 0x1

    .line 721
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_2

    .line 722
    const-string/jumbo v0, "kill"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 723
    if-eqz p2, :cond_0

    .line 724
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (adj "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    const/16 v0, 0x7547

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 727
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 728
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V

    .line 729
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_1

    .line 730
    iput-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    .line 731
    iput-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 733
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 735
    :cond_2
    return-void
.end method

.method public makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .locals 8
    .param p1, "_thread"    # Landroid/app/IApplicationThread;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    .line 612
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_3

    .line 613
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 614
    .local v1, "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v1, :cond_0

    .line 615
    const/4 v2, -0x1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 617
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 619
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 621
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 622
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v7, v2, :cond_3

    .line 623
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 624
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v2, v1, :cond_1

    .line 625
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 627
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 629
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v2, v3, :cond_2

    .line 630
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 622
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 634
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v1    # "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v7    # "i":I
    :cond_3
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 635
    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .locals 2

    .prologue
    .line 785
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 786
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 787
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 788
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 789
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :goto_0
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    .line 797
    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 807
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-object v1

    .line 790
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 791
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 793
    :cond_2
    const-string/jumbo v1, "{null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 800
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 801
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 803
    :cond_4
    const-string/jumbo v1, "{null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 807
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .locals 9
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    const/4 v8, 0x0

    .line 638
    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 639
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 640
    .local v1, "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v1, :cond_2

    .line 641
    if-eqz v1, :cond_0

    .line 642
    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 644
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 646
    :cond_0
    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 647
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v7, v2, :cond_2

    .line 648
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 649
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v2, v1, :cond_1

    .line 650
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 652
    :cond_1
    iput-object v8, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 647
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 655
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v7    # "i":I
    :cond_2
    return-void
.end method

.method modifyRawOomAdj(I)I
    .locals 1
    .param p1, "adj"    # I

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-eqz v0, :cond_0

    .line 705
    if-gez p1, :cond_1

    .line 717
    :cond_0
    :goto_0
    return p1

    .line 707
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    .line 708
    const/4 p1, 0x1

    goto :goto_0

    .line 709
    :cond_2
    const/4 v0, 0x2

    if-ge p1, v0, :cond_3

    .line 710
    const/4 p1, 0x2

    goto :goto_0

    .line 711
    :cond_3
    const/16 v0, 0x9

    if-ge p1, v0, :cond_4

    .line 712
    const/16 p1, 0x9

    goto :goto_0

    .line 713
    :cond_4
    const/16 v0, 0xf

    if-ge p1, v0, :cond_0

    .line 714
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .locals 11
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    const/4 v10, 0x1

    .line 865
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 866
    .local v0, "N":I
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v1, :cond_3

    .line 867
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 868
    .local v4, "now":J
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 870
    if-eq v0, v10, :cond_2

    .line 871
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_1

    .line 872
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 873
    .local v7, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v1, :cond_0

    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v1, v2, :cond_0

    .line 874
    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 871
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 878
    .end local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 879
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3, v6}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v9

    .line 881
    .local v9, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    new-instance v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v7, v1}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    .line 883
    .restart local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iput-object v9, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 884
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v9, v1, :cond_2

    .line 886
    invoke-virtual {v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 893
    .end local v4    # "now":J
    .end local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v8    # "i":I
    .end local v9    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    :goto_1
    return-void

    .line 889
    :cond_3
    if-eq v0, v10, :cond_2

    .line 890
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 891
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v3, v6}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setKeepAlive(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 262
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mKeepAlive:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mKeepAlive:I

    .line 263
    return-void
.end method

.method public setPid(I)V
    .locals 1
    .param p1, "_pid"    # I

    .prologue
    const/4 v0, 0x0

    .line 606
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 607
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    .line 608
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    .line 609
    return-void
.end method

.method public stopFreezingAllLocked()V
    .locals 3

    .prologue
    .line 673
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 674
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 675
    add-int/lit8 v0, v0, -0x1

    .line 676
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_0

    .line 678
    :cond_0
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 738
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 739
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    .line 743
    :goto_0
    return-object v1

    .line 741
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 742
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 743
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    goto :goto_0
.end method

.method toShortString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2710

    .line 747
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 748
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 749
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 751
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ge v1, v2, :cond_1

    .line 752
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    const/16 v1, 0x75

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 755
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 756
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 757
    .local v0, "appId":I
    if-lt v0, v2, :cond_2

    .line 758
    const/16 v1, 0x61

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 759
    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 764
    :goto_1
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v2, :cond_0

    .line 765
    const/16 v1, 0x69

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 766
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const v2, 0x182b8

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 761
    :cond_2
    const/16 v1, 0x73

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 772
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    .line 781
    :goto_0
    return-object v1

    .line 775
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 776
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 780
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    goto :goto_0
.end method

.method public unlinkDeathRecipient()V
    .locals 3

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 684
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 685
    return-void
.end method

.method updateHasAboveClientLocked()V
    .locals 3

    .prologue
    .line 688
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 689
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 690
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 691
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v2, v0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 692
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 696
    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    return-void

    .line 689
    .restart local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
