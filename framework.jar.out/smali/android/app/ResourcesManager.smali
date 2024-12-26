.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final IS_OVERLAY_THEMES_ENABLED:Z = false

.field private static final SAFE_DEBUG:Z

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final DEBUG_ELASTIC:Z

.field private final DEBUG_THEMES:Z

.field private final IS_ELASTIC_ENABLED:Z

.field private cookieMap:Ljava/util/HashMap;
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

.field private final mActiveResources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field private mElasticAssets:Landroid/content/res/AssetManager;

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;

.field mResConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field mScreenResConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/app/ResourcesManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v1, p0, Landroid/app/ResourcesManager;->DEBUG_ELASTIC:Z

    .line 85
    iput-boolean v1, p0, Landroid/app/ResourcesManager;->DEBUG_THEMES:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->cookieMap:Ljava/util/HashMap;

    .line 89
    iput-boolean v1, p0, Landroid/app/ResourcesManager;->IS_ELASTIC_ENABLED:Z

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    return-void
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .prologue
    .line 109
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 110
    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 113
    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v1

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 200
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Z)Z

    move-result v0

    return v0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Z)Z
    .locals 28
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "force"    # Z

    .prologue
    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 516
    new-instance v24, Landroid/content/res/Configuration;

    invoke-direct/range {v24 .. v24}, Landroid/content/res/Configuration;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 525
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v24

    if-nez v24, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 528
    const/16 v24, 0x0

    .line 718
    :goto_0
    return v24

    .line 530
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v4

    .line 548
    .local v4, "changes":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->clear()V

    .line 549
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 574
    .local v6, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 576
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 577
    or-int/lit16 v4, v4, 0xd00

    .line 583
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 584
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 593
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v6, v1}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 595
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 598
    const/16 v23, 0x0

    .line 600
    .local v23, "tmpConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->size()I

    move-result v24

    add-int/lit8 v10, v24, -0x1

    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_12

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/res/ResourcesKey;

    .line 602
    .local v15, "key":Landroid/content/res/ResourcesKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/res/Resources;

    .line 603
    .local v20, "r":Landroid/content/res/Resources;
    if-eqz v20, :cond_11

    .line 607
    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Resources;->mResUserId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v24

    if-nez v24, :cond_7

    invoke-static {v4}, Landroid/content/res/Configuration;->needToUpdateOverlays(I)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 612
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    .line 614
    .local v5, "currentPackageName":Ljava/lang/String;
    if-eqz v5, :cond_c

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    const/4 v14, 0x1

    .line 616
    .local v14, "isOtherPackageResource":Z
    :goto_2
    if-nez v5, :cond_d

    const-string v24, "android"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_d

    const/4 v13, 0x1

    .line 617
    .local v13, "isNotSystemResource":Z
    :goto_3
    if-nez v14, :cond_5

    if-eqz v13, :cond_7

    .line 619
    :cond_5
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v24

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v19

    .line 620
    .local v19, "pi":Landroid/app/LoadedApk;
    if-eqz v19, :cond_7

    .line 621
    invoke-virtual/range {v19 .. v19}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v22

    .line 622
    .local v22, "resourceDirs":[Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 624
    .local v17, "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v22, :cond_6

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    if-nez v24, :cond_e

    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_e

    .line 642
    .end local v5    # "currentPackageName":Ljava/lang/String;
    .end local v13    # "isNotSystemResource":Z
    .end local v14    # "isOtherPackageResource":Z
    .end local v17    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "pi":Landroid/app/LoadedApk;
    .end local v22    # "resourceDirs":[Ljava/lang/String;
    :cond_7
    iget v7, v15, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 644
    .local v7, "displayId":I
    if-nez v7, :cond_f

    const/4 v12, 0x1

    .line 647
    .local v12, "isDefaultDisplay":Z
    :goto_4
    const/16 v18, 0x0

    .line 649
    .local v18, "overrideMetrics":Landroid/util/DisplayMetrics;
    move-object v8, v6

    .line 650
    .local v8, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v15}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v9

    .line 651
    .local v9, "hasOverrideConfiguration":Z
    if-eqz v12, :cond_8

    if-eqz v9, :cond_10

    .line 652
    :cond_8
    if-nez v23, :cond_9

    .line 653
    new-instance v23, Landroid/content/res/Configuration;

    .end local v23    # "tmpConfig":Landroid/content/res/Configuration;
    invoke-direct/range {v23 .. v23}, Landroid/content/res/Configuration;-><init>()V

    .line 655
    .restart local v23    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_9
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 656
    if-nez v12, :cond_a

    .line 657
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 658
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 660
    :cond_a
    if-eqz v9, :cond_b

    .line 681
    iget-object v0, v15, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 696
    :cond_b
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 600
    .end local v7    # "displayId":I
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v9    # "hasOverrideConfiguration":Z
    .end local v12    # "isDefaultDisplay":Z
    .end local v18    # "overrideMetrics":Landroid/util/DisplayMetrics;
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_1

    .line 614
    .restart local v5    # "currentPackageName":Ljava/lang/String;
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 616
    .restart local v14    # "isOtherPackageResource":Z
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 628
    .restart local v13    # "isNotSystemResource":Z
    .restart local v17    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "pi":Landroid/app/LoadedApk;
    .restart local v22    # "resourceDirs":[Ljava/lang/String;
    :cond_e
    const-string v24, "ResourcesManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "removeOverlayPath "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;)I

    .line 630
    if-eqz v22, :cond_7

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_7

    .line 632
    move-object/from16 v3, v22

    .local v3, "arr$":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_6
    move/from16 v0, v16

    if-ge v11, v0, :cond_7

    aget-object v21, v3, v11

    .line 633
    .local v21, "resourceDir":Ljava/lang/String;
    const-string v24, "ResourcesManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Adding overlay path "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " for resources "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "--"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    .line 632
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 644
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "currentPackageName":Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "isNotSystemResource":Z
    .end local v14    # "isOtherPackageResource":Z
    .end local v16    # "len$":I
    .end local v17    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "pi":Landroid/app/LoadedApk;
    .end local v21    # "resourceDir":Ljava/lang/String;
    .end local v22    # "resourceDirs":[Ljava/lang/String;
    .restart local v7    # "displayId":I
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 707
    .restart local v8    # "dm":Landroid/util/DisplayMetrics;
    .restart local v9    # "hasOverrideConfiguration":Z
    .restart local v12    # "isDefaultDisplay":Z
    .restart local v18    # "overrideMetrics":Landroid/util/DisplayMetrics;
    :cond_10
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto/16 :goto_5

    .line 714
    .end local v7    # "displayId":I
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v9    # "hasOverrideConfiguration":Z
    .end local v12    # "isDefaultDisplay":Z
    .end local v18    # "overrideMetrics":Landroid/util/DisplayMetrics;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto/16 :goto_5

    .line 718
    .end local v15    # "key":Landroid/content/res/ResourcesKey;
    .end local v20    # "r":Landroid/content/res/Resources;
    :cond_12
    if-eqz v4, :cond_13

    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_13
    const/16 v24, 0x0

    goto/16 :goto_0
