.class public Landroid/os/DssHelper;
.super Ljava/lang/Object;
.source "DssHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DssHelper$DssAppDate;
    }
.end annotation


# static fields
.field public static final DSS_ENABLED:Z = true

.field static final TAG:Ljava/lang/String; = "DssHelper"

.field private static mInstance:Landroid/os/DssHelper;


# instance fields
.field private final DEFAULT_CPU_LEVEL:I

.field private final DEFAULT_FACTOR:F

.field private final DEFAULT_GAME_SIOP_LEVEL:I

.field private final DEFAULT_GPU_LEVEL:I

.field mWhiteAdssList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/DssHelper$DssAppDate;",
            ">;"
        }
    .end annotation
.end field

.field mWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/DssHelper$DssAppDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Landroid/os/DssHelper;->DEFAULT_GAME_SIOP_LEVEL:I

    .line 33
    iput v0, p0, Landroid/os/DssHelper;->DEFAULT_CPU_LEVEL:I

    .line 34
    iput v0, p0, Landroid/os/DssHelper;->DEFAULT_GPU_LEVEL:I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    .line 175
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/os/DssHelper;->DEFAULT_FACTOR:F

    .line 74
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/os/DssHelper;
    .locals 2

    .prologue
    .line 79
    const-class v1, Landroid/os/DssHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/os/DssHelper;

    invoke-direct {v0}, Landroid/os/DssHelper;-><init>()V

    sput-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    .line 82
    :cond_0
    sget-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addAdssPackageByTransact(Ljava/lang/String;F)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/DssHelper$DssAppDate;

    invoke-direct {v0, p0}, Landroid/os/DssHelper$DssAppDate;-><init>(Landroid/os/DssHelper;)V

    .line 107
    .local v0, "dssAppData":Landroid/os/DssHelper$DssAppDate;
    invoke-virtual {v0, p2}, Landroid/os/DssHelper$DssAppDate;->addPackage(F)V

    .line 108
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 106
    .end local v0    # "dssAppData":Landroid/os/DssHelper$DssAppDate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addPackage(Ljava/lang/String;F)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    .prologue
    .line 90
    monitor-enter p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/DssHelper;->removePackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/os/DssHelper;->addPackageData(Ljava/lang/String;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addPackageByTransact(Ljava/lang/String;F)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    .prologue
    .line 98
    monitor-enter p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 99
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/DssHelper;->removePackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/os/DssHelper;->addPackageData(Ljava/lang/String;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;F)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/DssHelper$DssAppDate;

    invoke-direct {v0, p0}, Landroid/os/DssHelper$DssAppDate;-><init>(Landroid/os/DssHelper;)V

    .line 147
    .local v0, "dssAppData":Landroid/os/DssHelper$DssAppDate;
    invoke-virtual {v0, p2}, Landroid/os/DssHelper$DssAppDate;->addPackage(F)V

    .line 148
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 146
    .end local v0    # "dssAppData":Landroid/os/DssHelper$DssAppDate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;FI)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F
    .param p3, "gameSiopLevel"    # I

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/DssHelper$DssAppDate;

    invoke-direct {v0, p0}, Landroid/os/DssHelper$DssAppDate;-><init>(Landroid/os/DssHelper;)V

    .line 153
    .local v0, "dssAppData":Landroid/os/DssHelper$DssAppDate;
    invoke-virtual {v0, p2, p3}, Landroid/os/DssHelper$DssAppDate;->addPackage(FI)V

    .line 154
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 152
    .end local v0    # "dssAppData":Landroid/os/DssHelper$DssAppDate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;FLjava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F
    .param p3, "gameSiopLevels"    # Ljava/lang/String;

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/DssHelper$DssAppDate;

    invoke-direct {v0, p0}, Landroid/os/DssHelper$DssAppDate;-><init>(Landroid/os/DssHelper;)V

    .line 159
    .local v0, "dssAppData":Landroid/os/DssHelper$DssAppDate;
    invoke-virtual {v0, p2, p3}, Landroid/os/DssHelper$DssAppDate;->addPackage(FLjava/lang/String;)V

    .line 160
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 158
    .end local v0    # "dssAppData":Landroid/os/DssHelper$DssAppDate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getGameSiopLevel(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    .line 130
    .local v0, "result":Landroid/os/DssHelper$DssAppDate;
    iget v1, v0, Landroid/os/DssHelper$DssAppDate;->mGameSiopLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v0    # "result":Landroid/os/DssHelper$DssAppDate;
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getGameSiopLevelString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    .line 139
    .local v0, "result":Landroid/os/DssHelper$DssAppDate;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/os/DssHelper$DssAppDate;->mCpuLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/os/DssHelper$DssAppDate;->mGpuLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 142
    .end local v0    # "result":Landroid/os/DssHelper$DssAppDate;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "0,0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getScalingFactor()F
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    const/high16 v0, 0x3f000000    # 0.5f

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getScalingFactor(Ljava/lang/String;)F
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    .line 184
    .local v0, "result":Landroid/os/DssHelper$DssAppDate;
    iget v1, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .end local v0    # "result":Landroid/os/DssHelper$DssAppDate;
    :goto_0
    monitor-exit p0

    return v1

    .line 186
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    .line 188
    .restart local v0    # "result":Landroid/os/DssHelper$DssAppDate;
    iget v1, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    .end local v0    # "result":Landroid/os/DssHelper$DssAppDate;
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getScalingFactorAdss(Ljava/lang/String;)F
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    iget v0, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :goto_0
    monitor-exit p0

    return v0

    .line 198
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    iget v0, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    iget v0, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWhiteList()Ljava/lang/StringBuilder;
    .locals 8

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "dss0_5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v1, "dss0_75List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 221
    .local v2, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DssHelper$DssAppDate;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/DssHelper$DssAppDate;

    iget v6, v6, Landroid/os/DssHelper$DssAppDate;->mScale:F

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 222
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 215
    .end local v0    # "dss0_5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "dss0_75List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DssHelper$DssAppDate;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 223
    .restart local v0    # "dss0_5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "dss0_75List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DssHelper$DssAppDate;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/DssHelper$DssAppDate;

    iget v6, v6, Landroid/os/DssHelper$DssAppDate;->mScale:F

    const/high16 v7, 0x3f400000    # 0.75f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 224
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    .end local v2    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DssHelper$DssAppDate;>;"
    :cond_2
    const-string v6, "DSS 0.5 Group\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v6, "=============\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 231
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 234
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v6, "DSS 0.75 Group\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v6, "=============\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 239
    .restart local v4    # "packageName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 242
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    monitor-exit p0

    return-object v5
.end method

.method public declared-synchronized isAdss(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPackageExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 112
    monitor-enter p0

    const/4 v0, 0x0

    .line 113
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const/4 v0, 0x1

    .line 117
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 115
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAdssPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showAllDSSInfo()V
    .locals 5

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DssHelper$DssAppDate;>;"
    const-string v3, "DssHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DSS PackageName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",  Scale : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DssHelper$DssAppDate;

    iget v2, v2, Landroid/os/DssHelper$DssAppDate;->mScale:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", GameSiopLevel :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DssHelper$DssAppDate;

    iget v2, v2, Landroid/os/DssHelper$DssAppDate;->mGameSiopLevel:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", CpuLevel :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DssHelper$DssAppDate;

    iget v2, v2, Landroid/os/DssHelper$DssAppDate;->mCpuLevel:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", GpuLevel :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DssHelper$DssAppDate;

    iget v2, v2, Landroid/os/DssHelper$DssAppDate;->mGpuLevel:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 207
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DssHelper$DssAppDate;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 212
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method
