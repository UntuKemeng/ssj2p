.class final Lcom/android/server/pm/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# static fields
.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"


# instance fields
.field private mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

.field private mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 71
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 82
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 89
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 95
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 101
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 111
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 116
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 121
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 126
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 142
    return-void
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 2753
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2637
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2638
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    .line 2639
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2641
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2578
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5, p2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2580
    .local v1, "handler":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_1

    .line 2588
    :cond_0
    :goto_0
    return-object v2

    .line 2583
    :cond_1
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2584
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2588
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    goto :goto_0
.end method

.method private getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2593
    iget-object v6, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v7, v8, p2}, Lcom/android/server/pm/PackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 2595
    .local v3, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_1

    move-object v2, v5

    .line 2607
    :cond_0
    :goto_0
    return-object v2

    .line 2598
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 2599
    .local v1, "handlerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 2600
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2601
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 2603
    .local v2, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_0

    .line 2599
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v2    # "handlerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_2
    move-object v2, v5

    .line 2607
    goto :goto_0
.end method

.method private getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .param p1, "syncAdapterPackageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2612
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2614
    .local v7, "syncAdapterPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2615
    .local v2, "homeIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2617
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 2618
    .local v6, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2620
    iget-object v8, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v10, p2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2622
    .local v1, "homeActivity":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1

    .line 2617
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2626
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 2627
    .local v5, "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_0

    .line 2628
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2632
    .end local v1    # "homeActivity":Landroid/content/pm/ResolveInfo;
    .end local v5    # "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "syncAdapterPackageName":Ljava/lang/String;
    :cond_2
    return-object v7
.end method

.method private getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2645
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    return-object v0
.end method