.end method

.method public final applyDisplayMetricsToResourcesLocked(Landroid/view/DisplayInfo;)V
    .locals 0
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .prologue
    .line 745
    return-void
.end method

.method final applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 178
    iput v3, p2, Landroid/content/res/Configuration;->touchscreen:I

    .line 179
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 180
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 181
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 182
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 183
    .local v0, "sl":I
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    .line 184
    const/4 v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->orientation:I

    .line 185
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 192
    :goto_0
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 193
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 194
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 195
    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 196
    return-void

    .line 188
    :cond_0
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    .line 189
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method public getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 216
    if-eqz p2, :cond_0

    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    .line 218
    .local v1, "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 220
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 222
    .local v4, "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    if-eqz v4, :cond_1

    .line 223
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    .line 224
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    .line 225
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .end local v0    # "display":Landroid/view/Display;
    :goto_1
    return-object v0

    .line 216
    .end local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_0
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    goto :goto_0

    .line 228
    .restart local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .restart local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    .line 229
    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v2, :cond_2

    .line 231
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_1

    .line 238
    .end local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 233
    .restart local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_2
    :try_start_2
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/DisplayAdjustments;

    invoke-virtual {v2, p1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 234
    .restart local v0    # "display":Landroid/view/Display;
    if-eqz v0, :cond_3

    .line 235
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getConfiguration(I)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 156
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getConfigurationForScreen()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/app/ResourcesManager;->mScreenResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getDisplayMetricsLocked()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 165
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 166
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v2, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 168
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 169
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;Z)V

    .line 173
    :goto_0
    return-object v1

    .line 171
    :cond_0
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_0
.end method

