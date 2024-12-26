.class public Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
.super Landroid/util/Singleton;
.source "MultiWindowApplicationInfos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUPPORTEDSCALE_ALL_APPLICATIONS:Z

.field private static final SUPPORTED_ALL_APPLICATIONS:Z

.field static sInstance:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;


# instance fields
.field mAvoidInheritStackAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAvoidLaunchStyleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mExtendScaleAppList:Z

.field mHideAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMaxPenWindowCount:I

.field mNoTitleActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNotSupportScaleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mShouldNotBeLaunchedInMultiWindowStyleActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportComponentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportMultiInstanceAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportScaleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSystemResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidLaunchStyleAppList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidInheritStackAppList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportPackageList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportComponentList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mHideAppList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNoTitleActivityList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mShouldNotBeLaunchedInMultiWindowStyleActivityList:Ljava/util/ArrayList;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mExtendScaleAppList:Z

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mMaxPenWindowCount:I

    .line 61
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System Resources is not ready."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->initConfig()V

    .line 66
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    return-object v0
.end method

.method private loadStringArray(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "outArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 91
    iget-object v5, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "strings":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 93
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 94
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected create()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->create()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPenWindow(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mMaxPenWindowCount:I

    return v0
.end method

.method public initConfig()V
    .locals 2

    .prologue
    .line 69
    const v0, 0x10700a9

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 70
    const v0, 0x10700b1

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 72
    const v0, 0x10700aa

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 74
    const v0, 0x10700ad

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidLaunchStyleAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 75
    const v0, 0x10700ae

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidInheritStackAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 76
    const v0, 0x10700af

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 78
    const v0, 0x10700ab

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportPackageList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 79
    const v0, 0x10700ac

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportComponentList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 80
    const v0, 0x10700b0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mHideAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 81
    const v0, 0x10700b2

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNoTitleActivityList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 82
    const v0, 0x10700b4

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mShouldNotBeLaunchedInMultiWindowStyleActivityList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    const v1, 0x11200ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mExtendScaleAppList:Z

    .line 85
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    const v1, 0x10e00fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mMaxPenWindowCount:I

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadCscAppList()V

    .line 87
    return-void
.end method

.method public isAvoidInheritStack(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 370
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v0

    .line 373
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidInheritStackAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAvoidLaunchStyleApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 360
    if-nez p1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v0

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidLaunchStyleAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAvoidScaleOption(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 383
    if-nez p1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v0

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFixedRatioApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public isHideAppList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mHideAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isKnoxDesktopMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 412
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_1

    .line 414
    if-nez p1, :cond_0

    .line 415
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 416
    .local v0, "am":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object p1

    .line 418
    .end local v0    # "am":Landroid/app/ActivityThread;
    :cond_0
    const-string v2, "desktop"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktop/DesktopManager;

    .line 423
    :cond_1
    return v3
.end method

.method public isNoTitleActivityList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNoTitleActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.sdk.multiwindow.penwindow.enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPenWindowOnlyApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 253
    if-eqz p1, :cond_0

    .line 254
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.sdk.multiwindow.penwindow.enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupLaunchApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 309
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 312
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.sec.android.multiwindow.LAUNCH_POPUPWINDOW"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .locals 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 282
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupportApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportComponentList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportComponentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportFullScreenMinimizable(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 168
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.sec.android.multiwindow.fullscreen_minimizable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 266
    if-eqz p1, :cond_1

    .line 267
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.sec.android.support.multiwindow"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.sdk.multiwindowonly.enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportPackageList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x1

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportPopup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v0, "com.sec.android.app.popupuireceiver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.providers.media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.providers.downloads.ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 296
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.popupwindow.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;Landroid/content/Context;)Z
    .locals 6
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v2

    .line 187
    :cond_1
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isHideAppList(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.samsung.android.sdk.multiwindowonly.enable"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 202
    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mExtendScaleAppList:Z

    if-eqz v4, :cond_3

    .line 203
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 204
    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 207
    goto :goto_0

    .line 211
    :cond_3
    const-string v4, "android"

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 212
    goto :goto_0

    .line 214
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_7

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.samsung.android.sdk.multiwindow.penwindow.enable"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 216
    :cond_5
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_6

    .line 217
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.sec.android.multiwindow.STYLE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "applicationStyle":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 220
    .local v1, "applicationStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "freestyleOnly"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .end local v0    # "applicationStyle":Ljava/lang/String;
    .end local v1    # "applicationStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    move v2, v3

    .line 225
    goto/16 :goto_0

    .line 228
    :cond_7
    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 230
    goto/16 :goto_0
.end method

.method public loadCscAppList()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public shouldNotBeLaunchedInMultiWindowStyle(Ljava/lang/String;)Z
    .locals 2
    .param p1, "shortComponentName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 401
    if-nez p1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mShouldNotBeLaunchedInMultiWindowStyleActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    const/4 v0, 0x1

    goto :goto_0
.end method
