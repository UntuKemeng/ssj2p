.class public final Landroid/app/epm/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/epm/PluginManager$IStatusListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG_ELASTIC:Z

.field private static TAG:Ljava/lang/String;

.field private static mInstance:Landroid/app/epm/PluginManager;

.field private static sService:Lcom/samsung/android/thememanager/IThemeManager;


# instance fields
.field private mCallback:Landroid/app/epm/IPluginManagerCallback;

.field private mClientCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/epm/PluginManager$IStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private pluginDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "PluginManager"

    sput-object v0, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Landroid/app/epm/PluginManager;->mContext:Landroid/content/Context;

    .line 59
    iput-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    .line 94
    new-instance v1, Landroid/app/epm/PluginManager$1;

    invoke-direct {v1, p0}, Landroid/app/epm/PluginManager$1;-><init>(Landroid/app/epm/PluginManager;)V

    iput-object v1, p0, Landroid/app/epm/PluginManager;->mConnection:Landroid/content/ServiceConnection;

    .line 670
    new-instance v1, Landroid/app/epm/PluginManager$2;

    invoke-direct {v1, p0}, Landroid/app/epm/PluginManager$2;-><init>(Landroid/app/epm/PluginManager;)V

    iput-object v1, p0, Landroid/app/epm/PluginManager;->mCallback:Landroid/app/epm/IPluginManagerCallback;

    .line 82
    iput-object p1, p0, Landroid/app/epm/PluginManager;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, "i":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.themecenter"

    const-string v3, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Landroid/app/epm/PluginManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/epm/PluginManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 91
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/thememanager/IThemeManager;)Lcom/samsung/android/thememanager/IThemeManager;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/thememanager/IThemeManager;

    .prologue
    .line 52
    sput-object p0, Landroid/app/epm/PluginManager;->sService:Lcom/samsung/android/thememanager/IThemeManager;

    return-object p0
.end method

