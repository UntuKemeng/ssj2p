.class public Landroid/os/OdtcHelper;
.super Ljava/lang/Object;
.source "OdtcHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OdtcHelper$OdtcPackageInfo;
    }
.end annotation


# static fields
.field private static ERROR_CODE:I = 0x0

.field private static final MINIMUM_FREE_STORAGE_MEM:J = 0x40000000L

.field private static final MINIMUM_GLOBALMEMORYTHRESHOLD:I = 0x100000

.field private static final ODTCHELPER_TAG:Ljava/lang/String; = "ODTC_HELPER"

.field private static final ODTC_RECORD_REDIRECT:I = 0x1

.field private static final ODTC_REDIRECT:I = 0x2

.field private static final PERGAME_LIMIT:I = 0x6400000

.field private static final debug:Z

.field private static globalOccupiedOdtcMem:I

.field private static isNativeWrapperLibLoaded:Z

.field private static mInstance:Landroid/os/OdtcHelper;

.field private static odtcSessionAppCounter:B


# instance fields
.field private globalOdtcMem:I

.field private mContext:Landroid/content/Context;

.field odtcAllowedPackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/OdtcHelper$OdtcPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field sessionAllowedPackagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    sput-boolean v2, Landroid/os/OdtcHelper;->isNativeWrapperLibLoaded:Z

    .line 32
    const/4 v1, 0x0

    sput-object v1, Landroid/os/OdtcHelper;->mInstance:Landroid/os/OdtcHelper;

    .line 33
    sput v2, Landroid/os/OdtcHelper;->globalOccupiedOdtcMem:I

    .line 37
    const/16 v1, 0x3e7

    sput v1, Landroid/os/OdtcHelper;->ERROR_CODE:I

    .line 38
    sput-byte v2, Landroid/os/OdtcHelper;->odtcSessionAppCounter:B

    .line 51
    :try_start_0
    const-string v1, "egl_odtc_wrapper"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    const/4 v1, 0x1

    sput-boolean v1, Landroid/os/OdtcHelper;->isNativeWrapperLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 53
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 54
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v2, Landroid/os/OdtcHelper;->isNativeWrapperLibLoaded:Z

    .line 55
    const-string v1, "ODTC_HELPER"

    const-string v2, "STS_ODTC : WARNING_ODTC : libegl_odtc_wrapper.so loading failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/OdtcHelper;->mContext:Landroid/content/Context;

    .line 43
    const/high16 v0, 0x12c00000

    iput v0, p0, Landroid/os/OdtcHelper;->globalOdtcMem:I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/OdtcHelper;->sessionAllowedPackagesList:Ljava/util/ArrayList;

    .line 220
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/os/OdtcHelper;
    .locals 2

    .prologue
    .line 60
    const-class v1, Landroid/os/OdtcHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/OdtcHelper;->mInstance:Landroid/os/OdtcHelper;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/os/OdtcHelper;

    invoke-direct {v0}, Landroid/os/OdtcHelper;-><init>()V

    sput-object v0, Landroid/os/OdtcHelper;->mInstance:Landroid/os/OdtcHelper;

    .line 63
    :cond_0
    sget-object v0, Landroid/os/OdtcHelper;->mInstance:Landroid/os/OdtcHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getODTCVersion()I
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Landroid/os/OdtcHelper;->isNativeWrapperLibLoaded:Z

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/OdtcHelper;->nativeGetODTCVersion()I

    move-result v0

    goto :goto_0
.end method

.method private isStorageAvailable()Z
    .locals 6

    .prologue
    .line 199
    iget v3, p0, Landroid/os/OdtcHelper;->globalOdtcMem:I

    sget v4, Landroid/os/OdtcHelper;->globalOccupiedOdtcMem:I

    sub-int v2, v3, v4

    .line 200
    .local v2, "odtcCacheUsableMemory":I
    new-instance v3, Landroid/os/StatFs;

    const-string v4, "/data/"

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    .line 202
    .local v0, "availableSizeInBytes":J
    const/high16 v3, 0x100000

    if-le v2, v3, :cond_0

    const-wide/32 v4, 0x40000000

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 203
    const/4 v3, 0x1

    .line 205
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static native nativeGetODTCVersion()I
.end method