.method public getResIdOffset(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 491
    iget-object v1, p0, Landroid/app/ResourcesManager;->cookieMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 492
    .local v0, "cookie":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 498
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 9
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 249
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "packageName"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 11
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "packageName"    # Ljava/lang/String;
    .param p9, "userId"    # I

    .prologue
    .line 276
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;ILandroid/os/IBinder;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;ILandroid/os/IBinder;)Landroid/content/res/Resources;
    .locals 24
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "packageName"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .param p10, "token"    # Landroid/os/IBinder;

    .prologue
    .line 283
    move-object/from16 v0, p7

    iget v6, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 284
    .local v6, "scale":F
    if-eqz p6, :cond_0

    new-instance v19, Landroid/content/res/Configuration;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 292
    .local v19, "overrideConfigCopy":Landroid/content/res/Configuration;
    :goto_0
    new-instance v2, Landroid/content/res/ResourcesKey;

    move-object/from16 v3, p1

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v7, p9

    invoke-direct/range {v2 .. v7}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FI)V

    .line 295
    .local v2, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    .line 300
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/ref/WeakReference;

    .line 301
    .local v23, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object/from16 v21, v3

    .line 303
    .local v21, "r":Landroid/content/res/Resources;
    :goto_1
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    monitor-exit p0

    move-object/from16 v12, v21

    .line 479
    :goto_2
    return-object v12

    .line 284
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    .end local v19    # "overrideConfigCopy":Landroid/content/res/Configuration;
    .end local v21    # "r":Landroid/content/res/Resources;
    .end local v23    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_0
    const/16 v19, 0x0

    goto :goto_0

    .line 301
    .restart local v2    # "key":Landroid/content/res/ResourcesKey;
    .restart local v19    # "overrideConfigCopy":Landroid/content/res/Configuration;
    .restart local v23    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    const/16 v21, 0x0

    goto :goto_1

    .line 311
    .restart local v21    # "r":Landroid/content/res/Resources;
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    const/4 v9, 0x0

    .line 363
    .local v9, "assets":Landroid/content/res/AssetManager;
    new-instance v9, Landroid/content/res/AssetManager;

    .end local v9    # "assets":Landroid/content/res/AssetManager;
    invoke-direct {v9}, Landroid/content/res/AssetManager;-><init>()V

    .line 367
    .restart local v9    # "assets":Landroid/content/res/AssetManager;
    if-eqz p1, :cond_3

    .line 368
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 369
    const/4 v12, 0x0

    goto :goto_2

    .line 311
    .end local v9    # "assets":Landroid/content/res/AssetManager;
    .end local v21    # "r":Landroid/content/res/Resources;
    .end local v23    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 378
    .restart local v9    # "assets":Landroid/content/res/AssetManager;
    .restart local v21    # "r":Landroid/content/res/Resources;
    .restart local v23    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_3
    if-eqz p2, :cond_5

    .line 379
    move-object/from16 v8, p2

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_3
    move/from16 v0, v17

    if-ge v14, v0, :cond_5

    aget-object v22, v8, v14

    .line 380
    .local v22, "splitResDir":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 381
    const/4 v12, 0x0

    goto :goto_2

    .line 379
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 390
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v22    # "splitResDir":Ljava/lang/String;
    :cond_5
    if-eqz p3, :cond_6

    invoke-static/range {p9 .. p9}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 395
    move-object/from16 v8, p3

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_4
    move/from16 v0, v17

    if-ge v14, v0, :cond_6

    aget-object v15, v8, v14

    .line 396
    .local v15, "idmapPath":Ljava/lang/String;
    invoke-virtual {v9, v15}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    .line 395
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 399
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v15    # "idmapPath":Ljava/lang/String;
    .end local v17    # "len$":I
    :cond_6
    if-eqz p4, :cond_8

    .line 400
    move-object/from16 v8, p4

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_5
    move/from16 v0, v17

    if-ge v14, v0, :cond_8

    aget-object v18, v8, v14

    .line 401
    .local v18, "libDir":Ljava/lang/String;
    const-string v3, ".apk"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 404
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 405
    const-string v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' does not exist or contains no resources."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 413
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v18    # "libDir":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 416
    .local v11, "dm":Landroid/util/DisplayMetrics;
    if-nez p5, :cond_c

    const/16 v16, 0x1

    .line 419
    .local v16, "isDefaultDisplay":Z
    :goto_6
    const/16 v20, 0x0

    .line 421
    .local v20, "overrideMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v13

    .line 422
    .local v13, "hasOverrideConfig":Z
    if-eqz v16, :cond_9

    if-eqz v13, :cond_d

    .line 423
    :cond_9
    new-instance v10, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 424
    .local v10, "config":Landroid/content/res/Configuration;
    if-nez v16, :cond_a

    .line 425
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v10}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 427
    :cond_a
    if-eqz v13, :cond_b

    .line 448
    iget-object v3, v2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 460
    :cond_b
    :goto_7
    new-instance v21, Landroid/content/res/Resources;

    .end local v21    # "r":Landroid/content/res/Resources;
    move-object/from16 v0, v21

    move-object/from16 v1, p7

    invoke-direct {v0, v9, v11, v10, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 462
    .restart local v21    # "r":Landroid/content/res/Resources;
    move-object/from16 v0, p8

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    .line 463
    move/from16 v0, p9

    move-object/from16 v1, v21

    iput v0, v1, Landroid/content/res/Resources;->mResUserId:I

    .line 467
    monitor-enter p0

    .line 468
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v23, Ljava/lang/ref/WeakReference;

    .line 469
    .restart local v23    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v23, :cond_e

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v12, v3

    .line 470
    .local v12, "existing":Landroid/content/res/Resources;
    :goto_8
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 473
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    .line 474
    monitor-exit p0

    goto/16 :goto_2

    .line 480
    .end local v12    # "existing":Landroid/content/res/Resources;
    .end local v23    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 416
    .end local v10    # "config":Landroid/content/res/Configuration;
    .end local v13    # "hasOverrideConfig":Z
    .end local v16    # "isDefaultDisplay":Z
    .end local v20    # "overrideMetrics":Landroid/util/DisplayMetrics;
    .restart local v23    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_c
    const/16 v16, 0x0

    goto :goto_6

    .line 453
    .restart local v13    # "hasOverrideConfig":Z
    .restart local v16    # "isDefaultDisplay":Z
    .restart local v20    # "overrideMetrics":Landroid/util/DisplayMetrics;
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v10

    .restart local v10    # "config":Landroid/content/res/Configuration;
    goto :goto_7

    .line 469
    :cond_e
    const/4 v12, 0x0

    goto :goto_8

    .line 478
    .restart local v12    # "existing":Landroid/content/res/Resources;
    :cond_f
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v12, v21

    goto/16 :goto_2
.end method