.method static synthetic access$100(Landroid/app/epm/PluginManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/app/epm/PluginManager;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/app/epm/PluginManager;->mClientCallback:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getActiveAppliedPackage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 509
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 511
    const/16 v3, 0x9

    :try_start_0
    new-array v0, v3, [Ljava/lang/String;

    .line 512
    .local v0, "PackageArr":[Ljava/lang/String;
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/thememanager/IThemeManager;->getActiveComponents()[Ljava/lang/String;

    move-result-object v0

    .line 513
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 514
    .local v1, "currentPackage":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 515
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v0    # "PackageArr":[Ljava/lang/String;
    .end local v1    # "currentPackage":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 517
    :catch_0
    move-exception v2

    .line 518
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 521
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/epm/PluginManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    sget-object v0, Landroid/app/epm/PluginManager;->mInstance:Landroid/app/epm/PluginManager;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Landroid/app/epm/PluginManager;

    invoke-direct {v0, p0}, Landroid/app/epm/PluginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/epm/PluginManager;->mInstance:Landroid/app/epm/PluginManager;

    .line 125
    :cond_0
    sget-object v0, Landroid/app/epm/PluginManager;->mInstance:Landroid/app/epm/PluginManager;

    return-object v0
.end method

.method private getLanguagePackList(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPluginDetailsList(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 238
    return-void
.end method

.method public static getService()Lcom/samsung/android/thememanager/IThemeManager;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/app/epm/PluginManager;->sService:Lcom/samsung/android/thememanager/IThemeManager;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Landroid/app/epm/PluginManager;->sService:Lcom/samsung/android/thememanager/IThemeManager;

    .line 78
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/app/epm/PluginManager;->sService:Lcom/samsung/android/thememanager/IThemeManager;

    goto :goto_0
.end method

.method private getTitleFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v3, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 288
    sget-object v3, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "components = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v3, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 290
    .local v0, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 291
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 292
    .local v2, "s":Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 298
    .end local v0    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    const-string v3, "Default"

    goto :goto_0
.end method

.method private showThemeProgress(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isTrial"    # Z
    .param p3, "why"    # I

    .prologue
    .line 624
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 625
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.themecenter"

    const-string v3, "com.samsung.android.thememanager.ShowDialogService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 627
    const-string v1, "PACKAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    const-string/jumbo v1, "isTrial"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 629
    const-string/jumbo v1, "why"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 630
    const-string v1, "TITLE"

    invoke-direct {p0, p1}, Landroid/app/epm/PluginManager;->getTitleFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    iget-object v1, p0, Landroid/app/epm/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 632
    return-void
.end method


# virtual methods
.method public applyThemePackage(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isTrial"    # Z

    .prologue
    .line 616
    const/16 v0, 0x65

    invoke-direct {p0, p1, p2, v0}, Landroid/app/epm/PluginManager;->showThemeProgress(Ljava/lang/String;ZI)V

    .line 619
    const/4 v0, 0x1

    return v0
.end method

.method public changeThemeState(Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "order"    # I
    .param p3, "isTrial"    # Z

    .prologue
    .line 580
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/thememanager/IThemeManager;->changeThemeState(Ljava/lang/String;IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 587
    :goto_0
    return v0

    .line 583
    :catch_0
    move-exception v0

    .line 587
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteThemePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/thememanager/IThemeManager;->removeThemePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getActiveComponents()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/thememanager/IThemeManager;->getActiveComponents()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 468
    :goto_0
    return-object v0

    .line 464
    :catch_0
    move-exception v0

    .line 468
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveMyEvents()Ljava/util/List;
    .locals 1
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
    .line 479
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/thememanager/IThemeManager;->getActiveMyEvents()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    .line 482
    :catch_0
    move-exception v0

    .line 486
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCategory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 1
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
    .line 643
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/thememanager/IThemeManager;->getCategoryList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 649
    :goto_0
    return-object v0

    .line 646
    :catch_0
    move-exception v0

    .line 649
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChineseFestivalList()Ljava/util/List;
    .locals 3
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
    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v1, "tmpChineseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 260
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/thememanager/IThemeManager;->getChineseFestivalList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 265
    :cond_0
    :goto_0
    return-object v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getComponentPackageMap()V
    .locals 2

    .prologue
    .line 244
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/thememanager/IThemeManager;->getComponentPackageMap()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentThemePackage()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 500
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/thememanager/IThemeManager;->getCurrentThemePackage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 505
    :cond_0
    :goto_0
    return-object v1

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    .local v0, "titleDesc":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .end local v0    # "titleDesc":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v1, p0, Landroid/app/epm/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 206
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getListByCategory(I)Ljava/util/List;
    .locals 1
    .param p1, "category"    # I
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
    .line 661
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/thememanager/IThemeManager;->getListByCategory(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    .line 664
    :catch_0
    move-exception v0

    .line 667
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginPackageList()Ljava/util/List;
    .locals 2
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
    .line 135
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/app/epm/PluginManager;->getPluginDetailsList(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    .local v0, "pluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getStateThemePackage(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 430
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 432
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/thememanager/IThemeManager;->getStateThemePackage(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 438
    :cond_0
    :goto_0
    return v1

    .line 433
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getStatus(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThemesForComponent(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "compName"    # Ljava/lang/String;
    .param p2, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v0, "packageListForComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "packageListForComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 281
    .restart local v0    # "packageListForComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    .local v0, "titleDesc":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .end local v0    # "titleDesc":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getVersionForMaster(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "version":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 351
    iget-object v3, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v2, v3, v4

    .line 358
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getVersionForThemeFramework()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    const-string v0, "1.0.0"

    return-object v0
.end method

.method public installThemePackage(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "path"    # Landroid/net/Uri;
    .param p2, "isTrial"    # Z

    .prologue
    .line 378
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/thememanager/IThemeManager;->installThemePackage(Landroid/net/Uri;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isOnTrialMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/thememanager/IThemeManager;->isOnTrialMode(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 401
    :goto_0
    return v0

    .line 397
    :catch_0
    move-exception v0

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeThemePackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 410
    const/4 v0, 0x0

    const/16 v1, 0x66

    invoke-direct {p0, p1, v0, v1}, Landroid/app/epm/PluginManager;->showThemeProgress(Ljava/lang/String;ZI)V

    .line 411
    return-void
.end method

.method public setDeleteMyEvents(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "myEventType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/thememanager/IThemeManager;->setDeleteMyEvents(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setStateThemePackage(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/4 v1, -0x1

    .line 442
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 444
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/thememanager/IThemeManager;->setStateThemePackage(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 450
    :cond_0
    :goto_0
    return v1

    .line 445
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setStatusListener(Landroid/app/epm/PluginManager$IStatusListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/epm/PluginManager$IStatusListener;

    .prologue
    .line 220
    iget-object v0, p0, Landroid/app/epm/PluginManager;->mClientCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public setTimeForMyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "myEventType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "startTime"    # Ljava/lang/String;
    .param p4, "repeatSchedule"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/thememanager/IThemeManager;->setTimeForMyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopTrialThemePackage()Z
    .locals 2

    .prologue
    .line 600
    invoke-direct {p0}, Landroid/app/epm/PluginManager;->getActiveAppliedPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/epm/PluginManager;->applyThemePackage(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