# virtual methods
.method public declared-synchronized addPackage(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pckg"    # Ljava/lang/String;
    .param p2, "option"    # Z

    .prologue
    .line 128
    monitor-enter p0

    if-nez p2, :cond_0

    .line 129
    :try_start_0
    iget-object v1, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :goto_0
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/OdtcHelper$OdtcPackageInfo;

    invoke-direct {v0}, Landroid/os/OdtcHelper$OdtcPackageInfo;-><init>()V

    .line 133
    .local v0, "odtcPckg":Landroid/os/OdtcHelper$OdtcPackageInfo;
    iget-object v1, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    .end local v0    # "odtcPckg":Landroid/os/OdtcHelper$OdtcPackageInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAllowedOdtcPackageList()Ljava/util/List;
    .locals 4
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
    .line 141
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "gameTunerAllowedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    .local v2, "pckg":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 141
    .end local v0    # "gameTunerAllowedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pckg":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 146
    .restart local v0    # "gameTunerAllowedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public getGlobalODTCMemory()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Landroid/os/OdtcHelper;->globalOdtcMem:I

    return v0
.end method

.method public getGlobalOccupiedODTCMemory()I
    .locals 1

    .prologue
    .line 167
    sget v0, Landroid/os/OdtcHelper;->globalOccupiedOdtcMem:I

    return v0
.end method

.method public declared-synchronized getODTCAppType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pckg"    # Ljava/lang/String;

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/OdtcHelper$OdtcPackageInfo;

    invoke-virtual {v1}, Landroid/os/OdtcHelper$OdtcPackageInfo;->getAppType()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 175
    .local v0, "type":Ljava/lang/Character;
    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result v1

    if-nez v1, :cond_0

    .line 176
    const-string v1, "EGL"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "JNI"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    .end local v0    # "type":Ljava/lang/Character;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getODTCOption(Ljava/lang/String;)I
    .locals 1
    .param p1, "pckg"    # Ljava/lang/String;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/os/OdtcHelper;->isStorageAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 118
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPackageExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
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

.method public notifyOFS(Ljava/lang/String;)V
    .locals 4
    .param p1, "pckg"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/os/OdtcHelper;->isPackageExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "service.odtcfactory.sec.com.odtcfactoryservice"

    const-string/jumbo v3, "service.odtcfactory.sec.com.odtcfactoryservice.odtcfactory.AlarmReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "service.odtcfactory.sec.com.odtcfactoryservice.odtcfactory.CACHE_MANAGEMENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Landroid/os/OdtcHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Landroid/os/OdtcHelper;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 105
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public declared-synchronized setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/os/OdtcHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showAllODTCInfo()V
    .locals 6

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/OdtcHelper$OdtcPackageInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/OdtcHelper$OdtcPackageInfo;

    .line 211
    .local v2, "odtcObject":Landroid/os/OdtcHelper$OdtcPackageInfo;
    const-string v4, "ODTC_HELPER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STS_ODTC PackageName : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",  ODTC Data is : App type :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/os/OdtcHelper$OdtcPackageInfo;->appType:C
    invoke-static {v2}, Landroid/os/OdtcHelper$OdtcPackageInfo;->access$000(Landroid/os/OdtcHelper$OdtcPackageInfo;)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Health Factor "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/os/OdtcHelper$OdtcPackageInfo;->healthFactor:S
    invoke-static {v2}, Landroid/os/OdtcHelper$OdtcPackageInfo;->access$100(Landroid/os/OdtcHelper$OdtcPackageInfo;)S

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Memory Consumed "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/os/OdtcHelper$OdtcPackageInfo;->memConsumed:I
    invoke-static {v2}, Landroid/os/OdtcHelper$OdtcPackageInfo;->access$200(Landroid/os/OdtcHelper$OdtcPackageInfo;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 209
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/OdtcHelper$OdtcPackageInfo;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "odtcObject":Landroid/os/OdtcHelper$OdtcPackageInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 214
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public updateGlobalODTCMemory(I)V
    .locals 1
    .param p1, "memorySize"    # I

    .prologue
    .line 153
    mul-int/lit16 v0, p1, 0x400

    mul-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/os/OdtcHelper;->globalOdtcMem:I

    .line 154
    return-void
.end method

.method public declared-synchronized updateOdtcPackageEntry(Ljava/lang/String;CSI)V
    .locals 5
    .param p1, "pckg"    # Ljava/lang/String;
    .param p2, "appType"    # C
    .param p3, "healthFactor"    # S
    .param p4, "memConsumed"    # I

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/OdtcHelper$OdtcPackageInfo;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/OdtcHelper$OdtcPackageInfo;-><init>(CII)V

    .line 191
    .local v0, "odtcPckgNewValue":Landroid/os/OdtcHelper$OdtcPackageInfo;
    iget-object v2, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/OdtcHelper$OdtcPackageInfo;

    .line 192
    .local v1, "odtcPckgOldValue":Landroid/os/OdtcHelper$OdtcPackageInfo;
    if-eqz v1, :cond_0

    .line 193
    sget v2, Landroid/os/OdtcHelper;->globalOccupiedOdtcMem:I

    invoke-virtual {v0}, Landroid/os/OdtcHelper$OdtcPackageInfo;->getMemConsumed()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/OdtcHelper$OdtcPackageInfo;->getMemConsumed()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    sput v2, Landroid/os/OdtcHelper;->globalOccupiedOdtcMem:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_0
    monitor-exit p0

    return-void

    .line 190
    .end local v0    # "odtcPckgNewValue":Landroid/os/OdtcHelper$OdtcPackageInfo;
    .end local v1    # "odtcPckgOldValue":Landroid/os/OdtcHelper$OdtcPackageInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