.method private getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2649
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2650
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2651
    invoke-direct {p0, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2653
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_0
    return-object v0

    .restart local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_0
    move-object v0, v1

    .line 2651
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2653
    goto :goto_0
.end method

.method private grantDefaultPermissionsToAttApp(I)V
    .locals 21
    .param p1, "userId"    # I

    .prologue
    .line 2277
    const-string v20, "com.cequint.ecid"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 2278
    .local v8, "ecidPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v8, :cond_0

    invoke-static {v8}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 2279
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 2280
    .local v9, "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v20, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2281
    const-string v20, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2282
    const-string v20, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2283
    const-string v20, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2284
    const-string v20, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2285
    const-string v20, "android.permission.SEND_SMS"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2286
    const-string v20, "android.permission.READ_SMS"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2287
    const-string v20, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2288
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v8, v9, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2292
    .end local v9    # "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v20, "com.samsung.acms"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 2293
    .local v6, "ambsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 2294
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 2295
    .local v7, "ambsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v20, "android.permission.READ_SMS"

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2296
    const-string v20, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2297
    const-string v20, "android.permission.SEND_SMS"

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2298
    const-string v20, "android.permission.CALL_PHONE"

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2299
    const-string v20, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2300
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2304
    .end local v7    # "ambsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v17, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2305
    .local v17, "vvmIntent":Landroid/content/Intent;
    const-string v20, "com.samsung.att_vvm.pregrant_category"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2306
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 2307
    .local v18, "vvmPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v18, :cond_2

    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 2308
    new-instance v19, Landroid/util/ArraySet;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArraySet;-><init>()V

    .line 2309
    .local v19, "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v20, "android.permission.CALL_PHONE"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2310
    const-string v20, "android.permission.READ_PHONE_STATE"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2311
    const-string v20, "android.permission.READ_SMS"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2312
    const-string v20, "android.permission.RECEIVE_SMS"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2313
    const-string v20, "android.permission.SEND_SMS"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2314
    const-string v20, "android.permission.READ_CONTACTS"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2315
    const-string v20, "android.permission.RECORD_AUDIO"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2316
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2320
    .end local v19    # "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v20, "com.sec.att.usagemanager3"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v16

    .line 2321
    .local v16, "usageManagerPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v16, :cond_3

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 2322
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 2323
    .local v15, "usageManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v20, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2324
    const-string v20, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2325
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2329
    .end local v15    # "usageManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    new-instance v10, Landroid/content/Intent;

    const-string v20, "com.synchronoss.dcs.r2g.R2G_POST_OEM"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2330
    .local v10, "r2gIntent":Landroid/content/Intent;
    const-string v20, "android.intent.category.DEFAULT"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2331
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 2333
    .local v11, "r2gPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_4

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 2335
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 2336
    .local v12, "r2gPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v20, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2337
    const-string v20, "android.permission.CAMERA"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2338
    const-string v20, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2339
    const-string v20, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2340
    const-string v20, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2341
    const-string v20, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2342
    const-string v20, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2343
    const-string v20, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2344
    const-string v20, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2345
    const-string v20, "android.permission.READ_SMS"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2346
    const-string v20, "android.permission.SEND_SMS"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2347
    const-string v20, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2348
    const-string v20, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2349
    const-string v20, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2350
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v12, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2354
    .end local v12    # "r2gPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v20, "com.samsung.aab"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 2355
    .local v4, "aabSyncmlPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_5

    invoke-static {v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2356
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2357
    .local v5, "aabSyncnlPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v20, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2358
    const-string v20, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2359
    const-string v20, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2360
    const-string v20, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2361
    const-string v20, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2362
    const-string v20, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2363
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2367
    .end local v5    # "aabSyncnlPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const-string v20, "com.sec.android.softphone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 2368
    .local v13, "softphoneAccountPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_6

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 2369
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 2370
    .local v14, "softphoneAccountPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v20, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2371
    const-string v20, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2372
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2374
    .end local v14    # "softphoneAccountPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    return-void
.end method

.method private grantDefaultPermissionsToComcastApp(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 2014
    const-string v6, "com.comcast.modesto.vvm.client"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 2015
    .local v2, "vvmPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2016
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2017
    .local v3, "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.READ_CONTACTS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2018
    const-string v6, "android.permission.WRITE_CONTACTS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2019
    const-string v6, "android.permission.GET_ACCOUNTS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2020
    const-string v6, "android.permission.RECORD_AUDIO"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2021
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2022
    const-string v6, "android.permission.CALL_PHONE"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2023
    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2024
    const-string v6, "android.permission.SEND_SMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2025
    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2029
    .end local v3    # "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v6, "com.smithmicro.netwise.director.comcast.oem"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 2030
    .local v4, "wifiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2031
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2032
    .local v5, "wifiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2033
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2034
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2035
    const-string v6, "android.permission.CALL_PHONE"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2036
    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2040
    .end local v5    # "wifiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string v6, "com.LogiaGroup.LogiaDeck"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2041
    .local v0, "dtIgnitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2042
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2043
    .local v1, "dtIgnitePermission":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2044
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2046
    .end local v1    # "dtIgnitePermission":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private grantDefaultPermissionsToCricketApp(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1506
    const-string v4, "com.smithmicro.netwise.director.cricket"

    invoke-direct {p0, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1507
    .local v2, "netWisePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1508
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1509
    .local v3, "netWisePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1510
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1511
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1512
    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1516
    .end local v3    # "netWisePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v4, "com.dti.cricket"

    invoke-direct {p0, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1517
    .local v0, "ignitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1518
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1519
    .local v1, "ignitePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1520
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1522
    .end local v1    # "ignitePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 3
    .param p1, "simCallManagerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 2531
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to sim call manager for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2533
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2534
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2536
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1
    .param p1, "dialerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 2451
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2452
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2453
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2454
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2455
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2457
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 2
    .param p1, "smsPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 2462
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2463
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2464
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2465
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2467
    const-string v0, "com.android.mms"

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.messaging"

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2469
    :cond_0
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2470
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2471
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2474
    :cond_1
    return-void
.end method

.method private grantDefaultPermissionsToDocomoApp(I)V
    .locals 34
    .param p1, "userId"    # I

    .prologue
    .line 1526
    const-string v33, "com.nttdocomo.android.idmanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 1527
    .local v13, "DcmIDManager":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_0

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 1528
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1529
    .local v14, "DcmIDManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v33, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v33

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1530
    const-string v33, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v33

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1531
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1535
    .end local v14    # "DcmIDManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v33, "com.nttdocomo.android.accountauthenticator"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1536
    .local v5, "DcmAccountAuthenticator":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 1537
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1538
    .local v6, "DcmAccountAuthenticatorPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v33, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v33

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1539
    const-string v33, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v33

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1540
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v6, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1544
    .end local v6    # "DcmAccountAuthenticatorPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v33, "jp.co.nttdocomo.lcsapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 1545
    .local v25, "Dcmlcsapp":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_2

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 1546
    new-instance v26, Landroid/util/ArraySet;

    invoke-direct/range {v26 .. v26}, Landroid/util/ArraySet;-><init>()V

    .line 1547
    .local v26, "DcmlcsappPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v33, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1548
    const-string v33, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1549
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v33

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1553
    .end local v26    # "DcmlcsappPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v33, "com.nttdocomo.android.wipe"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 1554
    .local v17, "DcmWipe":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_3

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 1555
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 1556
    .local v18, "DcmWipePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v33, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1557
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1561
    .end local v18    # "DcmWipePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v33, "com.nttdocomo.android.applicationmanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 1562
    .local v7, "DcmApplicationManager":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_4

    invoke-static {v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 1563
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1564
    .local v8, "DcmApplicationManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v33, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1565
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v8, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1569
    .end local v8    # "DcmApplicationManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v33, "com.nttdocomo.android.lac"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 1570
    .local v23, "Dcmlac":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_5

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 1571
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    .line 1572
    .local v24, "DcmlacPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v33, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1573
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1577
    .end local v24    # "DcmlacPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const-string v33, "com.nttdocomo.android.areamail"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 1578
    .local v9, "DcmAreaMail":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_6

    invoke-static {v9}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 1579
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1580
    .local v10, "DcmAreaMailPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v33, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v33

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1581
    const-string v33, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v33

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1582
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, p1

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1586
    .end local v10    # "DcmAreaMailPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const-string/jumbo v33, "jp.co.omronsoft.android.decoemojimanager_docomo"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 1587
    .local v11, "DcmEmojiManager":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_7

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 1588
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1589
    .local v12, "DcmEmojiManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v33, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1590
    const-string v33, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1591
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v12, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1595
    .end local v12    # "DcmEmojiManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v33, "jp.co.nttdocomo.saigaiban"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    .line 1596
    .local v31, "Dcmsaigaiban":Landroid/content/pm/PackageParser$Package;
    if-eqz v31, :cond_8

    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 1597
    new-instance v32, Landroid/util/ArraySet;

    invoke-direct/range {v32 .. v32}, Landroid/util/ArraySet;-><init>()V

    .line 1598
    .local v32, "DcmsaigaibanPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v33, "android.permission.RECEIVE_SMS"

    invoke-interface/range {v32 .. v33}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1599
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1603
    .end local v32    # "DcmsaigaibanPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    const-string v33, "com.nttdocomo.android.remotelock"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 1604
    .local v15, "DcmRemotelock":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_9

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 1605
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 1606
    .local v16, "DcmRemotelockPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v33, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1607
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1611
    .end local v16    # "DcmRemotelockPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    const-string v33, "com.nttdocomo.android.osv"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    .line 1612
    .local v27, "Dcmosv":Landroid/content/pm/PackageParser$Package;
    if-eqz v27, :cond_a

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 1613
    new-instance v28, Landroid/util/ArraySet;

    invoke-direct/range {v28 .. v28}, Landroid/util/ArraySet;-><init>()V

    .line 1614
    .local v28, "DcmosvPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v33, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1615
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1619
    .end local v28    # "DcmosvPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    const-string v33, "com.nttdocomo.android.dhome"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 1620
    .local v19, "Dcmdhome":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_b

    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v33

    if-eqz v33, :cond_b

    .line 1621
    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    .line 1622
    .local v20, "DcmdhomePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v33, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1623
    const-string v33, "android.permission.CALL_PHONE"

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1624
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1628
    .end local v20    # "DcmdhomePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    const-string v33, "com.nttdocomo.android.iconcier"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    .line 1629
    .local v21, "Dcmdiconcier":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_c

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 1630
    new-instance v22, Landroid/util/ArraySet;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    .line 1631
    .local v22, "DcmdiconcierPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v33, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1632
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1636
    .end local v22    # "DcmdiconcierPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    const-string v33, "com.nttdocomo.android.phonemotion"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    .line 1637
    .local v29, "Dcmphonemotion":Landroid/content/pm/PackageParser$Package;
    if-eqz v29, :cond_d

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 1638
    new-instance v30, Landroid/util/ArraySet;

    invoke-direct/range {v30 .. v30}, Landroid/util/ArraySet;-><init>()V

    .line 1639
    .local v30, "DcmphonemotionPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v33, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1640
    const-string v33, "android.permission.CALL_PHONE"

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1641
    const-string v33, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1642
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1645
    .end local v30    # "DcmphonemotionPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    return-void
.end method

.method private grantDefaultPermissionsToKddiApp(I)V
    .locals 42
    .param p1, "userId"    # I

    .prologue
    .line 1650
    const-string v41, "com.kddi.android.au_wifi_connect"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v37

    .line 1651
    .local v37, "KddiAUwificonnectOldPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v37, :cond_0

    invoke-static/range {v37 .. v37}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 1652
    new-instance v38, Landroid/util/ArraySet;

    invoke-direct/range {v38 .. v38}, Landroid/util/ArraySet;-><init>()V

    .line 1653
    .local v38, "KddiAUwificonnectOldPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1654
    const-string v41, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1655
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1656
    const-string v41, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1658
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1662
    .end local v38    # "KddiAUwificonnectOldPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v41, "com.kddi.android.au_wifi_connect2"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v39

    .line 1663
    .local v39, "KddiAUwificonnectPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v39, :cond_1

    invoke-static/range {v39 .. v39}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_1

    .line 1664
    new-instance v40, Landroid/util/ArraySet;

    invoke-direct/range {v40 .. v40}, Landroid/util/ArraySet;-><init>()V

    .line 1665
    .local v40, "KddiAUwificonnectPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface/range {v40 .. v41}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1666
    const-string v41, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface/range {v40 .. v41}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1667
    const-string v41, "android.permission.READ_PHONE_STATE"

    invoke-interface/range {v40 .. v41}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1669
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1673
    .end local v40    # "KddiAUwificonnectPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string v41, "com.kddi.android.klop"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 1674
    .local v19, "KddiAUklopPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_2

    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 1675
    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    .line 1676
    .local v20, "KddiAUklopPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1677
    const-string v41, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1678
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1680
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1684
    .end local v20    # "KddiAUklopPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v41, "com.kddi.android.AddressbookPlus"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1685
    .local v5, "KddiAUaddressbookplusPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_3

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_3

    .line 1686
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1687
    .local v6, "KddiAUaddressbookplusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.CALL_PHONE"

    move-object/from16 v0, v41

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1688
    const-string v41, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v41

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1689
    const-string v41, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v41

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1691
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, p1

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1695
    .end local v6    # "KddiAUaddressbookplusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v41, "com.kddi.android.evc"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 1696
    .local v17, "KddiAUevcPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_4

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_4

    .line 1697
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 1698
    .local v18, "KddiAUevcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1699
    const-string v41, "android.permission.CALL_PHONE"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1700
    const-string v41, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1701
    const-string v41, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1703
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1707
    .end local v18    # "KddiAUevcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v41, "com.kddi.android.checker_android"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 1708
    .local v9, "KddiAUcheckerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_5

    invoke-static {v9}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_5

    .line 1709
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1710
    .local v10, "KddiAUcheckerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v41

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1711
    const-string v41, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v41

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1712
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1714
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, p1

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1718
    .end local v10    # "KddiAUcheckerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const-string v41, "com.kddi.android.ausharelink"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    .line 1719
    .local v27, "KddiAUsharelinkPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v27, :cond_6

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 1720
    new-instance v28, Landroid/util/ArraySet;

    invoke-direct/range {v28 .. v28}, Landroid/util/ArraySet;-><init>()V

    .line 1721
    .local v28, "KddiAUsharelinkPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1722
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1723
    const-string v41, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1725
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1729
    .end local v28    # "KddiAUsharelinkPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const-string v41, "com.kddi.android.screenshotshare"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 1730
    .local v23, "KddiAUscreenshotsharePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_7

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 1731
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    .line 1732
    .local v24, "KddiAUscreenshotsharePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1734
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1738
    .end local v24    # "KddiAUscreenshotsharePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    const-string v41, "com.kddi.cs.app001"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 1739
    .local v11, "KddiAUcsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_8

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_8

    .line 1740
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1741
    .local v12, "KddiAUcsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.CALL_PHONE"

    move-object/from16 v0, v41

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1742
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1744
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, p1

    invoke-direct {v0, v11, v12, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1748
    .end local v12    # "KddiAUcsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    const-string v41, "com.kddi.disasterapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 1749
    .local v13, "KddiAUdisasterappPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_9

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 1750
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1751
    .local v14, "KddiAUdisasterappPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v41

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1752
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1754
    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, p1

    invoke-direct {v0, v13, v14, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1758
    .end local v14    # "KddiAUdisasterappPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    const-string v41, "com.kddi.market"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    .line 1759
    .local v21, "KddiAUmarketPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_a

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 1760
    new-instance v22, Landroid/util/ArraySet;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    .line 1761
    .local v22, "KddiAUmarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v22

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1763
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1767
    .end local v22    # "KddiAUmarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    const-string v41, "com.kddi.pass.launcher"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 1768
    .local v25, "KddiAUserviceTopPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_b

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_b

    .line 1769
    new-instance v26, Landroid/util/ArraySet;

    invoke-direct/range {v26 .. v26}, Landroid/util/ArraySet;-><init>()V

    .line 1770
    .local v26, "KddiAUserviceTopPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1772
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1776
    .end local v26    # "KddiAUserviceTopPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    const-string/jumbo v41, "jp.auone.wallet"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v35

    .line 1777
    .local v35, "KddiAUwalletPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v35, :cond_c

    invoke-static/range {v35 .. v35}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_c

    .line 1778
    new-instance v36, Landroid/util/ArraySet;

    invoke-direct/range {v36 .. v36}, Landroid/util/ArraySet;-><init>()V

    .line 1779
    .local v36, "KddiAUwalletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1781
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1785
    .end local v36    # "KddiAUwalletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    const-string v41, "com.kddi.android.email"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 1786
    .local v15, "KddiAUemailPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_d

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_d

    .line 1787
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 1788
    .local v16, "KddiAUemailPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1789
    const-string v41, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1790
    const-string v41, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1792
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v41

    move/from16 v3, p1

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1796
    .end local v16    # "KddiAUemailPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    const-string v41, "com.kddi.android.lismobookstore"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 1797
    .local v7, "KddiAUbookpassPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_e

    invoke-static {v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_e

    .line 1798
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1799
    .local v8, "KddiAUbookpassPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v41

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1801
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, p1

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1805
    .end local v8    # "KddiAUbookpassPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e
    const-string/jumbo v41, "web.wm.auone.jp"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v33

    .line 1806
    .local v33, "KddiAUwalletMarketPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v33, :cond_f

    invoke-static/range {v33 .. v33}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_f

    .line 1807
    new-instance v34, Landroid/util/ArraySet;

    invoke-direct/range {v34 .. v34}, Landroid/util/ArraySet;-><init>()V

    .line 1808
    .local v34, "KddiAUwalletMarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1810
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1814
    .end local v34    # "KddiAUwalletMarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    const-string v41, "com.kddi.android.smartpass"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    .line 1815
    .local v29, "KddiAUsmartpassPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v29, :cond_10

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_10

    .line 1816
    new-instance v30, Landroid/util/ArraySet;

    invoke-direct/range {v30 .. v30}, Landroid/util/ArraySet;-><init>()V

    .line 1817
    .local v30, "KddiAUsmartpassPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1819
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1823
    .end local v30    # "KddiAUsmartpassPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    const-string v41, "com.kddi.android.videopass"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    .line 1824
    .local v31, "KddiAUvideopassPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v31, :cond_11

    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_11

    .line 1825
    new-instance v32, Landroid/util/ArraySet;

    invoke-direct/range {v32 .. v32}, Landroid/util/ArraySet;-><init>()V

    .line 1826
    .local v32, "KddiAUvideopassPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1827
    const-string v41, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1828
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1830
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1833
    .end local v32    # "KddiAUvideopassPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method private grantDefaultPermissionsToSbmApp(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1838
    const-string/jumbo v2, "jp.softbank.mb.dmb"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1839
    .local v0, "SbmDisasterMessageBoardPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1840
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1841
    .local v1, "SbmDisasterMessageBoardPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1843
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1845
    .end local v1    # "SbmDisasterMessageBoardPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToSingtelApp(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1998
    const-string v2, "com.LogiaGroup.LogiaDeck"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1999
    .local v1, "sinDtIgnitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2000
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2001
    .local v0, "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2003
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2005
    .end local v0    # "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToSprintApps(I)V
    .locals 30
    .param p1, "userId"    # I

    .prologue
    .line 1856
    :try_start_0
    const-string v28, "com.sprint.dsa"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 1857
    .local v13, "sprDSSPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_0

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 1858
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1859
    .local v12, "sprDSSPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1860
    const-string v28, "android.permission.CALL_PHONE"

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1861
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v12, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1868
    .end local v12    # "sprDSSPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "sprDSSPkg":Landroid/content/pm/PackageParser$Package;
    :cond_0
    :goto_0
    :try_start_1
    const-string v28, "com.sprint.ce.updater"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    .line 1869
    .local v27, "sprintMIPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v27, :cond_1

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1870
    new-instance v26, Landroid/util/ArraySet;

    invoke-direct/range {v26 .. v26}, Landroid/util/ArraySet;-><init>()V

    .line 1871
    .local v26, "sprintMIPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1872
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1879
    .end local v26    # "sprintMIPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27    # "sprintMIPkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    :goto_1
    :try_start_2
    const-string v28, "com.sprint.w.installer"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 1880
    .local v17, "sprMobileIDPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_2

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1881
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 1882
    .local v16, "sprMobileIDPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1883
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1890
    .end local v16    # "sprMobileIDPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "sprMobileIDPkg":Landroid/content/pm/PackageParser$Package;
    :cond_2
    :goto_2
    :try_start_3
    const-string v28, "com.sprint.ms.smf.services"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v22

    .line 1891
    .local v22, "sprSMFPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v22, :cond_3

    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 1892
    new-instance v21, Landroid/util/ArraySet;

    invoke-direct/range {v21 .. v21}, Landroid/util/ArraySet;-><init>()V

    .line 1893
    .local v21, "sprSMFPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1894
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1900
    .end local v21    # "sprSMFPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "sprSMFPkg":Landroid/content/pm/PackageParser$Package;
    :cond_3
    :goto_3
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v28, 0x0

    const-string v29, "com.locationlabs.sparkle.yellow.pre"

    aput-object v29, v20, v28

    const/16 v28, 0x1

    const-string v29, "com.locationlabs.v3client"

    aput-object v29, v20, v28

    .line 1904
    .local v20, "sprSDMPkgList":[Ljava/lang/String;
    move-object/from16 v6, v20

    .local v6, "arr$":[Ljava/lang/String;
    array-length v10, v6

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_4
    if-ge v9, v10, :cond_5

    aget-object v23, v6, v9

    .line 1906
    .local v23, "sprSdm":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 1907
    .local v19, "sprSDMPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_4

    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 1908
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 1909
    .local v18, "sprSDMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1910
    const-string v28, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1911
    const-string v28, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1912
    const-string v28, "android.permission.CALL_PHONE"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1913
    const-string v28, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1914
    const-string v28, "android.permission.READ_SMS"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1915
    const-string v28, "android.permission.SEND_SMS"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1916
    const-string v28, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1917
    const-string v28, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1918
    const-string v28, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1919
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1904
    .end local v18    # "sprSDMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "sprSDMPkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1863
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v20    # "sprSDMPkgList":[Ljava/lang/String;
    .end local v23    # "sprSdm":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1864
    .local v7, "e":Ljava/lang/Exception;
    const-string v28, "DefaultPermGrantPolicy"

    const-string v29, "DSS not found"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1874
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 1875
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v28, "DefaultPermGrantPolicy"

    const-string v29, "MobileInstaller not found"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1885
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 1886
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v28, "DefaultPermGrantPolicy"

    const-string v29, "MobileID not found"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1896
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 1897
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v28, "DefaultPermGrantPolicy"

    const-string v29, "SMF not found"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1921
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v20    # "sprSDMPkgList":[Ljava/lang/String;
    .restart local v23    # "sprSdm":Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 1922
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v28, "DefaultPermGrantPolicy"

    const-string/jumbo v29, "sprSDM is not found"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1927
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v23    # "sprSdm":Ljava/lang/String;
    :cond_5
    :try_start_5
    const-string v28, "com.coremobility.app.vnotes"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 1928
    .local v25, "sprVVMPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_6

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 1929
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    .line 1930
    .local v24, "sprVVMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.CALL_PHONE"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1931
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1932
    const-string v28, "android.permission.READ_SMS"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1933
    const-string v28, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1934
    const-string v28, "android.permission.SEND_SMS"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1935
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1943
    .end local v24    # "sprVVMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v25    # "sprVVMPkg":Landroid/content/pm/PackageParser$Package;
    :cond_6
    :goto_6
    :try_start_6
    const-string v28, "com.cequint.ecid"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 1944
    .local v11, "sprCallerNameIdPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_7

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 1945
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1946
    .local v8, "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1947
    const-string v28, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1948
    const-string v28, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1949
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1950
    const-string v28, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1951
    const-string v28, "android.permission.SEND_SMS"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1952
    const-string v28, "android.permission.READ_SMS"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1953
    const-string v28, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1954
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v8, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1962
    .end local v8    # "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "sprCallerNameIdPackage":Landroid/content/pm/PackageParser$Package;
    :cond_7
    :goto_7
    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v5, v0, [Ljava/lang/String;

    const/16 v28, 0x0

    const-string v29, "com.itsoninc.android.uid"

    aput-object v29, v5, v28

    const/16 v28, 0x1

    const-string v29, "com.itsoninc.android.itsonclient"

    aput-object v29, v5, v28

    const/16 v28, 0x2

    const-string v29, "com.itsoninc.android.itsonservice"

    aput-object v29, v5, v28

    const/16 v28, 0x3

    const-string v29, "com.itsoninc.android.sprintproxy"

    aput-object v29, v5, v28

    .line 1966
    .local v5, "ItsonPkgList":[Ljava/lang/String;
    move-object v6, v5

    array-length v10, v6

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v10, :cond_9

    aget-object v4, v6, v9

    .line 1968
    .local v4, "ItsonPkg":Ljava/lang/String;
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 1969
    .local v15, "sprItsonPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_8

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 1970
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1971
    .local v14, "sprItsonPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.CALL_PHONE"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1972
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1973
    const-string v28, "android.permission.READ_SMS"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1974
    const-string v28, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1975
    const-string v28, "android.permission.SEND_SMS"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1976
    const-string v28, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1977
    const-string v28, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1978
    const-string v28, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1979
    const-string v28, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1980
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v14, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1966
    .end local v14    # "sprItsonPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "sprItsonPkg":Landroid/content/pm/PackageParser$Package;
    :cond_8
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1937
    .end local v4    # "ItsonPkg":Ljava/lang/String;
    .end local v5    # "ItsonPkgList":[Ljava/lang/String;
    :catch_5
    move-exception v7

    .line 1938
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v28, "DefaultPermGrantPolicy"

    const-string v29, "VVM is not found"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1956
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v7

    .line 1957
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v28, "DefaultPermGrantPolicy"

    const-string v29, "CallerID is not found"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1982
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "ItsonPkg":Ljava/lang/String;
    .restart local v5    # "ItsonPkgList":[Ljava/lang/String;
    :catch_7
    move-exception v7

    .line 1983
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v28, "DefaultPermGrantPolicy"

    const-string v29, "Itson is not found"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1986
    .end local v4    # "ItsonPkg":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_9
    return-void
.end method

.method private grantDefaultPermissionsToTmoApp(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 2404
    const-string v6, "com.whitepages.nameid.tmobile"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 2405
    .local v5, "whitepagesPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2406
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 2407
    .local v4, "whitePagesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2408
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2409
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2410
    const-string v6, "android.permission.CALL_PHONE"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2411
    const-string v6, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2412
    const-string v6, "android.permission.READ_CALL_LOG"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2413
    const-string v6, "android.permission.READ_SMS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2414
    const-string v6, "android.permission.RECEIVE_MMS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2415
    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2416
    invoke-direct {p0, v5, v4, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2420
    .end local v4    # "whitePagesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v6, "com.cequint.ecid"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2421
    .local v0, "ecidPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2422
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2423
    .local v1, "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2424
    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2425
    const-string v6, "android.permission.READ_CONTACTS"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2426
    const-string v6, "android.permission.WRITE_CONTACTS"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2427
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2431
    .end local v1    # "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string v6, "com.tmobile.pr.mytmobile"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 2432
    .local v2, "myAccountPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2433
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2434
    .local v3, "myAccountPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2435
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2436
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2437
    const-string v6, "android.permission.READ_SMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2438
    const-string v6, "android.permission.RECEIVE_MMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2439
    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2440
    const-string v6, "android.permission.CALL_PHONE"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2441
    const-string v6, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2442
    const-string v6, "android.permission.READ_CALL_LOG"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2443
    const-string v6, "android.permission.USE_SIP"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2444
    const-string v6, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2445
    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2447
    .end local v3    # "myAccountPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private grantDefaultPermissionsToUsccApps(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 2384
    const-string v2, "com.LogiaGroup.LogiaDeck"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2385
    .local v1, "UscIgnitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2386
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2390
    :cond_0
    const-string v2, "com.cequint.ecid"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2391
    .local v0, "UscCityIDPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2392
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v0, v2, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2394
    :cond_1
    return-void
.end method

.method private grantDefaultPermissionsToVerizonApp(I)V
    .locals 41
    .param p1, "userId"    # I

    .prologue
    .line 2056
    const-string v40, "com.samsung.unifiedsettingservice"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v35

    .line 2057
    .local v35, "vzUssPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v35, :cond_0

    invoke-static/range {v35 .. v35}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 2058
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    .line 2059
    .local v17, "ussPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2060
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2064
    .end local v17    # "ussPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v40, "com.verizon.mips.services"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    .line 2065
    .local v27, "vzMvsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v27, :cond_1

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_1

    .line 2066
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 2067
    .local v14, "mvsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2068
    const-string v40, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2069
    const-string v40, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2070
    const-string v40, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2071
    const-string v40, "android.permission.CALL_PHONE"

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2072
    const-string v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2073
    const-string v40, "android.permission.SEND_SMS"

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2074
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, p1

    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2078
    .end local v14    # "mvsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string v40, "com.vcast.mediamanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v22

    .line 2079
    .local v22, "vzCloudPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v22, :cond_2

    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 2080
    new-instance v38, Landroid/util/ArraySet;

    invoke-direct/range {v38 .. v38}, Landroid/util/ArraySet;-><init>()V

    .line 2081
    .local v38, "vzcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2082
    const-string v40, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2083
    const-string v40, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2084
    const-string v40, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2085
    const-string v40, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2086
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2087
    const-string v40, "android.permission.CALL_PHONE"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2088
    const-string v40, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2089
    const-string v40, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2090
    const-string v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2091
    const-string v40, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2092
    const-string v40, "android.permission.SEND_SMS"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2093
    const-string v40, "android.permission.READ_SMS"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2094
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v38

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2098
    .end local v38    # "vzcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v40, "com.motricity.verizon.ssodownloadable"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v34

    .line 2099
    .local v34, "vzSsoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v34, :cond_3

    invoke-static/range {v34 .. v34}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_3

    .line 2100
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 2101
    .local v16, "ssoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2102
    const-string v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2103
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v16

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2107
    .end local v16    # "ssoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v40, "com.verizon.vzwavs"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .line 2108
    .local v20, "vzAvsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v20, :cond_4

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 2109
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 2110
    .local v4, "avsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2111
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2115
    .end local v4    # "avsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v40, "com.vzw.hss.myverizon"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    .line 2116
    .local v31, "vzMyVerizonPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v31, :cond_5

    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_5

    .line 2117
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 2118
    .local v12, "mvPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2119
    const-string v40, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2120
    const-string v40, "android.permission.CALL_PHONE"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2121
    const-string v40, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2122
    const-string v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2123
    const-string v40, "android.permission.SEND_SMS"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2124
    const-string v40, "android.permission.READ_SMS"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2125
    const-string v40, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2126
    const-string v40, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2127
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2131
    .end local v12    # "mvPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const-string v40, "com.LogiaGroup.LogiaDeck"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 2132
    .local v25, "vzDtIgnitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_6

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_6

    .line 2133
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 2134
    .local v7, "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2135
    const-string v40, "android.permission.SEND_SMS"

    move-object/from16 v0, v40

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2136
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2140
    .end local v7    # "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const-string v40, "com.cequint.ecid"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    .line 2141
    .local v21, "vzCallerNameIdPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_7

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 2142
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2143
    .local v5, "canIdPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2144
    const-string v40, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2145
    const-string v40, "android.permission.CALL_PHONE"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2146
    const-string v40, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2147
    const-string v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2148
    const-string v40, "android.permission.SEND_SMS"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2149
    const-string v40, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2150
    const-string v40, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2151
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2155
    .end local v5    # "canIdPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    const-string v40, "com.telecomsys.directedsms.android.SCG"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v36

    .line 2156
    .local v36, "vzVlaPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v36, :cond_8

    invoke-static/range {v36 .. v36}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_8

    .line 2157
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 2158
    .local v18, "vlaPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2159
    const-string v40, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2160
    const-string v40, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2161
    const-string v40, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2162
    const-string v40, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2163
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2167
    .end local v18    # "vlaPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    const-string v40, "com.vzw.hss.widgets.infozone"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v30

    .line 2168
    .local v30, "vzMyInfozonePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v30, :cond_9

    invoke-static/range {v30 .. v30}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_9

    .line 2169
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 2170
    .local v11, "mizPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2171
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, p1

    invoke-direct {v0, v1, v11, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2175
    .end local v11    # "mizPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    const-string v40, "com.vzw.hss.widgets.infozone.large"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    .line 2176
    .local v29, "vzMyInfozoneLargePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v29, :cond_a

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_a

    .line 2177
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 2178
    .local v10, "mizLargePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2179
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p1

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2183
    .end local v10    # "mizLargePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    const-string v40, "com.vzw.hss.widgets.infozone.ellipsis"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v28

    .line 2184
    .local v28, "vzMyInfozoneEllipsisPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v28, :cond_b

    invoke-static/range {v28 .. v28}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_b

    .line 2185
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 2186
    .local v9, "mizEllipsisPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2187
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p1

    invoke-direct {v0, v1, v9, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2191
    .end local v9    # "mizEllipsisPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    const-string v40, "com.sec.android.app.cmas"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v24

    .line 2192
    .local v24, "vzCmasPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v24, :cond_c

    invoke-static/range {v24 .. v24}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_c

    .line 2193
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 2194
    .local v6, "cmasPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2195
    const-string v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2196
    const-string v40, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2197
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p1

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2201
    .end local v6    # "cmasPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    const-string v40, "com.samsung.vvm"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v37

    .line 2202
    .local v37, "vzVvmPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v37, :cond_d

    invoke-static/range {v37 .. v37}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_d

    .line 2203
    new-instance v19, Landroid/util/ArraySet;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArraySet;-><init>()V

    .line 2204
    .local v19, "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2205
    const-string v40, "android.permission.CALL_PHONE"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2206
    const-string v40, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2207
    const-string v40, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2208
    const-string v40, "android.permission.SEND_SMS"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2209
    const-string v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2210
    const-string v40, "android.permission.READ_SMS"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2211
    const-string v40, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2212
    const-string v40, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2213
    const-string v40, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2214
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2218
    .end local v19    # "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    const-string v40, "com.qualcomm.ltebc_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v33

    .line 2219
    .local v33, "vzQcomMwPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v33, :cond_e

    invoke-static/range {v33 .. v33}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_e

    .line 2220
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 2221
    .local v15, "qcomMwPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2222
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p1

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2226
    .end local v15    # "qcomMwPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e
    const-string v40, "com.expway.embmsserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v26

    .line 2227
    .local v26, "vzExpwayMwPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v26, :cond_f

    invoke-static/range {v26 .. v26}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_f

    .line 2228
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 2229
    .local v8, "expwayMwPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2230
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p1

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2234
    .end local v8    # "expwayMwPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    const-string v40, "com.vzw.hss.myverizontabletlte"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v32

    .line 2235
    .local v32, "vzMyVerizonTabletPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v32, :cond_10

    invoke-static/range {v32 .. v32}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_10

    .line 2236
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 2237
    .local v13, "mvTabletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2238
    const-string v40, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2239
    const-string v40, "android.permission.CALL_PHONE"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2240
    const-string v40, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2241
    const-string v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2242
    const-string v40, "android.permission.SEND_SMS"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2243
    const-string v40, "android.permission.READ_SMS"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2244
    const-string v40, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2245
    const-string v40, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2246
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, p1

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2250
    .end local v13    # "mvTabletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    const-string v40, "com.androidhub"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 2251
    .local v23, "vzCloudTabletPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_11

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_11

    .line 2252
    new-instance v39, Landroid/util/ArraySet;

    invoke-direct/range {v39 .. v39}, Landroid/util/ArraySet;-><init>()V

    .line 2253
    .local v39, "vzcTabletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v40, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2254
    const-string v40, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2255
    const-string v40, "android.permission.READ_CONTACTS"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2256
    const-string v40, "android.permission.WRITE_CONTACTS"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2257
    const-string v40, "android.permission.GET_ACCOUNTS"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2258
    const-string v40, "android.permission.READ_PHONE_STATE"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2259
    const-string v40, "android.permission.CALL_PHONE"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2260
    const-string v40, "android.permission.WRITE_CALL_LOG"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2261
    const-string v40, "android.permission.READ_CALL_LOG"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2262
    const-string v40, "android.permission.RECEIVE_SMS"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2263
    const-string v40, "android.permission.RECEIVE_MMS"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2264
    const-string v40, "android.permission.SEND_SMS"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2265
    const-string v40, "android.permission.READ_SMS"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2266
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v39

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2268
    .end local v39    # "vzcTabletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .locals 225
    .param p1, "userId"    # I

    .prologue
    .line 204
    const-string v221, "DefaultPermGrantPolicy"

    new-instance v222, Ljava/lang/StringBuilder;

    invoke-direct/range {v222 .. v222}, Ljava/lang/StringBuilder;-><init>()V

    const-string v223, "Granting permissions to default platform handlers for user "

    invoke-virtual/range {v222 .. v223}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v222

    move-object/from16 v0, v222

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v222

    invoke-virtual/range {v222 .. v222}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v222

    invoke-static/range {v221 .. v222}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v221, v0

    sget-object v222, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v222

    .line 215
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v126, v0

    .line 216
    .local v126, "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v131, v0

    .line 217
    .local v131, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v212, v0

    .line 218
    .local v212, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v184, v0

    .line 219
    .local v184, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v99, v0

    .line 220
    .local v99, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v182, v0

    .line 221
    .local v182, "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    move-object/from16 v193, v0

    .line 222
    .local v193, "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    monitor-exit v222
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    if-eqz v126, :cond_2

    move-object/from16 v0, v126

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v125

    .line 226
    .local v125, "imePackageNames":[Ljava/lang/String;
    :goto_0
    if-eqz v212, :cond_3

    move-object/from16 v0, v212

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v211

    .line 228
    .local v211, "voiceInteractPackageNames":[Ljava/lang/String;
    :goto_1
    if-eqz v131, :cond_4

    move-object/from16 v0, v131

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v130

    .line 230
    .local v130, "locationPackageNames":[Ljava/lang/String;
    :goto_2
    if-eqz v184, :cond_5

    move-object/from16 v0, v184

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v183

    .line 232
    .local v183, "smsAppPackageNames":[Ljava/lang/String;
    :goto_3
    if-eqz v99, :cond_6

    move-object/from16 v0, v99

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v98

    .line 234
    .local v98, "dialerAppPackageNames":[Ljava/lang/String;
    :goto_4
    if-eqz v182, :cond_7

    move-object/from16 v0, v182

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v181

    .line 236
    .local v181, "simCallManagerPackageNames":[Ljava/lang/String;
    :goto_5
    if-eqz v193, :cond_8

    const-string v221, "com.android.contacts"

    move-object/from16 v0, v193

    move-object/from16 v1, v221

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v89

    .line 238
    .local v89, "contactsSyncAdapterPackages":[Ljava/lang/String;
    :goto_6
    if-eqz v193, :cond_9

    const-string v221, "com.android.calendar"

    move-object/from16 v0, v193

    move-object/from16 v1, v221

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v70

    .line 241
    .local v70, "calendarSyncAdapterPackages":[Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v221, v0

    sget-object v222, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v222

    .line 243
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v221, v0

    move-object/from16 v0, v221

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    move-object/from16 v221, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v127

    .line 245
    .local v127, "installerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v127, :cond_0

    invoke-static/range {v127 .. v127}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_0

    .line 247
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Installer : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v127

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 249
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 253
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v221, v0

    move-object/from16 v0, v221

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getRequiredVerifiers(I)Ljava/util/ArrayList;

    move-result-object v161

    .line 254
    .local v161, "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v161 .. v161}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v122

    .local v122, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_8
    invoke-interface/range {v122 .. v122}, Ljava/util/Iterator;->hasNext()Z

    move-result v221

    if-eqz v221, :cond_a

    invoke-interface/range {v122 .. v122}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v205

    check-cast v205, Ljava/lang/String;

    .line 255
    .local v205, "verifier":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v205

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v206

    .line 256
    .local v206, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v206, :cond_1

    invoke-static/range {v206 .. v206}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_1

    .line 258
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Verifier : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v206

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 260
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v206

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 261
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v206

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 262
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v206

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_8

    .line 1436
    .end local v122    # "i$":Ljava/util/Iterator;
    .end local v127    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v161    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v205    # "verifier":Ljava/lang/String;
    .end local v206    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v221

    monitor-exit v222
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v221

    .line 222
    .end local v70    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .end local v89    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v98    # "dialerAppPackageNames":[Ljava/lang/String;
    .end local v99    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v125    # "imePackageNames":[Ljava/lang/String;
    .end local v126    # "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v130    # "locationPackageNames":[Ljava/lang/String;
    .end local v131    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v181    # "simCallManagerPackageNames":[Ljava/lang/String;
    .end local v182    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v183    # "smsAppPackageNames":[Ljava/lang/String;
    .end local v184    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v193    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .end local v211    # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v212    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :catchall_1
    move-exception v221

    :try_start_2
    monitor-exit v222
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v221

    .line 224
    .restart local v99    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v126    # "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v131    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v182    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v184    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v193    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .restart local v212    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :cond_2
    const/16 v125, 0x0

    goto/16 :goto_0

    .line 226
    .restart local v125    # "imePackageNames":[Ljava/lang/String;
    :cond_3
    const/16 v211, 0x0

    goto/16 :goto_1

    .line 228
    .restart local v211    # "voiceInteractPackageNames":[Ljava/lang/String;
    :cond_4
    const/16 v130, 0x0

    goto/16 :goto_2

    .line 230
    .restart local v130    # "locationPackageNames":[Ljava/lang/String;
    :cond_5
    const/16 v183, 0x0

    goto/16 :goto_3

    .line 232
    .restart local v183    # "smsAppPackageNames":[Ljava/lang/String;
    :cond_6
    const/16 v98, 0x0

    goto/16 :goto_4

    .line 234
    .restart local v98    # "dialerAppPackageNames":[Ljava/lang/String;
    :cond_7
    const/16 v181, 0x0

    goto/16 :goto_5

    .line 236
    .restart local v181    # "simCallManagerPackageNames":[Ljava/lang/String;
    :cond_8
    const/16 v89, 0x0

    goto/16 :goto_6

    .line 238
    .restart local v89    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    :cond_9
    const/16 v70, 0x0

    goto/16 :goto_7

    .line 267
    .restart local v70    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .restart local v122    # "i$":Ljava/util/Iterator;
    .restart local v127    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v161    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    :try_start_3
    new-instance v175, Landroid/content/Intent;

    const-string v221, "android.intent.action.MAIN"

    move-object/from16 v0, v175

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v175, "setupIntent":Landroid/content/Intent;
    const-string v221, "android.intent.category.SETUP_WIZARD"

    move-object/from16 v0, v175

    move-object/from16 v1, v221

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v176

    .line 271
    .local v176, "setupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v176, :cond_b

    invoke-static/range {v176 .. v176}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_b

    .line 273
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "SetupWizard : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v176

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 275
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v176

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 276
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v176

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 280
    :cond_b
    const-string v221, "com.skt.skaf.A000Z00040"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v194

    .line 281
    .local v194, "tStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v194, :cond_c

    invoke-static/range {v194 .. v194}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_c

    .line 282
    new-instance v195, Landroid/util/ArraySet;

    invoke-direct/range {v195 .. v195}, Landroid/util/ArraySet;-><init>()V

    .line 283
    .local v195, "tStorePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v195

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v195

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v195

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    const/16 v221, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v194

    move-object/from16 v2, v195

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 290
    .end local v195    # "tStorePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    const-string v221, "com.skt.skaf.Z0000TSEED"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v198

    .line 291
    .local v198, "tStoreUtilityPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v198, :cond_d

    invoke-static/range {v198 .. v198}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_d

    .line 292
    new-instance v199, Landroid/util/ArraySet;

    invoke-direct/range {v199 .. v199}, Landroid/util/ArraySet;-><init>()V

    .line 293
    .local v199, "tStoreUtilityPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v199

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v199

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    const/16 v221, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v198

    move-object/from16 v2, v199

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 299
    .end local v199    # "tStoreUtilityPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    const-string v221, "com.skp.tstore.startup"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v196

    .line 300
    .local v196, "tStoreStartupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v196, :cond_e

    invoke-static/range {v196 .. v196}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_e

    .line 301
    new-instance v197, Landroid/util/ArraySet;

    invoke-direct/range {v197 .. v197}, Landroid/util/ArraySet;-><init>()V

    .line 302
    .local v197, "tStoreStartupPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v197

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 303
    const/16 v221, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    move-object/from16 v2, v197

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 307
    .end local v197    # "tStoreStartupPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e
    const-string v221, "com.skt.tservice"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v203

    .line 308
    .local v203, "tservicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v203, :cond_f

    invoke-static/range {v203 .. v203}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_f

    .line 309
    new-instance v204, Landroid/util/ArraySet;

    invoke-direct/range {v204 .. v204}, Landroid/util/ArraySet;-><init>()V

    .line 310
    .local v204, "tservicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v204

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    const/16 v221, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v203

    move-object/from16 v2, v204

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 315
    .end local v204    # "tservicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    const-string v221, "com.skt.hps20client"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v119

    .line 316
    .local v119, "hpsClientPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v119, :cond_10

    invoke-static/range {v119 .. v119}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_10

    .line 317
    new-instance v120, Landroid/util/ArraySet;

    invoke-direct/range {v120 .. v120}, Landroid/util/ArraySet;-><init>()V

    .line 318
    .local v120, "hpsClientPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v120

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v120

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    const-string v221, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v120

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v120

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v221, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v120

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v221, "android.permission.READ_SMS"

    move-object/from16 v0, v120

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    const/16 v221, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v119

    move-object/from16 v2, v120

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 328
    .end local v120    # "hpsClientPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    const-string v221, "com.skt.skaf.OA00018282"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v147

    .line 329
    .local v147, "oneStoreARMPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v147, :cond_11

    invoke-static/range {v147 .. v147}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_11

    .line 330
    new-instance v148, Landroid/util/ArraySet;

    invoke-direct/range {v148 .. v148}, Landroid/util/ArraySet;-><init>()V

    .line 331
    .local v148, "oneStoreARMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v148

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    const/16 v221, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v147

    move-object/from16 v2, v148

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 336
    .end local v148    # "oneStoreARMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    const-string v221, "com.kt.olleh.storefront"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v33

    .line 337
    .local v33, "OllehMarketPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v33, :cond_12

    invoke-static/range {v33 .. v33}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_12

    .line 338
    new-instance v34, Landroid/util/ArraySet;

    invoke-direct/range {v34 .. v34}, Landroid/util/ArraySet;-><init>()V

    .line 339
    .local v34, "OllehMarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v34

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v34

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 341
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v34

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    const/16 v221, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 347
    .end local v34    # "OllehMarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_12
    const-string v221, "com.kt.serviceagent"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    .line 348
    .local v31, "OSAPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v31, :cond_13

    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_13

    .line 349
    new-instance v32, Landroid/util/ArraySet;

    invoke-direct/range {v32 .. v32}, Landroid/util/ArraySet;-><init>()V

    .line 350
    .local v32, "OSAPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v32

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v32

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    const-string v221, "android.permission.CALL_PHONE"

    move-object/from16 v0, v32

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    const-string v221, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v32

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v32

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 356
    const/16 v221, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 360
    .end local v32    # "OSAPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    const-string v221, "com.kt.om.ktpackageinstaller"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 361
    .local v15, "KTPackageInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_14

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_14

    .line 362
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 363
    .local v16, "KTPackageInstallerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v16

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v16

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    const/16 v221, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 371
    .end local v16    # "KTPackageInstallerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_14
    const-string v221, "com.lguplus.appstore"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 372
    .local v25, "LGUPlusStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_15

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_15

    .line 373
    new-instance v26, Landroid/util/ArraySet;

    invoke-direct/range {v26 .. v26}, Landroid/util/ArraySet;-><init>()V

    .line 374
    .local v26, "LGUPlusStorePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v26

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 375
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v26

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 376
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v26

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 378
    const/16 v221, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 382
    .end local v26    # "LGUPlusStorePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_15
    const-string v221, "com.lguplus.downloader"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v22

    .line 383
    .local v22, "LGUPlusDownloaderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v22, :cond_16

    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_16

    .line 384
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    .line 385
    .local v17, "LGUDownLoaderPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 387
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    const/16 v221, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 393
    .end local v17    # "LGUDownLoaderPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_16
    const-string v221, "com.lguplus.pushagent"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 394
    .local v23, "LGUPlusPushPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_17

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_17

    .line 395
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    .line 396
    .local v24, "LGUPlusPushPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v24

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    const/16 v221, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 402
    .end local v24    # "LGUPlusPushPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_17
    const-string v221, "com.lguplus.common"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .line 403
    .local v20, "LGUPlusCommonServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v20, :cond_18

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_18

    .line 404
    new-instance v21, Landroid/util/ArraySet;

    invoke-direct/range {v21 .. v21}, Landroid/util/ArraySet;-><init>()V

    .line 405
    .local v21, "LGUPlusCommonServicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v21

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 406
    const-string v221, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v21

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 407
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v21

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 409
    const/16 v221, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 413
    .end local v21    # "LGUPlusCommonServicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_18
    const-string v221, "com.lgt.arm"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 414
    .local v18, "LGUPlusArmServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v18, :cond_19

    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_19

    .line 415
    new-instance v19, Landroid/util/ArraySet;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArraySet;-><init>()V

    .line 416
    .local v19, "LGUPlusArmServicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v19

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    const/16 v221, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 421
    .end local v19    # "LGUPlusArmServicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_19
    const-string v221, "com.claroColombia.contenedor"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v80

    .line 422
    .local v80, "claroColombiaContenedorPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v80, :cond_1a

    invoke-static/range {v80 .. v80}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_1a

    .line 423
    new-instance v81, Landroid/util/ArraySet;

    invoke-direct/range {v81 .. v81}, Landroid/util/ArraySet;-><init>()V

    .line 424
    .local v81, "claroColombiaContenedorPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v81

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    const/16 v221, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 428
    .end local v81    # "claroColombiaContenedorPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1a
    const-string v221, "com.telcel.contenedor"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v200

    .line 429
    .local v200, "telcelContenedorPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v200, :cond_1b

    invoke-static/range {v200 .. v200}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_1b

    .line 430
    new-instance v201, Landroid/util/ArraySet;

    invoke-direct/range {v201 .. v201}, Landroid/util/ArraySet;-><init>()V

    .line 431
    .local v201, "telcelContenedorPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v201

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 432
    const/16 v221, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v200

    move-object/from16 v2, v201

    move/from16 v3, v221

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 436
    .end local v201    # "telcelContenedorPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToCricketApp(I)V

    .line 439
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDocomoApp(I)V

    .line 442
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToKddiApp(I)V

    .line 445
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToSbmApp(I)V

    .line 448
    new-instance v72, Landroid/content/Intent;

    const-string v221, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v72

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v72, "cameraIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v73

    .line 451
    .local v73, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v73, :cond_1c

    invoke-static/range {v73 .. v73}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_1c

    .line 453
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Camera : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v73

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 455
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 456
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 457
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 458
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 462
    :cond_1c
    const-string v221, "com.sec.android.app.magnifier"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v28

    .line 463
    .local v28, "MagnifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v28, :cond_1d

    invoke-static/range {v28 .. v28}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_1d

    .line 464
    new-instance v132, Landroid/util/ArraySet;

    invoke-direct/range {v132 .. v132}, Landroid/util/ArraySet;-><init>()V

    .line 465
    .local v132, "magnifierPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.CAMERA"

    move-object/from16 v0, v132

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 466
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v132

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 467
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v132

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 471
    .end local v132    # "magnifierPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1d
    const-string v221, "com.sec.android.app.camera.plb"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    .line 472
    .local v27, "LiveBroadcastPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v27, :cond_1e

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_1e

    .line 473
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 474
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 475
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 476
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 477
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 481
    :cond_1e
    const-string v221, "com.samsung.android.app.sreminder"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v172

    .line 482
    .local v172, "sassistantPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v172, :cond_1f

    invoke-static/range {v172 .. v172}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_1f

    .line 483
    new-instance v165, Landroid/util/ArraySet;

    invoke-direct/range {v165 .. v165}, Landroid/util/ArraySet;-><init>()V

    .line 484
    .local v165, "saPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v165

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 485
    const-string v221, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v165

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 486
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v165

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 487
    const-string v221, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v165

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 488
    const-string v221, "android.permission.READ_CALENDAR"

    move-object/from16 v0, v165

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 489
    const-string v221, "android.permission.READ_SMS"

    move-object/from16 v0, v165

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    const-string v221, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v165

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 491
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v165

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v165

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 493
    const-string v221, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v165

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 494
    move-object/from16 v0, p0

    move-object/from16 v1, v172

    move-object/from16 v2, v165

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 498
    .end local v165    # "saPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1f
    const-string v221, "com.samsung.android.opencalendar"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v149

    .line 499
    .local v149, "openCalendarPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v149, :cond_20

    invoke-static/range {v149 .. v149}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_20

    .line 500
    new-instance v94, Landroid/util/ArraySet;

    invoke-direct/range {v94 .. v94}, Landroid/util/ArraySet;-><init>()V

    .line 501
    .local v94, "defaultPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v94

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 502
    const-string v221, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v94

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 503
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v94

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    move-object/from16 v0, p0

    move-object/from16 v1, v149

    move-object/from16 v2, v94

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 508
    .end local v94    # "defaultPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_20
    const-string v221, "com.samsung.android.spay"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v169

    .line 509
    .local v169, "samsungPayPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v169, :cond_22

    invoke-static/range {v169 .. v169}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_22

    .line 510
    new-instance v170, Landroid/util/ArraySet;

    invoke-direct/range {v170 .. v170}, Landroid/util/ArraySet;-><init>()V

    .line 511
    .local v170, "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "US"

    const-string/jumbo v223, "ro.csc.countryiso_code"

    invoke-static/range {v223 .. v223}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v223

    move-object/from16 v0, v221

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v221

    if-eqz v221, :cond_2b

    .line 512
    const-string v221, "android.permission.CAMERA"

    move-object/from16 v0, v170

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 513
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v170

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_21
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v169

    move-object/from16 v2, v170

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 530
    .end local v170    # "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_22
    const-string v221, "com.sec.android.app.shealth"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v177

    .line 531
    .local v177, "shealthPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v177, :cond_23

    invoke-static/range {v177 .. v177}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_23

    .line 532
    new-instance v178, Landroid/util/ArraySet;

    invoke-direct/range {v178 .. v178}, Landroid/util/ArraySet;-><init>()V

    .line 534
    .local v178, "shealthPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.BODY_SENSORS"

    move-object/from16 v0, v178

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v178

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 536
    const-string v221, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v178

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 537
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v178

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 538
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v178

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, v177

    move-object/from16 v2, v178

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 544
    .end local v178    # "shealthPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_23
    const-string/jumbo v221, "media"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v135

    .line 546
    .local v135, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v135, :cond_24

    .line 547
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Media provider : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v135

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 549
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v135

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 553
    :cond_24
    const-string v221, "downloads"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v102

    .line 555
    .local v102, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v102, :cond_25

    .line 556
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Downloads provider : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v102

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 558
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 562
    :cond_25
    new-instance v103, Landroid/content/Intent;

    const-string v221, "android.intent.action.VIEW_DOWNLOADS"

    move-object/from16 v0, v103

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .local v103, "downloadsUiIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v103

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v104

    .line 565
    .local v104, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v104, :cond_26

    invoke-static/range {v104 .. v104}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_26

    .line 567
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Downloads UI : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v104

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 569
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 573
    :cond_26
    const-string v221, "com.android.externalstorage.documents"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v190

    .line 575
    .local v190, "storagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v190, :cond_27

    .line 576
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Storage provider : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v190

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 578
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v190

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 582
    :cond_27
    new-instance v78, Landroid/content/Intent;

    const-string v221, "android.credentials.INSTALL"

    move-object/from16 v0, v78

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .local v78, "certInstallerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v79

    .line 585
    .local v79, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v79, :cond_28

    invoke-static/range {v79 .. v79}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_28

    .line 587
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "CertInstaller : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v79

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 589
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 593
    :cond_28
    if-nez v98, :cond_2c

    .line 594
    new-instance v100, Landroid/content/Intent;

    const-string v221, "android.intent.action.DIAL"

    move-object/from16 v0, v100

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .local v100, "dialerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v100

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v101

    .line 597
    .local v101, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v101, :cond_29

    .line 598
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Dialer : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v101

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 600
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 614
    .end local v100    # "dialerIntent":Landroid/content/Intent;
    .end local v101    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v122    # "i$":Ljava/util/Iterator;
    :cond_29
    if-eqz v181, :cond_2e

    .line 615
    move-object/from16 v60, v181

    .local v60, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v60

    array-length v0, v0

    move/from16 v128, v0

    .local v128, "len$":I
    const/16 v122, 0x0

    .local v122, "i$":I
    :goto_a
    move/from16 v0, v122

    move/from16 v1, v128

    if-ge v0, v1, :cond_2e

    aget-object v180, v60, v122

    .line 616
    .local v180, "simCallManagerPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v179

    .line 618
    .local v179, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v179, :cond_2a

    .line 619
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Sim call manager : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v179

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, v179

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 615
    :cond_2a
    add-int/lit8 v122, v122, 0x1

    goto :goto_a

    .line 515
    .end local v60    # "arr$":[Ljava/lang/String;
    .end local v78    # "certInstallerIntent":Landroid/content/Intent;
    .end local v79    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v102    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v103    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v104    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v128    # "len$":I
    .end local v135    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .end local v177    # "shealthPackage":Landroid/content/pm/PackageParser$Package;
    .end local v179    # "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v180    # "simCallManagerPackageName":Ljava/lang/String;
    .end local v190    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .local v122, "i$":Ljava/util/Iterator;
    .restart local v170    # "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2b
    const-string v221, "android.permission.CAMERA"

    move-object/from16 v0, v170

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 516
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v170

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v170

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 518
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v170

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 519
    const-string v221, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v170

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 520
    const-string v221, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v170

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 521
    const-string v221, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v170

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 522
    const-string v221, "CN"

    const-string/jumbo v223, "ro.csc.countryiso_code"

    invoke-static/range {v223 .. v223}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v223

    move-object/from16 v0, v221

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v221

    if-eqz v221, :cond_21

    .line 523
    const-string v221, "android.permission.READ_SMS"

    move-object/from16 v0, v170

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 603
    .end local v170    # "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v78    # "certInstallerIntent":Landroid/content/Intent;
    .restart local v79    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v102    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v103    # "downloadsUiIntent":Landroid/content/Intent;
    .restart local v104    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v135    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v177    # "shealthPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v190    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    :cond_2c
    move-object/from16 v60, v98

    .restart local v60    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v60

    array-length v0, v0

    move/from16 v128, v0

    .restart local v128    # "len$":I
    const/16 v122, 0x0

    .local v122, "i$":I
    :goto_b
    move/from16 v0, v122

    move/from16 v1, v128

    if-ge v0, v1, :cond_29

    aget-object v97, v60, v122

    .line 604
    .local v97, "dialerAppPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v101

    .line 605
    .restart local v101    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v101, :cond_2d

    .line 606
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Dialer : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v101

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 608
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 603
    :cond_2d
    add-int/lit8 v122, v122, 0x1

    goto :goto_b

    .line 628
    .end local v60    # "arr$":[Ljava/lang/String;
    .end local v97    # "dialerAppPackageName":Ljava/lang/String;
    .end local v101    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v122    # "i$":I
    .end local v128    # "len$":I
    :cond_2e
    if-nez v183, :cond_35

    .line 629
    new-instance v185, Landroid/content/Intent;

    const-string v221, "android.intent.action.MAIN"

    move-object/from16 v0, v185

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v185, "smsIntent":Landroid/content/Intent;
    const-string v221, "android.intent.category.APP_MESSAGING"

    move-object/from16 v0, v185

    move-object/from16 v1, v221

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    move-object/from16 v0, p0

    move-object/from16 v1, v185

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v186

    .line 633
    .local v186, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v186, :cond_2f

    .line 634
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "SMS : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v186

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 636
    move-object/from16 v0, p0

    move-object/from16 v1, v186

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 650
    .end local v185    # "smsIntent":Landroid/content/Intent;
    .end local v186    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_2f
    new-instance v76, Landroid/content/Intent;

    const-string v221, "android.provider.Telephony.SMS_CB_RECEIVED"

    move-object/from16 v0, v76

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    .local v76, "cbrIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v77

    .line 653
    .local v77, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v77, :cond_30

    invoke-static/range {v77 .. v77}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_30

    .line 654
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Cell Broadcast Receiver : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v77

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 656
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 660
    :cond_30
    new-instance v74, Landroid/content/Intent;

    const-string v221, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    move-object/from16 v0, v74

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v74, "carrierProvIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v75

    .line 663
    .local v75, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v75, :cond_31

    invoke-static/range {v75 .. v75}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_31

    .line 664
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Carrier Provisioning Service : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v75

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 666
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 670
    :cond_31
    new-instance v65, Landroid/content/Intent;

    const-string v221, "android.intent.action.MAIN"

    move-object/from16 v0, v65

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 671
    .local v65, "calendarIntent":Landroid/content/Intent;
    const-string v221, "android.intent.category.APP_CALENDAR"

    move-object/from16 v0, v65

    move-object/from16 v1, v221

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v66

    .line 674
    .local v66, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v66, :cond_32

    invoke-static/range {v66 .. v66}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_32

    .line 676
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Calendar : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v66

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 678
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 679
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 683
    :cond_32
    const-string v221, "com.android.calendar"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v67

    .line 685
    .local v67, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v67, :cond_33

    .line 686
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Calendar provider : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v67

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 688
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 689
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 691
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 695
    :cond_33
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v71

    .line 697
    .local v71, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface/range {v71 .. v71}, Ljava/util/List;->size()I

    move-result v69

    .line 698
    .local v69, "calendarSyncAdapterCount":I
    const/16 v121, 0x0

    .local v121, "i":I
    :goto_c
    move/from16 v0, v121

    move/from16 v1, v69

    if-ge v0, v1, :cond_37

    .line 699
    move-object/from16 v0, v71

    move/from16 v1, v121

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/content/pm/PackageParser$Package;

    .line 700
    .local v68, "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v68 .. v68}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_34

    .line 701
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Calendar provider sync adapters : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v68

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 703
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 698
    :cond_34
    add-int/lit8 v121, v121, 0x1

    goto :goto_c

    .line 639
    .end local v65    # "calendarIntent":Landroid/content/Intent;
    .end local v66    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v67    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v68    # "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .end local v69    # "calendarSyncAdapterCount":I
    .end local v71    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v74    # "carrierProvIntent":Landroid/content/Intent;
    .end local v75    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .end local v76    # "cbrIntent":Landroid/content/Intent;
    .end local v77    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .end local v121    # "i":I
    :cond_35
    move-object/from16 v60, v183

    .restart local v60    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v60

    array-length v0, v0

    move/from16 v128, v0

    .restart local v128    # "len$":I
    const/16 v122, 0x0

    .restart local v122    # "i$":I
    :goto_d
    move/from16 v0, v122

    move/from16 v1, v128

    if-ge v0, v1, :cond_2f

    aget-object v187, v60, v122

    .line 640
    .local v187, "smsPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v187

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v186

    .line 641
    .restart local v186    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v186, :cond_36

    .line 642
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "SMS : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v186

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 644
    move-object/from16 v0, p0

    move-object/from16 v1, v186

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 639
    :cond_36
    add-int/lit8 v122, v122, 0x1

    goto :goto_d

    .line 708
    .end local v60    # "arr$":[Ljava/lang/String;
    .end local v122    # "i$":I
    .end local v128    # "len$":I
    .end local v186    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v187    # "smsPackageName":Ljava/lang/String;
    .restart local v65    # "calendarIntent":Landroid/content/Intent;
    .restart local v66    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v67    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v69    # "calendarSyncAdapterCount":I
    .restart local v71    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v74    # "carrierProvIntent":Landroid/content/Intent;
    .restart local v75    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v76    # "cbrIntent":Landroid/content/Intent;
    .restart local v77    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v121    # "i":I
    :cond_37
    new-instance v84, Landroid/content/Intent;

    const-string v221, "android.intent.action.MAIN"

    move-object/from16 v0, v84

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .local v84, "contactsIntent":Landroid/content/Intent;
    const-string v221, "android.intent.category.APP_CONTACTS"

    move-object/from16 v0, v84

    move-object/from16 v1, v221

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v85

    .line 712
    .local v85, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v85, :cond_38

    invoke-static/range {v85 .. v85}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_38

    .line 714
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Contacts : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v85

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 716
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 717
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 718
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 722
    :cond_38
    const-string v221, "com.samsung.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v39

    .line 723
    .local v39, "SamsungContacts":Landroid/content/pm/PackageParser$Package;
    if-eqz v39, :cond_39

    .line 726
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 730
    :cond_39
    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v90

    .line 732
    .local v90, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface/range {v90 .. v90}, Ljava/util/List;->size()I

    move-result v88

    .line 733
    .local v88, "contactsSyncAdapterCount":I
    const/16 v121, 0x0

    :goto_e
    move/from16 v0, v121

    move/from16 v1, v88

    if-ge v0, v1, :cond_3b

    .line 734
    move-object/from16 v0, v90

    move/from16 v1, v121

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/content/pm/PackageParser$Package;

    .line 735
    .local v87, "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v87 .. v87}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_3a

    .line 736
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Contacts provider sync adapters : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v87

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 738
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 733
    :cond_3a
    add-int/lit8 v121, v121, 0x1

    goto :goto_e

    .line 743
    .end local v87    # "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    :cond_3b
    const-string v221, "com.android.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v86

    .line 745
    .local v86, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v86, :cond_3c

    .line 746
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Contacts provider : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v86

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 748
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 750
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 752
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 756
    :cond_3c
    const-string v221, "com.sec.android.widgetapp.easymodecontactswidget"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 757
    .local v9, "FavoriteContacts":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_3d

    invoke-static {v9}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_3d

    .line 759
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    move/from16 v2, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 763
    :cond_3d
    new-instance v95, Landroid/content/Intent;

    const-string v221, "android.app.action.PROVISION_MANAGED_DEVICE"

    move-object/from16 v0, v95

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 765
    .local v95, "deviceProvisionIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v95

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v96

    .line 767
    .local v96, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v96, :cond_3e

    invoke-static/range {v96 .. v96}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_3e

    .line 769
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Device provisioning : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v96

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 771
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 775
    :cond_3e
    new-instance v133, Landroid/content/Intent;

    const-string v221, "android.intent.action.MAIN"

    move-object/from16 v0, v133

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .local v133, "mapsIntent":Landroid/content/Intent;
    const-string v221, "android.intent.category.APP_MAPS"

    move-object/from16 v0, v133

    move-object/from16 v1, v221

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v134

    .line 779
    .local v134, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v134, :cond_3f

    invoke-static/range {v134 .. v134}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_3f

    .line 781
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Maps : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v134

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 783
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 787
    :cond_3f
    new-instance v113, Landroid/content/Intent;

    const-string v221, "android.intent.action.MAIN"

    move-object/from16 v0, v113

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 788
    .local v113, "galleryIntent":Landroid/content/Intent;
    const-string v221, "android.intent.category.APP_GALLERY"

    move-object/from16 v0, v113

    move-object/from16 v1, v221

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v114

    .line 791
    .local v114, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v114, :cond_40

    invoke-static/range {v114 .. v114}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_40

    .line 793
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Gallery : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v114

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 796
    new-instance v115, Landroid/util/ArraySet;

    invoke-direct/range {v115 .. v115}, Landroid/util/ArraySet;-><init>()V

    .line 797
    .local v115, "galleryPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_SMS"

    move-object/from16 v0, v115

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 798
    const-string v221, "android.permission.SEND_SMS"

    move-object/from16 v0, v115

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 799
    const-string v221, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v115

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 800
    const-string v221, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v115

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 801
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v115

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 802
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v115

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 804
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    move-object/from16 v2, v115

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 808
    .end local v115    # "galleryPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_40
    new-instance v106, Landroid/content/Intent;

    const-string v221, "android.intent.action.MAIN"

    move-object/from16 v0, v106

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    .local v106, "emailIntent":Landroid/content/Intent;
    const-string v221, "android.intent.category.APP_EMAIL"

    move-object/from16 v0, v106

    move-object/from16 v1, v221

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    move-object/from16 v0, p0

    move-object/from16 v1, v106

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v107

    .line 812
    .local v107, "emailPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v107, :cond_41

    invoke-static/range {v107 .. v107}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_41

    .line 814
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Email : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v107

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 816
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 820
    :cond_41
    const/16 v64, 0x0

    .line 821
    .local v64, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v221, v0

    move-object/from16 v0, v221

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v93

    .line 822
    .local v93, "defaultBrowserPackage":Ljava/lang/String;
    if-eqz v93, :cond_42

    .line 823
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v64

    .line 825
    :cond_42
    if-nez v64, :cond_43

    .line 826
    new-instance v63, Landroid/content/Intent;

    const-string v221, "android.intent.action.MAIN"

    move-object/from16 v0, v63

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    .local v63, "browserIntent":Landroid/content/Intent;
    const-string v221, "android.intent.category.APP_BROWSER"

    move-object/from16 v0, v63

    move-object/from16 v1, v221

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v64

    .line 831
    .end local v63    # "browserIntent":Landroid/content/Intent;
    :cond_43
    if-eqz v64, :cond_44

    invoke-static/range {v64 .. v64}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_44

    .line 833
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Browser : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v64

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 835
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 839
    :cond_44
    const-string v221, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v173

    .line 840
    .local v173, "sbrowserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v173, :cond_45

    invoke-static/range {v173 .. v173}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_45

    .line 841
    new-instance v174, Landroid/util/ArraySet;

    invoke-direct/range {v174 .. v174}, Landroid/util/ArraySet;-><init>()V

    .line 842
    .local v174, "sbrowserPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v174

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 846
    move-object/from16 v0, p0

    move-object/from16 v1, v173

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 850
    .end local v174    # "sbrowserPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_45
    if-eqz v125, :cond_47

    .line 851
    move-object/from16 v60, v125

    .restart local v60    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v60

    array-length v0, v0

    move/from16 v128, v0

    .restart local v128    # "len$":I
    const/16 v122, 0x0

    .restart local v122    # "i$":I
    :goto_f
    move/from16 v0, v122

    move/from16 v1, v128

    if-ge v0, v1, :cond_47

    aget-object v124, v60, v122

    .line 852
    .local v124, "imePackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v123

    .line 853
    .local v123, "imePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v123, :cond_46

    invoke-static/range {v123 .. v123}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_46

    .line 855
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "IME : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v123

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 857
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v123

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 851
    :cond_46
    add-int/lit8 v122, v122, 0x1

    goto :goto_f

    .line 861
    .end local v60    # "arr$":[Ljava/lang/String;
    .end local v122    # "i$":I
    .end local v123    # "imePackage":Landroid/content/pm/PackageParser$Package;
    .end local v124    # "imePackageName":Ljava/lang/String;
    .end local v128    # "len$":I
    :cond_47
    const-string v221, "com.sec.android.inputmethod"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v166

    .line 862
    .local v166, "samsungIME":Landroid/content/pm/PackageParser$Package;
    if-eqz v166, :cond_48

    invoke-static/range {v166 .. v166}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_48

    .line 863
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v166

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 864
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v166

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 868
    :cond_48
    if-eqz v211, :cond_4a

    .line 869
    move-object/from16 v60, v211

    .restart local v60    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v60

    array-length v0, v0

    move/from16 v128, v0

    .restart local v128    # "len$":I
    const/16 v122, 0x0

    .restart local v122    # "i$":I
    :goto_10
    move/from16 v0, v122

    move/from16 v1, v128

    if-ge v0, v1, :cond_4a

    aget-object v210, v60, v122

    .line 870
    .local v210, "voiceInteractPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v210

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v209

    .line 872
    .local v209, "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v209, :cond_49

    invoke-static/range {v209 .. v209}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_49

    .line 874
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Voice interaction : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v209

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 876
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v209

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 878
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v209

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 880
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v209

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 882
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v209

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 884
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v209

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 886
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v209

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 869
    :cond_49
    add-int/lit8 v122, v122, 0x1

    goto/16 :goto_10

    .line 893
    .end local v60    # "arr$":[Ljava/lang/String;
    .end local v122    # "i$":I
    .end local v128    # "len$":I
    .end local v209    # "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .end local v210    # "voiceInteractPackageName":Ljava/lang/String;
    :cond_4a
    new-instance v213, Landroid/content/Intent;

    const-string v221, "android.speech.RecognitionService"

    move-object/from16 v0, v213

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 894
    .local v213, "voiceRecoIntent":Landroid/content/Intent;
    const-string v221, "android.intent.category.DEFAULT"

    move-object/from16 v0, v213

    move-object/from16 v1, v221

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    move-object/from16 v0, p0

    move-object/from16 v1, v213

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v214

    .line 897
    .local v214, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v214, :cond_4b

    invoke-static/range {v214 .. v214}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_4b

    .line 899
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Voice recognition : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v214

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 901
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v214

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 905
    :cond_4b
    if-eqz v130, :cond_4d

    .line 906
    move-object/from16 v60, v130

    .restart local v60    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v60

    array-length v0, v0

    move/from16 v128, v0

    .restart local v128    # "len$":I
    const/16 v122, 0x0

    .restart local v122    # "i$":I
    :goto_11
    move/from16 v0, v122

    move/from16 v1, v128

    if-ge v0, v1, :cond_4d

    aget-object v150, v60, v122

    .line 907
    .local v150, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v150

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v129

    .line 908
    .local v129, "locationPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v129, :cond_4c

    invoke-static/range {v129 .. v129}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_4c

    .line 910
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Location : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v129

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 912
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 913
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 914
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 915
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 916
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 917
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 919
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 920
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 921
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 906
    :cond_4c
    add-int/lit8 v122, v122, 0x1

    goto/16 :goto_11

    .line 927
    .end local v60    # "arr$":[Ljava/lang/String;
    .end local v122    # "i$":I
    .end local v128    # "len$":I
    .end local v129    # "locationPackage":Landroid/content/pm/PackageParser$Package;
    .end local v150    # "packageName":Ljava/lang/String;
    :cond_4d
    new-instance v140, Landroid/content/Intent;

    const-string v221, "android.intent.action.VIEW"

    move-object/from16 v0, v140

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 928
    .local v140, "musicIntent":Landroid/content/Intent;
    const-string v221, "android.intent.category.DEFAULT"

    move-object/from16 v0, v140

    move-object/from16 v1, v221

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    new-instance v221, Ljava/io/File;

    const-string/jumbo v223, "foo.mp3"

    move-object/from16 v0, v221

    move-object/from16 v1, v223

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v221 .. v221}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v221

    const-string v223, "audio/mpeg"

    move-object/from16 v0, v140

    move-object/from16 v1, v221

    move-object/from16 v2, v223

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v141

    .line 933
    .local v141, "musicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v141, :cond_4e

    invoke-static/range {v141 .. v141}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_4e

    .line 935
    const/16 v221, 0xc30

    new-instance v223, Ljava/lang/StringBuilder;

    invoke-direct/range {v223 .. v223}, Ljava/lang/StringBuilder;-><init>()V

    const-string v224, "Music : "

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    move-object/from16 v0, v141

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v224, v0

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    const-string v224, " was granted by default"

    invoke-virtual/range {v223 .. v224}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v223

    invoke-virtual/range {v223 .. v223}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v223

    move/from16 v0, v221

    move-object/from16 v1, v223

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 937
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v141

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 941
    :cond_4e
    const-string v221, "com.samsung.mdl.radio"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v167

    .line 942
    .local v167, "samsungMilkMusicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v167, :cond_4f

    invoke-static/range {v167 .. v167}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_4f

    .line 943
    new-instance v168, Landroid/util/ArraySet;

    invoke-direct/range {v168 .. v168}, Landroid/util/ArraySet;-><init>()V

    .line 944
    .local v168, "samsungMilkMusicPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v168

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 945
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v168

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 946
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v168

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 947
    const-string v221, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v168

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 948
    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move-object/from16 v2, v168

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 952
    .end local v168    # "samsungMilkMusicPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4f
    const-string v221, "com.samsung.oh"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v163

    .line 953
    .local v163, "sPlusPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v163, :cond_50

    invoke-static/range {v163 .. v163}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_50

    .line 955
    new-instance v164, Landroid/util/ArraySet;

    invoke-direct/range {v164 .. v164}, Landroid/util/ArraySet;-><init>()V

    .line 956
    .local v164, "sPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v164

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 957
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v164

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 958
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v164

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 959
    const-string v221, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v164

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 960
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    move-object/from16 v2, v164

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 964
    .end local v164    # "sPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_50
    const-string v221, "de.telekom.tsc"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v43

    .line 965
    .local v43, "TelekomTscPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v43, :cond_51

    invoke-static/range {v43 .. v43}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_51

    .line 966
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 970
    :cond_51
    const-string v221, "de.telekom.mds.mbp"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v42

    .line 971
    .local v42, "TelekomMbpPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v42, :cond_52

    invoke-static/range {v42 .. v42}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_52

    .line 972
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 973
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 977
    :cond_52
    const-string v221, "at.tmobile.android.myt"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v45

    .line 978
    .local v45, "TmobileMytPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v45, :cond_53

    invoke-static/range {v45 .. v45}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_53

    .line 979
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 983
    :cond_53
    const-string/jumbo v221, "pl.tmobile.miboa"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v44

    .line 984
    .local v44, "TmobileMiboaPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v44, :cond_54

    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_54

    .line 985
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 986
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 990
    :cond_54
    const-string/jumbo v221, "pl.tmobile.panel"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v46

    .line 991
    .local v46, "TmobilePanelPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v46, :cond_55

    invoke-static/range {v46 .. v46}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_55

    .line 992
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 993
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 997
    :cond_55
    const-string v221, "com.wsomacp"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v146

    .line 998
    .local v146, "omacpPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v146, :cond_56

    invoke-static/range {v146 .. v146}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_56

    .line 999
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v146

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1000
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v146

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1004
    :cond_56
    const-string v221, "com.att.mobiletransfer"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v138

    .line 1005
    .local v138, "mobileTransferPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v138, :cond_57

    invoke-static/range {v138 .. v138}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_57

    .line 1006
    new-instance v139, Landroid/util/ArraySet;

    invoke-direct/range {v139 .. v139}, Landroid/util/ArraySet;-><init>()V

    .line 1007
    .local v139, "mobileTransferPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.CAMERA"

    move-object/from16 v0, v139

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1008
    const-string v221, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v139

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1009
    const-string v221, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v139

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1010
    const-string v221, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v139

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1011
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v139

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1012
    const-string v221, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v139

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1013
    const-string v221, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v139

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1014
    const-string v221, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v139

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1015
    const-string v221, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v139

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1016
    const-string v221, "android.permission.SEND_SMS"

    move-object/from16 v0, v139

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1017
    const-string v221, "android.permission.READ_SMS"

    move-object/from16 v0, v139

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1018
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v139

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1019
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v139

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1020
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v139

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1021
    move-object/from16 v0, p0

    move-object/from16 v1, v138

    move-object/from16 v2, v139

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1025
    .end local v139    # "mobileTransferPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_57
    const-string v221, "com.smartcom"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v61

    .line 1026
    .local v61, "attAllAccessPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v61, :cond_58

    invoke-static/range {v61 .. v61}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_58

    .line 1027
    new-instance v62, Landroid/util/ArraySet;

    invoke-direct/range {v62 .. v62}, Landroid/util/ArraySet;-><init>()V

    .line 1028
    .local v62, "attAllAccessPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v62

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1029
    const-string v221, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v62

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1030
    const-string v221, "android.permission.READ_SMS"

    move-object/from16 v0, v62

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1031
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1035
    .end local v62    # "attAllAccessPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_58
    const-string/jumbo v221, "net.aetherpal.device"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v159

    .line 1036
    .local v159, "remoteSupportPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v159, :cond_59

    invoke-static/range {v159 .. v159}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_59

    .line 1037
    new-instance v160, Landroid/util/ArraySet;

    invoke-direct/range {v160 .. v160}, Landroid/util/ArraySet;-><init>()V

    .line 1038
    .local v160, "remoteSupportPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.CALL_PHONE"

    move-object/from16 v0, v160

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1039
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v160

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1040
    const-string v221, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v160

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1041
    const-string v221, "android.permission.READ_SMS"

    move-object/from16 v0, v160

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1042
    move-object/from16 v0, p0

    move-object/from16 v1, v159

    move-object/from16 v2, v160

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1046
    .end local v160    # "remoteSupportPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_59
    const-string v221, "com.locationlabs.sparkle.blue"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v108

    .line 1047
    .local v108, "familyUtilityPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v108, :cond_5a

    invoke-static/range {v108 .. v108}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_5a

    .line 1048
    new-instance v109, Landroid/util/ArraySet;

    invoke-direct/range {v109 .. v109}, Landroid/util/ArraySet;-><init>()V

    .line 1049
    .local v109, "familyUtilityPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v109

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1050
    const-string v221, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v109

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1051
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v109

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1052
    const-string v221, "android.permission.SEND_SMS"

    move-object/from16 v0, v109

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1053
    const-string v221, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v109

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1054
    move-object/from16 v0, p0

    move-object/from16 v1, v108

    move-object/from16 v2, v109

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1058
    .end local v109    # "familyUtilityPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5a
    const-string v221, "com.asurion.android.mobilerecovery.att"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v154

    .line 1059
    .local v154, "protectionPlusPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v154, :cond_5b

    invoke-static/range {v154 .. v154}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_5b

    .line 1060
    new-instance v155, Landroid/util/ArraySet;

    invoke-direct/range {v155 .. v155}, Landroid/util/ArraySet;-><init>()V

    .line 1061
    .local v155, "protectionPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v155

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1062
    const-string v221, "android.permission.CALL_PHONE"

    move-object/from16 v0, v155

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1063
    move-object/from16 v0, p0

    move-object/from16 v1, v154

    move-object/from16 v2, v155

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1064
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v154

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1065
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v154

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1066
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v154

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1070
    .end local v155    # "protectionPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5b
    const-string v221, "com.matchboxmobile.wisp"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v117

    .line 1071
    .local v117, "hotSpotPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v117, :cond_5c

    invoke-static/range {v117 .. v117}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_5c

    .line 1072
    new-instance v118, Landroid/util/ArraySet;

    invoke-direct/range {v118 .. v118}, Landroid/util/ArraySet;-><init>()V

    .line 1073
    .local v118, "hotSpotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v118

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1074
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    move-object/from16 v2, v118

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1078
    .end local v118    # "hotSpotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5c
    const-string v221, "com.smartcomroot"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1079
    .local v6, "AllAccessBaserootPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_5d

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_5d

    .line 1080
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1081
    .local v7, "AllAccessBaserootPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v221

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1082
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1086
    .end local v7    # "AllAccessBaserootPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5d
    const-string v221, "com.att.myWireless"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v142

    .line 1087
    .local v142, "myATTPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v142, :cond_5e

    invoke-static/range {v142 .. v142}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_5e

    .line 1088
    new-instance v143, Landroid/util/ArraySet;

    invoke-direct/range {v143 .. v143}, Landroid/util/ArraySet;-><init>()V

    .line 1089
    .local v143, "myATTPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v143

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1090
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    move-object/from16 v2, v143

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1094
    .end local v143    # "myATTPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5e
    const-string v221, "com.dti.att"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v58

    .line 1095
    .local v58, "appSelectPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v58, :cond_5f

    invoke-static/range {v58 .. v58}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_5f

    .line 1096
    new-instance v59, Landroid/util/ArraySet;

    invoke-direct/range {v59 .. v59}, Landroid/util/ArraySet;-><init>()V

    .line 1097
    .local v59, "appSelectPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v59

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1098
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1102
    .end local v59    # "appSelectPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5f
    const-string v221, "com.tmobile.pr.adapt"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v56

    .line 1103
    .local v56, "adaptPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v56, :cond_60

    invoke-static/range {v56 .. v56}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_60

    .line 1104
    new-instance v57, Landroid/util/ArraySet;

    invoke-direct/range {v57 .. v57}, Landroid/util/ArraySet;-><init>()V

    .line 1105
    .local v57, "adaptPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v57

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1106
    const-string v221, "android.permission.CALL_PHONE"

    move-object/from16 v0, v57

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1107
    const-string v221, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v57

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1108
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1112
    .end local v57    # "adaptPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_60
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v221

    const-string v223, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v221

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1114
    .local v48, "VZW":Ljava/lang/String;
    const-string v221, "VZW"

    move-object/from16 v0, v221

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v221

    if-eqz v221, :cond_61

    .line 1115
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToVerizonApp(I)V

    .line 1119
    :cond_61
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v221

    const-string v223, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v221

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1120
    .local v5, "ATT":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v221

    if-nez v221, :cond_62

    const-string v221, "ATT"

    move-object/from16 v0, v221

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v221

    if-eqz v221, :cond_62

    .line 1121
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToAttApp(I)V

    .line 1125
    :cond_62
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v221

    const-string v223, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v221

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1126
    .local v41, "TMO":Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v221

    if-nez v221, :cond_63

    const-string v221, "TMO"

    move-object/from16 v0, v221

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v221

    if-eqz v221, :cond_63

    .line 1127
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToTmoApp(I)V

    .line 1131
    :cond_63
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v221

    const-string v223, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v221

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1132
    .local v37, "SIN":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v221

    if-nez v221, :cond_64

    const-string v221, "SIN"

    move-object/from16 v0, v221

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v221

    if-eqz v221, :cond_64

    .line 1133
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToSingtelApp(I)V

    .line 1137
    :cond_64
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v221

    const-string v223, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v221

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1138
    .local v8, "CCT":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v221

    if-nez v221, :cond_65

    const-string v221, "CCT"

    move-object/from16 v0, v221

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v221

    if-eqz v221, :cond_65

    .line 1139
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToComcastApp(I)V

    .line 1143
    :cond_65
    const-string v221, "com.sec.android.daemonapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v218

    .line 1144
    .local v218, "weatherDaemonPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v218, :cond_66

    invoke-static/range {v218 .. v218}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_66

    .line 1145
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v218

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1146
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v218

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1150
    :cond_66
    const-string v221, "com.sec.android.widgetapp.ap.hero.accuweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v216

    .line 1151
    .local v216, "weatherAccuPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v216, :cond_67

    invoke-static/range {v216 .. v216}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_67

    .line 1152
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v216

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1153
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v216

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1157
    :cond_67
    const-string v221, "com.sec.android.widgetapp.ap.hero.cmaweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v217

    .line 1158
    .local v217, "weatherCMAPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v217, :cond_68

    invoke-static/range {v217 .. v217}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_68

    .line 1159
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v217

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1160
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v217

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1164
    :cond_68
    const-string v221, "com.sec.android.widgetapp.ap.hero.kweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v220

    .line 1165
    .local v220, "weatherNewsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v220, :cond_69

    invoke-static/range {v220 .. v220}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_69

    .line 1166
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v220

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1167
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v220

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1171
    :cond_69
    const-string v221, "com.sec.android.widgetapp.ap.hero.weathernewsjp"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v219

    .line 1172
    .local v219, "weatherNewsJPPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v219, :cond_6a

    invoke-static/range {v219 .. v219}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_6a

    .line 1173
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v219

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1174
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v219

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1178
    :cond_6a
    const-string v221, "com.osp.app.signin"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v38

    .line 1179
    .local v38, "SamsungAccountPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v38, :cond_6b

    invoke-static/range {v38 .. v38}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_6b

    .line 1180
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1184
    :cond_6b
    const-string v221, "com.samsung.android.app.galaxyfinder"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v162

    .line 1185
    .local v162, "sFinderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v162, :cond_6c

    invoke-static/range {v162 .. v162}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_6c

    .line 1186
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v162

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1187
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v162

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1188
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v162

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1189
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v162

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1190
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v162

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1194
    :cond_6c
    const-string v221, "com.samsung.voiceserviceplatform"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v192

    .line 1195
    .local v192, "svoicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v192, :cond_6d

    invoke-static/range {v192 .. v192}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_6d

    .line 1196
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v192

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1197
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v192

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1198
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v192

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1199
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v192

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1200
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v192

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1201
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v192

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1202
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v192

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1206
    :cond_6d
    const-string v221, "com.samsung.android.svoiceime"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v191

    .line 1207
    .local v191, "svoiceImePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v191, :cond_6e

    invoke-static/range {v191 .. v191}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_6e

    .line 1208
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v191

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1212
    :cond_6e
    const-string v221, "com.samsung.android.video"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v171

    .line 1213
    .local v171, "samsungVideoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v171, :cond_6f

    invoke-static/range {v171 .. v171}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_6f

    .line 1214
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v171

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1218
    :cond_6f
    const-string v221, "com.samsung.everglades.video"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v207

    .line 1219
    .local v207, "videoListMPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v207, :cond_70

    invoke-static/range {v207 .. v207}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_70

    .line 1220
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v207

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1224
    :cond_70
    const-string v221, "com.sec.android.app.videoplayer"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v208

    .line 1225
    .local v208, "videoPlayerMPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v208, :cond_71

    invoke-static/range {v208 .. v208}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_71

    .line 1226
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v208

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1230
    :cond_71
    const-string v221, "com.samsung.android.app.soundpicker"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v189

    .line 1231
    .local v189, "soundPickerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v189, :cond_72

    invoke-static/range {v189 .. v189}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_72

    .line 1232
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v189

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1236
    :cond_72
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v221

    const-string v223, "CscFeature_Common_EnableSprintExtension"

    move-object/from16 v0, v221

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v221

    if-eqz v221, :cond_73

    .line 1237
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToSprintApps(I)V

    .line 1241
    :cond_73
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v221

    const-string v223, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v221

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1242
    .local v47, "USC_pregrant":Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v221

    if-nez v221, :cond_74

    const-string v221, "USC"

    move-object/from16 v0, v221

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v221

    if-eqz v221, :cond_74

    .line 1243
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToUsccApps(I)V

    .line 1246
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v221, v0

    move-object/from16 v0, v221

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v221, v0

    move-object/from16 v0, v221

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->onDefaultRuntimePermissionsGrantedLPr(I)V

    .line 1249
    const-string v221, "com.sec.android.app.voicenote"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v53

    .line 1250
    .local v53, "VoiceRecorderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v53, :cond_75

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_75

    .line 1251
    new-instance v215, Landroid/util/ArraySet;

    invoke-direct/range {v215 .. v215}, Landroid/util/ArraySet;-><init>()V

    .line 1252
    .local v215, "voicenotePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v215

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1253
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v215

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1254
    const-string v221, "android.permission.CALL_PHONE"

    move-object/from16 v0, v215

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1255
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v215

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1256
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v215

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1258
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v215

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1262
    .end local v215    # "voicenotePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_75
    const-string v221, "com.samsung.android.app.memo"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v136

    .line 1263
    .local v136, "memoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v136, :cond_76

    invoke-static/range {v136 .. v136}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_76

    .line 1264
    new-instance v137, Landroid/util/ArraySet;

    invoke-direct/range {v137 .. v137}, Landroid/util/ArraySet;-><init>()V

    .line 1265
    .local v137, "memoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v137

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1266
    const-string v221, "android.permission.CAMERA"

    move-object/from16 v0, v137

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1267
    const-string v221, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v137

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1268
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v137

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1269
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v137

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1271
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1274
    .end local v137    # "memoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_76
    const-string v221, "com.samsung.greetingcard"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v10

    .line 1275
    .local v10, "GTCardPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v10, :cond_77

    invoke-static {v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_77

    .line 1276
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 1277
    .local v11, "GTCardPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_CALENDAR"

    move-object/from16 v0, v221

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1278
    const-string v221, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v221

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1280
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v11, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1283
    .end local v11    # "GTCardPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_77
    const-string v221, "com.sec.android.widget.greetingcardwidget"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 1284
    .local v12, "GTCardWidget":Landroid/content/pm/PackageParser$Package;
    if-eqz v12, :cond_78

    invoke-static {v12}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_78

    .line 1285
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 1286
    .local v13, "GTCardWidgetPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_CALENDAR"

    move-object/from16 v0, v221

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1288
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v13, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1292
    .end local v13    # "GTCardWidgetPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_78
    const-string v221, "com.samsung.android.app.notes"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    .line 1293
    .local v29, "NotesPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v29, :cond_79

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_79

    .line 1294
    new-instance v30, Landroid/util/ArraySet;

    invoke-direct/range {v30 .. v30}, Landroid/util/ArraySet;-><init>()V

    .line 1296
    .local v30, "NotesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.CAMERA"

    move-object/from16 v0, v30

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1297
    const-string v221, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v30

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1298
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v30

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1299
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v30

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1301
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1305
    .end local v30    # "NotesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_79
    const-string v221, "com.samsung.android.game.gametools"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v116

    .line 1306
    .local v116, "gameToolsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v116, :cond_7a

    invoke-static/range {v116 .. v116}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_7a

    .line 1307
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v116

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1308
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v116

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1309
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v116

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1310
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v116

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1314
    :cond_7a
    const-string v221, "com.samsung.android.service.peoplestripe"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v152

    .line 1315
    .local v152, "peopleEdgePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v152, :cond_7b

    invoke-static/range {v152 .. v152}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_7b

    .line 1317
    new-instance v153, Landroid/util/ArraySet;

    invoke-direct/range {v153 .. v153}, Landroid/util/ArraySet;-><init>()V

    .line 1318
    .local v153, "peoplePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v153

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1319
    const-string v221, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v153

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1320
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v153

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1321
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v153

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1322
    const-string v221, "android.permission.CAMERA"

    move-object/from16 v0, v153

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1323
    const-string v221, "android.permission.SEND_SMS"

    move-object/from16 v0, v153

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1324
    const-string v221, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v153

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1325
    const-string v221, "android.permission.READ_SMS"

    move-object/from16 v0, v153

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1326
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move-object/from16 v2, v153

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1330
    .end local v153    # "peoplePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7b
    const-string v221, "com.sec.android.widgetapp.locationwidget"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v144

    .line 1331
    .local v144, "myPlacesPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v144, :cond_7c

    invoke-static/range {v144 .. v144}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_7c

    .line 1333
    new-instance v145, Landroid/util/ArraySet;

    invoke-direct/range {v145 .. v145}, Landroid/util/ArraySet;-><init>()V

    .line 1334
    .local v145, "myPlacesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v145

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1335
    const-string v221, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v145

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1336
    const-string v221, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v145

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1337
    const-string v221, "android.permission.CALL_PHONE"

    move-object/from16 v0, v145

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1338
    const-string v221, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v145

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1339
    const-string v221, "android.permission.SEND_SMS"

    move-object/from16 v0, v145

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1340
    const-string v221, "android.permission.READ_CALENDAR"

    move-object/from16 v0, v145

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1341
    move-object/from16 v0, p0

    move-object/from16 v1, v144

    move-object/from16 v2, v145

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1345
    .end local v145    # "myPlacesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7c
    const-string v221, "com.samsung.android.email.provider"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v105

    .line 1346
    .local v105, "emailAppPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v105, :cond_7d

    invoke-static/range {v105 .. v105}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_7d

    .line 1348
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1349
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1351
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1353
    new-instance v188, Landroid/util/ArraySet;

    invoke-direct/range {v188 .. v188}, Landroid/util/ArraySet;-><init>()V

    .line 1354
    .local v188, "smsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v188

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1355
    const-string v221, "android.permission.SEND_SMS"

    move-object/from16 v0, v188

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1356
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    move-object/from16 v2, v188

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1361
    .end local v188    # "smsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7d
    const-string v221, "com.sec.android.app.samsungapps"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v112

    .line 1362
    .local v112, "galaxyAppsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v112, :cond_7e

    invoke-static/range {v112 .. v112}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_7e

    .line 1363
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1364
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1365
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1366
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1370
    :cond_7e
    const-string v221, "com.vodafone.callplushybrid"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v51

    .line 1371
    .local v51, "VodafoneCallPlus":Landroid/content/pm/PackageParser$Package;
    if-eqz v51, :cond_7f

    invoke-static/range {v51 .. v51}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_7f

    .line 1372
    new-instance v52, Landroid/util/ArraySet;

    invoke-direct/range {v52 .. v52}, Landroid/util/ArraySet;-><init>()V

    .line 1373
    .local v52, "VodafoneCallPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v52

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1374
    const-string v221, "android.permission.CALL_PHONE"

    move-object/from16 v0, v52

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1375
    const-string v221, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v52

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1376
    const-string v221, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v52

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1377
    const-string v221, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v52

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1378
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v52

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1379
    const-string v221, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v52

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1380
    const-string v221, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v52

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1381
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1385
    .end local v52    # "VodafoneCallPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7f
    const-string v221, "com.samsung.android.themestore"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v202

    .line 1386
    .local v202, "themeStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v202, :cond_80

    invoke-static/range {v202 .. v202}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_80

    .line 1387
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v202

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1388
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v202

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1389
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v202

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1393
    :cond_80
    const-string v221, "com.sec.android.app.clockpackage"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v82

    .line 1394
    .local v82, "clockPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v82, :cond_81

    invoke-static/range {v82 .. v82}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_81

    .line 1395
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1396
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1399
    :cond_81
    const-string v221, "com.sec.android.app.clockpackagechina"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v83

    .line 1400
    .local v83, "clockPackageChina":Landroid/content/pm/PackageParser$Package;
    if-eqz v83, :cond_82

    invoke-static/range {v83 .. v83}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_82

    .line 1401
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1402
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1406
    :cond_82
    const-string v221, "com.sec.android.mimage.photoretouching"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v35

    .line 1407
    .local v35, "PhotoEditorPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v35, :cond_83

    invoke-static/range {v35 .. v35}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_83

    .line 1408
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1409
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1413
    :cond_83
    const-string v221, "com.sec.android.app.vepreload"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v50

    .line 1414
    .local v50, "VideoEditorPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v50, :cond_84

    invoke-static/range {v50 .. v50}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_84

    .line 1415
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1419
    :cond_84
    const-string v221, "com.samsung.app.slowmotion"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v40

    .line 1420
    .local v40, "SlowMotionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v40, :cond_85

    invoke-static/range {v40 .. v40}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_85

    .line 1421
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1425
    :cond_85
    const-string v221, "com.samsung.app.highlightplayer"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    .line 1426
    .local v14, "HighlightPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v14, :cond_86

    invoke-static {v14}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_86

    .line 1427
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    move/from16 v2, v223

    move/from16 v3, p1

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1431
    :cond_86
    const-string v221, "com.sec.android.app.clipvideo"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v49

    .line 1432
    .local v49, "VideoCollagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v49, :cond_87

    invoke-static/range {v49 .. v49}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_87

    .line 1433
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v223, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v221

    move/from16 v3, v223

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1436
    :cond_87
    monitor-exit v222
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1439
    const-string v221, "com.samsung.android.qconnect"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v156

    .line 1440
    .local v156, "qcHeroPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v156, :cond_88

    invoke-static/range {v156 .. v156}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_88

    .line 1441
    new-instance v158, Landroid/util/ArraySet;

    invoke-direct/range {v158 .. v158}, Landroid/util/ArraySet;-><init>()V

    .line 1442
    .local v158, "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v158

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1443
    const-string v221, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v158

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1444
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v158

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1445
    move-object/from16 v0, p0

    move-object/from16 v1, v156

    move-object/from16 v2, v158

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1448
    .end local v158    # "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_88
    const-string v221, "com.samsung.android.sconnect"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v157

    .line 1449
    .local v157, "qcPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v157, :cond_89

    invoke-static/range {v157 .. v157}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_89

    .line 1450
    new-instance v158, Landroid/util/ArraySet;

    invoke-direct/range {v158 .. v158}, Landroid/util/ArraySet;-><init>()V

    .line 1451
    .restart local v158    # "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v158

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1452
    const-string v221, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v158

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1453
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v158

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1454
    move-object/from16 v0, p0

    move-object/from16 v1, v157

    move-object/from16 v2, v158

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1458
    .end local v158    # "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_89
    const-string v221, "com.samsung.android.controltv"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v91

    .line 1459
    .local v91, "controlTVPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v91, :cond_8a

    invoke-static/range {v91 .. v91}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_8a

    .line 1460
    new-instance v92, Landroid/util/ArraySet;

    invoke-direct/range {v92 .. v92}, Landroid/util/ArraySet;-><init>()V

    .line 1461
    .local v92, "controlTVPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v92

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1462
    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v92

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1466
    .end local v92    # "controlTVPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8a
    const-string v221, "com.samsung.android.app.qragent"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v36

    .line 1467
    .local v36, "QRAgentPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v36, :cond_8b

    invoke-static/range {v36 .. v36}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_8b

    .line 1468
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1469
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1473
    :cond_8b
    const-string v221, "com.bst.airmessage"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v110

    .line 1474
    .local v110, "floatingMsgPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v110, :cond_8c

    invoke-static/range {v110 .. v110}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_8c

    .line 1475
    new-instance v111, Landroid/util/ArraySet;

    invoke-direct/range {v111 .. v111}, Landroid/util/ArraySet;-><init>()V

    .line 1476
    .local v111, "floatingMsgPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v111

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1477
    const-string v221, "android.permission.CALL_PHONE"

    move-object/from16 v0, v111

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1478
    const-string v221, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v111

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1480
    const-string v221, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v111

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1482
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v111

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1486
    .end local v111    # "floatingMsgPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8c
    const-string v221, "com.sec.penup"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v151

    .line 1487
    .local v151, "penupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v151, :cond_8d

    invoke-static/range {v151 .. v151}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_8d

    .line 1488
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v151

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1489
    sget-object v221, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v151

    move-object/from16 v2, v221

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1493
    :cond_8d
    const-string v221, "com.sec.android.yellowpage"

    move-object/from16 v0, p0

    move-object/from16 v1, v221

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v54

    .line 1494
    .local v54, "YellowPagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v54, :cond_8e

    invoke-static/range {v54 .. v54}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v221

    if-eqz v221, :cond_8e

    .line 1495
    new-instance v55, Landroid/util/ArraySet;

    invoke-direct/range {v55 .. v55}, Landroid/util/ArraySet;-><init>()V

    .line 1496
    .local v55, "YellowPagePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v221, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v55

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1497
    const-string v221, "android.permission.CALL_PHONE"

    move-object/from16 v0, v55

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1498
    const-string v221, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v55

    move-object/from16 v1, v221

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1499
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1502
    .end local v55    # "YellowPagePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8e
    return-void
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 178
    const-string v7, "DefaultPermGrantPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Granting permissions to platform components for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    sget-object v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 181
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    sget-object v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 182
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 187
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 188
    .local v5, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 189
    .local v4, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 190
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    .local v3, "permission":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 192
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/BasePermission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 193
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v3    # "permission":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 197
    const/4 v7, 0x1

    invoke-direct {p0, v6, v5, v7, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_0

    .line 200
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "permissionCount":I
    .end local v5    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2658
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2659
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 2663
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2664
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V
    .locals 14
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "overrideUserChoice"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    .prologue
    .line 2668
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2731
    :cond_0
    return-void

    .line 2672
    :cond_1
    iget-object v12, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 2673
    .local v12, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 2675
    .local v10, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2676
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 2677
    .local v13, "sysPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_2

    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_2

    .line 2678
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2681
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v12, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2682
    new-instance v10, Landroid/util/ArraySet;

    .end local v10    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v10, v12}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2683
    .restart local v10    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 2688
    .end local v13    # "sysPs":Lcom/android/server/pm/PackageSetting;
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 2689
    .local v9, "grantablePermissionCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_0

    .line 2690
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2694
    .local v2, "permission":Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2689
    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2698
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2699
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p5

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 2707
    .local v8, "flags":I
    if-eqz v8, :cond_5

    if-eqz p4, :cond_3

    .line 2709
    :cond_5
    const/16 v7, 0x14

    .line 2711
    .local v7, "fixedFlags":I
    and-int/lit8 v1, v8, 0x14

    if-nez v1, :cond_3

    .line 2715
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p5

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2721
    const/16 v4, 0x20

    .line 2722
    .local v4, "newFlags":I
    if-eqz p3, :cond_6

    .line 2723
    or-int/lit8 v4, v4, 0x10

    .line 2726
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move v5, v4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_1
.end method

.method private isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2734
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_1

    move v2, v1

    .line 2748
    :cond_0
    :goto_0
    return v2

    .line 2737
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isPrivilegedApp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2740
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 2741
    .local v0, "sysPkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_3

    .line 2742
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 2748
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    .line 2745
    :cond_3
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_2

    goto :goto_0

    :cond_4
    move v1, v2

    .line 2748
    goto :goto_1
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    .line 175
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowserLPr(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2565
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Granting permissions to default browser for user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    if-nez p1, :cond_1

    .line 2574
    :cond_0
    :goto_0
    return-void

    .line 2569
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2570
    .local v1, "browserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2572
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v4, v3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto :goto_0
.end method

.method public grantDefaultPermissionsToDefaultDialerAppLPr(Ljava/lang/String;I)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2491
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Granting permissions to default dialer app for user:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    if-nez p1, :cond_1

    .line 2527
    :cond_0
    :goto_0
    return-void

    .line 2495
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2496
    .local v1, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2498
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2499
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2500
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2501
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2502
    const-string v0, "com.skt.prod.dialer"

    invoke-direct {p0, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 2503
    .local v11, "tDialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_0

    if-ne v1, v11, :cond_0

    .line 2504
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 2505
    .local v2, "tDialerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2506
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move v5, p2

    .line 2507
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2508
    const-string v0, "com.skt.prod.phone"

    invoke-direct {p0, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 2509
    .local v6, "tPhonePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2510
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 2511
    .local v7, "tPhonePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2512
    const-string v0, "android.permission.WRITE_CONTACTS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2513
    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2514
    const-string v0, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2515
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2516
    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2517
    const-string v0, "android.permission.CALL_PHONE"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2518
    const-string v0, "android.permission.READ_SMS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2519
    const-string v0, "android.permission.SEND_SMS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2520
    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2521
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2522
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v5, p0

    move v8, v3

    move v9, v4

    move v10, p2

    .line 2523
    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto/16 :goto_0
.end method

.method public grantDefaultPermissionsToDefaultSimCallManagerLPr(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2539
    if-nez p1, :cond_1

    .line 2546
    :cond_0
    :goto_0
    return-void

    .line 2542
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2543
    .local v0, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    .line 2544
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V

    goto :goto_0
.end method

.method public grantDefaultPermissionsToDefaultSmsAppLPr(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2478
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Granting permissions to default sms app for user:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    if-nez p1, :cond_1

    .line 2488
    :cond_0
    :goto_0
    return-void

    .line 2482
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2483
    .local v1, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2484
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2485
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2486
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto :goto_0
.end method

.method public grantDefaultPermissionsToEnabledCarrierAppsLPr([Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2549
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    if-nez p1, :cond_1

    .line 2562
    :cond_0
    return-void

    .line 2553
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 2554
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2555
    .local v1, "carrierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2557
    sget-object v5, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2558
    sget-object v5, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2559
    sget-object v5, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2553
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setDialerAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 162
    return-void
.end method

.method public setImePackagesProviderLPr(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 146
    return-void
.end method

.method public setLocationPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 150
    return-void
.end method

.method public setSimCallManagerPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 166
    return-void
.end method

.method public setSmsAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 158
    return-void
.end method

.method public setSyncAdapterPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 170
    return-void
.end method

.method public setVoiceInteractionPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 154
    return-void
.end method
