.class public Lcom/samsung/android/sdk/cover/ScoverManager;
.super Ljava/lang/Object;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;
    }
.end annotation


# static fields
.field public static final COVER_MODE_HIDE_SVIEW_ONCE:I = 0x2

.field public static final COVER_MODE_NONE:I = 0x0

.field public static final COVER_MODE_SVIEW:I = 0x1

.field private static final FEATURE_COVER_FLIP:Ljava/lang/String; = "com.sec.feature.cover.flip"

.field public static final FEATURE_COVER_NFCLED:Ljava/lang/String; = "com.sec.feature.cover.nfcledcover"

.field private static final FEATURE_COVER_SVIEW:Ljava/lang/String; = "com.sec.feature.cover.sview"

.field static final SDK_VERSION:I = 0x1010000

.field private static final TAG:Ljava/lang/String; = "ScoverManager"

.field private static sIsFilpCoverSystemFeatureEnabled:Z

.field private static sIsNfcLedCoverSystemFeatureEnabled:Z

.field private static sIsSViewCoverSystemFeatureEnabled:Z

.field private static sIsSystemFeatureQueried:Z

.field private static sServiceVersion:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/cover/ICoverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 156
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 162
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 168
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 174
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 176
    const/high16 v0, 0x1000000

    sput v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 99
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 108
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 183
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->initSystemFeature()V

    .line 185
    return-void
.end method

.method private declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 312
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    .line 313
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 314
    const-string v0, "ScoverManager"

    const-string v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSystemFeature()V
    .locals 2

    .prologue
    .line 191
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 194
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 196
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 198
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverManagerVersion()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    .line 201
    :cond_0
    return-void
.end method

.method static isSupportableVersion(I)Z
    .locals 8
    .param p0, "supportableVersion"    # I

    .prologue
    const v7, 0xffff

    .line 292
    shr-int/lit8 v6, p0, 0x18

    and-int/lit16 v0, v6, 0xff

    .line 293
    .local v0, "majorVersion":I
    shr-int/lit8 v6, p0, 0x10

    and-int/lit16 v1, v6, 0xff

    .line 294
    .local v1, "minorVersion":I
    and-int v2, p0, v7

    .line 295
    .local v2, "revisions":I
    sget v6, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v3, v6, 0xff

    .line 296
    .local v3, "serviceMajorVersion":I
    sget v6, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v4, v6, 0xff

    .line 297
    .local v4, "serviceMinorVersion":I
    sget v6, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    and-int v5, v6, v7

    .line 298
    .local v5, "serviceRevisions":I
    if-lt v3, v0, :cond_0

    if-lt v4, v1, :cond_0

    if-lt v5, v2, :cond_0

    .line 300
    const/4 v6, 0x1

    .line 302
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private registerLegacyLedSystemListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 1308
    if-nez p1, :cond_1

    .line 1309
    const-string v6, "ScoverManager"

    const-string v7, "registerLegacyLedSystemListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    const/4 v4, 0x0

    .line 1315
    .local v4, "ledSystemEventListener":Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1316
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1317
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;

    .line 1318
    .local v1, "delegate":Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1319
    move-object v4, v1

    .line 1324
    .end local v1    # "delegate":Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;
    :cond_3
    if-nez v4, :cond_4

    .line 1325
    new-instance v4, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;

    .end local v4    # "ledSystemEventListener":Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, p1, v6, v7}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;-><init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/content/Context;)V

    .line 1326
    .restart local v4    # "ledSystemEventListener":Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 1331
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 1332
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 1335
    const/4 v6, 0x4

    invoke-interface {v5, v6, v4, v0}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1338
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 1339
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "ScoverManager"

    const-string v7, "RemoteException in registerLegacyLedSystemListener: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static supportNewLedSystemEventListener()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 1292
    const/high16 v0, 0x1050000

    .line 1293
    .local v0, "newApiVersion":I
    const/high16 v1, 0x1050000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    return v1
.end method

.method private unregisterLegacyLedSystemEventListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 1354
    const-string v5, "ScoverManager"

    const-string v6, "unregisterLegacyLedSystemEventListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    if-nez p1, :cond_1

    .line 1357
    const-string v5, "ScoverManager"

    const-string v6, "unregisterLegacyLedSystemEventListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_0
    :goto_0
    return-void

    .line 1361
    :cond_1
    const/4 v3, 0x0

    .line 1363
    .local v3, "ledSystemEventListener":Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1364
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1365
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;

    .line 1366
    .local v0, "delegate":Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1367
    move-object v3, v0

    .line 1372
    .end local v0    # "delegate":Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;
    :cond_3
    if-eqz v3, :cond_0

    .line 1377
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 1378
    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_0

    .line 1379
    invoke-interface {v4, v3}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1380
    iget-object v5, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1383
    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v1

    .line 1384
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "ScoverManager"

    const-string v6, "RemoteException in unregisterLegacyLedSystemEventListener: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 946
    const/high16 v1, 0x1040000

    .line 947
    .local v1, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v3

    if-nez v3, :cond_1

    .line 948
    const-string v3, "ScoverManager"

    const-string v4, "addLedNotification : This device does not support cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v3

    if-nez v3, :cond_2

    .line 953
    const-string v3, "ScoverManager"

    const-string v4, "addLedNotification : This device does not support NFC Led cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 957
    :cond_2
    const/high16 v3, 0x1040000

    invoke-static {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 958
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v4, "This device does not support this function. Device is must higher then v1.4.0"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 963
    :cond_3
    if-nez p1, :cond_4

    .line 964
    const-string v3, "ScoverManager"

    const-string v4, "addLedNotification : Null notification data!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 968
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 970
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_0

    .line 971
    :try_start_0
    invoke-interface {v2, p1}, Lcom/samsung/android/cover/ICoverManager;->addLedNotification(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ScoverManager"

    const-string v4, "addLedNotification in sendData to NFC : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkValidPacakge(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 650
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    .line 651
    const-string v5, "ScoverManager"

    const-string v6, "checkValidPacakge : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    :goto_0
    return v4

    .line 655
    :cond_1
    if-nez p1, :cond_2

    .line 656
    const-string v5, "ScoverManager"

    const-string v6, "checkValidPacakge : pkg is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 661
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    .line 662
    .local v3, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v3, :cond_0

    .line 663
    invoke-interface {v3}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    .line 664
    .local v1, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v1, :cond_3

    iget-boolean v6, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v6, :cond_3

    .line 665
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "coverAppUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 667
    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 668
    goto :goto_0

    .line 672
    .end local v0    # "coverAppUri":Ljava/lang/String;
    :cond_3
    const-string v5, "ScoverManager"

    const-string v6, "checkValidPacakge : coverState is null or cover is detached"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 675
    .end local v1    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v3    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 676
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "ScoverManager"

    const-string v6, "RemoteException in checkCoverAppUri: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableLcdOffByCover(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)Z
    .locals 10
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1403
    const/high16 v4, 0x1050000

    .line 1404
    .local v4, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1405
    const-string v8, "ScoverManager"

    const-string v9, "disableLcdOffByCover : This device does not support cover"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_0
    :goto_0
    return v7

    .line 1409
    :cond_1
    const/high16 v8, 0x1050000

    invoke-static {v8}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1410
    new-instance v7, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v8, "This device does not support this function. Device is must higher then v1.5.0"

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 1415
    :cond_2
    if-nez p1, :cond_3

    .line 1416
    const-string v8, "ScoverManager"

    const-string v9, "disableLcdOffByCover : listener cannot be null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1419
    :cond_3
    const-string v8, "ScoverManager"

    const-string v9, "disableLcdOffByCover"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    const/4 v1, 0x0

    .line 1424
    .local v1, "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1425
    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/CoverListenerDelegate;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1426
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;

    .line 1427
    .local v2, "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1428
    move-object v1, v2

    .line 1433
    .end local v2    # "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    :cond_5
    if-nez v1, :cond_6

    .line 1434
    new-instance v1, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v8, v9}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 1438
    .restart local v1    # "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 1439
    .local v6, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_0

    .line 1440
    new-instance v0, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    .local v0, "cm":Landroid/content/ComponentName;
    invoke-interface {v6, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1443
    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    const/4 v7, 0x1

    goto :goto_0

    .line 1447
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v6    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v3

    .line 1448
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "ScoverManager"

    const-string v9, "RemoteException in disableLcdOffByCover: "

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableLcdOffByCover(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)Z
    .locals 10
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1466
    const/high16 v4, 0x1050000

    .line 1467
    .local v4, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1468
    const-string v8, "ScoverManager"

    const-string v9, "enableLcdOffByCover : This device does not support cover"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_0
    :goto_0
    return v7

    .line 1472
    :cond_1
    const/high16 v8, 0x1050000

    invoke-static {v8}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1473
    new-instance v7, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v8, "This device does not support this function. Device is must higher then v1.5.0"

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 1478
    :cond_2
    if-nez p1, :cond_3

    .line 1479
    const-string v8, "ScoverManager"

    const-string v9, "enableLcdOffByCover : listener cannot be null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1483
    :cond_3
    const-string v8, "ScoverManager"

    const-string v9, "enableLcdOffByCover"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    const/4 v1, 0x0

    .line 1488
    .local v1, "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1489
    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/CoverListenerDelegate;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1490
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;

    .line 1491
    .local v2, "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1492
    move-object v1, v2

    .line 1497
    .end local v2    # "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    :cond_5
    if-nez v1, :cond_6

    .line 1498
    const-string v8, "ScoverManager"

    const-string v9, "enableLcdOffByCover: Matching listener not found, cannot enable"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1503
    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 1504
    .local v6, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_0

    .line 1505
    new-instance v0, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    .local v0, "cm":Landroid/content/ComponentName;
    invoke-interface {v6, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1508
    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1509
    const/4 v7, 0x1

    goto :goto_0

    .line 1512
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v6    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v3

    .line 1513
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "ScoverManager"

    const-string v9, "RemoteException in unregisterNfcTouchListener: "

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getCoverManagerVersion()I
    .locals 6

    .prologue
    .line 270
    const/high16 v2, 0x1000000

    .line 271
    .local v2, "serviceVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    :try_start_0
    const-class v3, Lcom/samsung/android/cover/ICoverManager;

    const-string v4, "getVersion"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 274
    .local v1, "methodGetVersion":Ljava/lang/reflect/Method;
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 279
    .end local v1    # "methodGetVersion":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    const-string v3, "ScoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v2

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ScoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVersion failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 15

    .prologue
    .line 596
    const/high16 v11, 0x1010000

    .line 597
    .local v11, "hasAttachFieldVersion":I
    const/high16 v13, 0x1020000

    .line 598
    .local v13, "hasModelFieldVersion":I
    const/high16 v12, 0x1070000

    .line 599
    .local v12, "hasFakeCoverVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 600
    const-string v1, "ScoverManager"

    const-string v2, "getCoverState : This device is not supported cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v0, 0x0

    .line 640
    :goto_0
    return-object v0

    .line 604
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v14

    .line 605
    .local v14, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v14, :cond_6

    .line 606
    invoke-interface {v14}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v9

    .line 607
    .local v9, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v9, :cond_5

    .line 608
    iget v1, v9, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    iget-boolean v1, v9, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_1

    .line 609
    const-string v1, "ScoverManager"

    const-string v2, "getCoverState : type of cover is nfc smart cover and cover is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    :cond_1
    const/high16 v1, 0x1070000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 614
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v9, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v9, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v9, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v9, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v9, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v9, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v7, v9, Lcom/samsung/android/cover/CoverState;->model:I

    iget-boolean v8, v9, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZIZ)V

    .local v0, "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_0

    .line 618
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_2
    const/high16 v1, 0x1020000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 619
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v9, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v9, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v9, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v9, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v9, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v9, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v7, v9, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZI)V

    .restart local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_0

    .line 623
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_3
    const/high16 v1, 0x1010000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 624
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v9, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v9, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v9, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v9, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v9, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v9, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZ)V

    .restart local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_0

    .line 628
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_4
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v9, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v9, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v9, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v9, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v9, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    .restart local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto/16 :goto_0

    .line 634
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_5
    const-string v1, "ScoverManager"

    const-string v2, "getCoverState : coverState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v9    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v14    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_6
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 637
    :catch_0
    move-exception v10

    .line 638
    .local v10, "e":Landroid/os/RemoteException;
    const-string v1, "ScoverManager"

    const-string v2, "RemoteException in getCoverState: "

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getServiceVersionName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 284
    sget v3, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v0, v3, 0xff

    .line 285
    .local v0, "majorVersion":I
    sget v3, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v1, v3, 0xff

    .line 286
    .local v1, "minorVersion":I
    sget v3, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    const v4, 0xffff

    and-int v2, v3, v4

    .line 288
    .local v2, "revisions":I
    const-string v3, "%d.%d.%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method isSmartCover()Z
    .locals 4

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "isSmartCover":Z
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 222
    .local v0, "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v0, :cond_0

    .line 223
    iget v2, v0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    .line 224
    const/4 v1, 0x1

    .line 227
    :cond_0
    return v1
.end method

.method isSupportCover()Z
    .locals 1

    .prologue
    .line 210
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSupportNfcLedCover()Z
    .locals 1

    .prologue
    .line 247
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportSViewCover()Z
    .locals 1

    .prologue
    .line 237
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportTypeOfCover(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 258
    packed-switch p1, :pswitch_data_0

    .line 265
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 260
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    goto :goto_0

    .line 263
    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerLedSystemListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V
    .locals 10
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 1127
    const/high16 v3, 0x1030000

    .line 1128
    .local v3, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1129
    const-string v7, "ScoverManager"

    const-string v8, "registerLedSystemListener : This device does not support cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    const-string v7, "ScoverManager"

    const-string v8, "registerLedSystemListener"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1135
    const-string v7, "ScoverManager"

    const-string v8, "registerLedSystemListener : This device does not support NFC Led cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1139
    :cond_2
    const/high16 v7, 0x1030000

    invoke-static {v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1140
    new-instance v7, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v8, "This device does not support this function. Device is must higher then v1.3.0"

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 1145
    :cond_3
    if-nez p1, :cond_4

    .line 1146
    const-string v7, "ScoverManager"

    const-string v8, "registerLedSystemListener : listener is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1151
    :cond_4
    invoke-static {}, Lcom/samsung/android/sdk/cover/ScoverManager;->supportNewLedSystemEventListener()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1152
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerLegacyLedSystemListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V

    goto :goto_0

    .line 1156
    :cond_5
    const/4 v5, 0x0

    .line 1158
    .local v5, "ledSystemEventListener":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1159
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;>;"
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1160
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;

    .line 1161
    .local v1, "delegate":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1162
    move-object v5, v1

    .line 1167
    .end local v1    # "delegate":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    :cond_7
    if-nez v5, :cond_8

    .line 1168
    new-instance v5, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;

    .end local v5    # "ledSystemEventListener":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, p1, v7, v8}, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 1169
    .restart local v5    # "ledSystemEventListener":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    :cond_8
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 1174
    .local v6, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_0

    .line 1175
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 1178
    const/4 v7, 0x4

    invoke-interface {v6, v7, v5, v0}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1181
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v6    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 1182
    .local v2, "e":Landroid/os/RemoteException;
    const-string v7, "ScoverManager"

    const-string v8, "RemoteException in registerLedSystemListener: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    .locals 10
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 415
    const/high16 v4, 0x1010000

    .line 416
    .local v4, "functionVersion":I
    const-string v7, "ScoverManager"

    const-string v8, "registerListener"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v7

    if-nez v7, :cond_1

    .line 418
    const-string v7, "ScoverManager"

    const-string v8, "registerListener : This device is not supported cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 423
    const-string v7, "ScoverManager"

    const-string v8, "registerListener : If cover is smart cover, it does not need to register listener of intenal App"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    :cond_2
    const/high16 v7, 0x1010000

    invoke-static {v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 428
    new-instance v7, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v8, "This device is not supported this function. Device is must higher then v1.1.0"

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 433
    :cond_3
    if-nez p1, :cond_4

    .line 434
    const-string v7, "ScoverManager"

    const-string v8, "registerListener : listener is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    :cond_4
    const/4 v1, 0x0

    .line 440
    .local v1, "coverListener":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 441
    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;>;"
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 442
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;

    .line 443
    .local v2, "delegate":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 444
    move-object v1, v2

    .line 449
    .end local v2    # "delegate":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    :cond_6
    if-nez v1, :cond_7

    .line 450
    new-instance v1, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v7, v8}, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 451
    .restart local v1    # "coverListener":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_7
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 456
    .local v6, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_0

    .line 457
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 460
    const/4 v7, 0x2

    invoke-interface {v6, v1, v0, v7}, Lcom/samsung/android/cover/ICoverManager;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v6    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v3

    .line 465
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "ScoverManager"

    const-string v8, "RemoteException in registerListener: "

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    const-string v0, "ScoverManager"

    const-string v1, "registerListener : Use deprecated API!! Change ScoverStateListener to StateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .prologue
    .line 361
    const-string v6, "ScoverManager"

    const-string v7, "registerListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    .line 363
    const-string v6, "ScoverManager"

    const-string v7, "registerListener : This device is not supported cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 368
    const-string v6, "ScoverManager"

    const-string v7, "registerListener : If cover is smart cover, it does not need to register listener of intenal App"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    :cond_2
    if-nez p1, :cond_3

    .line 373
    const-string v6, "ScoverManager"

    const-string v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :cond_3
    const/4 v1, 0x0

    .line 379
    .local v1, "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 380
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/CoverListenerDelegate;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 381
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;

    .line 382
    .local v2, "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 383
    move-object v1, v2

    .line 388
    .end local v2    # "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    :cond_5
    if-nez v1, :cond_6

    .line 389
    new-instance v1, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v6, v7}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 390
    .restart local v1    # "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 395
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 396
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 399
    invoke-interface {v5, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v3

    .line 403
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "ScoverManager"

    const-string v7, "RemoteException in registerListener: "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerNfcTouchListener(ILcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 789
    const/high16 v3, 0x1030000

    .line 790
    .local v3, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v7

    if-nez v7, :cond_1

    .line 791
    const-string v7, "ScoverManager"

    const-string v8, "registerNfcTouchListener : This device does not support cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    const-string v7, "ScoverManager"

    const-string v8, "registerNfcTouchListener"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v7

    if-nez v7, :cond_2

    .line 797
    const-string v7, "ScoverManager"

    const-string v8, "registerNfcTouchListener : This device does not support NFC Led cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 801
    :cond_2
    const/high16 v7, 0x1030000

    invoke-static {v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 802
    new-instance v7, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v8, "This device does not support this function. Device is must higher then v1.3.0"

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 807
    :cond_3
    if-nez p2, :cond_4

    .line 808
    const-string v7, "ScoverManager"

    const-string v8, "registerNfcTouchListener : listener is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 812
    :cond_4
    const/4 v5, 0x0

    .line 814
    .local v5, "nfcTouchListener":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 815
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;>;"
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 816
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;

    .line 817
    .local v1, "delegate":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 818
    move-object v5, v1

    .line 823
    .end local v1    # "delegate":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    :cond_6
    if-nez v5, :cond_7

    .line 824
    new-instance v5, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;

    .end local v5    # "nfcTouchListener":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, p2, v7, v8}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 825
    .restart local v5    # "nfcTouchListener":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    :cond_7
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 830
    .local v6, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_0

    .line 831
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 834
    invoke-interface {v6, p1, v5, v0}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 837
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v6    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 838
    .local v2, "e":Landroid/os/RemoteException;
    const-string v7, "ScoverManager"

    const-string v8, "RemoteException in registerNfcTouchListener: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 985
    const/high16 v1, 0x1040000

    .line 986
    .local v1, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v3

    if-nez v3, :cond_1

    .line 987
    const-string v3, "ScoverManager"

    const-string v4, "removeLedNotification : This device does not support cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v3

    if-nez v3, :cond_2

    .line 992
    const-string v3, "ScoverManager"

    const-string v4, "removeLedNotification : This device does not support NFC Led cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 996
    :cond_2
    const/high16 v3, 0x1040000

    invoke-static {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 997
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v4, "This device does not support this function. Device is must higher then v1.4.0"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 1002
    :cond_3
    if-nez p1, :cond_4

    .line 1003
    const-string v3, "ScoverManager"

    const-string v4, "removeLedNotification : Null notification data!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1007
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 1009
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_0

    .line 1010
    :try_start_0
    invoke-interface {v2, p1}, Lcom/samsung/android/cover/ICoverManager;->removeLedNotification(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ScoverManager"

    const-string v4, "removeLedNotification in sendData to NFC : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendDataToCover(I[B)V
    .locals 6
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 689
    const/high16 v1, 0x1020000

    .line 690
    .local v1, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v3

    if-nez v3, :cond_1

    .line 691
    const-string v3, "ScoverManager"

    const-string v4, "sendDataToCover : This device is not supported cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 696
    const-string v3, "ScoverManager"

    const-string v4, "sendDataToCover : If cover is smart cover, it does not need to send the data to cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 700
    :cond_2
    const/high16 v3, 0x1020000

    invoke-static {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 701
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v4, "This device is not supported this function. Device is must higher then v1.2.0"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 705
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 707
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_0

    .line 708
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToCover(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ScoverManager"

    const-string v4, "RemoteException in sendData : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendDataToNfcLedCover(I[B)V
    .locals 6
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 912
    const/high16 v1, 0x1030000

    .line 913
    .local v1, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v3

    if-nez v3, :cond_1

    .line 914
    const-string v3, "ScoverManager"

    const-string v4, "sendDataToNfcLedCover : This device does not support cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v3

    if-nez v3, :cond_2

    .line 919
    const-string v3, "ScoverManager"

    const-string v4, "sendDataToNfcLedCover : This device does not support NFC Led cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 923
    :cond_2
    const/high16 v3, 0x1030000

    invoke-static {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 924
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v4, "This device does not support this function. Device is must higher then v1.3.0"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 929
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 931
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_0

    .line 932
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToNfcLedCover(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ScoverManager"

    const-string v4, "RemoteException in sendData to NFC : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 1026
    const/high16 v1, 0x1060000

    .line 1027
    .local v1, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1028
    const-string v3, "ScoverManager"

    const-string v4, "sendSystemEvent : This device does not support cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1033
    const-string v3, "ScoverManager"

    const-string v4, "sendSystemEvent : This device does not support NFC Led cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1037
    :cond_2
    const/high16 v3, 0x1060000

    invoke-static {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1038
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v4, "This device does not support this function. Device is must higher then v1.6.0"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 1043
    :cond_3
    if-nez p1, :cond_4

    .line 1044
    const-string v3, "ScoverManager"

    const-string v4, "sendSystemEvent : Null system event data!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1048
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 1050
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_0

    .line 1051
    :try_start_0
    invoke-interface {v2, p1}, Lcom/samsung/android/cover/ICoverManager;->sendSystemEvent(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ScoverManager"

    const-string v4, "sendSystemEvent in sendData to NFC : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCoverModeToWindow(Landroid/view/Window;I)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "coverMode"    # I

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportSViewCover()Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    const-string v1, "ScoverManager"

    const-string v2, "setSViewCoverModeToWindow : This device is not supported s view cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 336
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 337
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 338
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public unregisterLedSystemEventListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 1196
    const-string v6, "ScoverManager"

    const-string v7, "unregisterLedSystemEventListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const/high16 v2, 0x1030000

    .line 1198
    .local v2, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1199
    const-string v6, "ScoverManager"

    const-string v7, "unregisterLedSystemEventListener : This device does not support cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1204
    const-string v6, "ScoverManager"

    const-string v7, "unregisterLedSystemEventListener : This device does not support NFC Led cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1208
    :cond_2
    const/high16 v6, 0x1030000

    invoke-static {v6}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1209
    new-instance v6, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v7, "This device does not support this function. Device is must higher then v1.3.0"

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1214
    :cond_3
    if-nez p1, :cond_4

    .line 1215
    const-string v6, "ScoverManager"

    const-string v7, "unregisterLedSystemEventListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1220
    :cond_4
    invoke-static {}, Lcom/samsung/android/sdk/cover/ScoverManager;->supportNewLedSystemEventListener()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1221
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterLegacyLedSystemEventListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V

    goto :goto_0

    .line 1225
    :cond_5
    const/4 v4, 0x0

    .line 1227
    .local v4, "ledSystemEventListener":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1228
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1229
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;

    .line 1230
    .local v0, "delegate":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1231
    move-object v4, v0

    .line 1236
    .end local v0    # "delegate":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    :cond_7
    if-eqz v4, :cond_0

    .line 1241
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 1242
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 1243
    invoke-interface {v5, v4}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1244
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1247
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v1

    .line 1248
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "ScoverManager"

    const-string v7, "RemoteException in unregisterLedSystemEventListener: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 539
    const/high16 v3, 0x1010000

    .line 540
    .local v3, "functionVersion":I
    const-string v6, "ScoverManager"

    const-string v7, "unregisterListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    .line 542
    const-string v6, "ScoverManager"

    const-string v7, "unregisterListener : This device is not supported cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 547
    const-string v6, "ScoverManager"

    const-string v7, "unregisterListener : If cover is smart cover, it does not need to unregister listener of intenal App"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 551
    :cond_2
    const/high16 v6, 0x1010000

    invoke-static {v6}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 552
    new-instance v6, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v7, "This device is not supported this function. Device is must higher then v1.1.0"

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 557
    :cond_3
    if-nez p1, :cond_4

    .line 558
    const-string v6, "ScoverManager"

    const-string v7, "unregisterListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    :cond_4
    const/4 v0, 0x0

    .line 564
    .local v0, "coverListener":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 565
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;>;"
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 566
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;

    .line 567
    .local v1, "delegate":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 568
    move-object v0, v1

    .line 573
    .end local v1    # "delegate":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    :cond_6
    if-eqz v0, :cond_0

    .line 578
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 579
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 580
    invoke-interface {v5, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 581
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 585
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "ScoverManager"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    const-string v0, "ScoverManager"

    const-string v1, "unregisterListener : Use deprecated API!! Change ScoverStateListener to StateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .prologue
    .line 488
    const-string v5, "ScoverManager"

    const-string v6, "unregisterListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v5

    if-nez v5, :cond_1

    .line 490
    const-string v5, "ScoverManager"

    const-string v6, "unregisterListener : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 495
    const-string v5, "ScoverManager"

    const-string v6, "unregisterListener : If cover is smart cover, it does not need to unregister listener of intenal App"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 499
    :cond_2
    if-nez p1, :cond_3

    .line 500
    const-string v5, "ScoverManager"

    const-string v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_3
    const/4 v0, 0x0

    .line 506
    .local v0, "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 507
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/CoverListenerDelegate;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 508
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;

    .line 509
    .local v1, "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 510
    move-object v0, v1

    .line 515
    .end local v1    # "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    :cond_5
    if-eqz v0, :cond_0

    .line 520
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 521
    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_0

    .line 522
    invoke-interface {v4, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 523
    iget-object v5, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 527
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "ScoverManager"

    const-string v6, "RemoteException in unregisterListener: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterNfcTouchListener(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 852
    const-string v6, "ScoverManager"

    const-string v7, "unregisterNfcTouchListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/high16 v2, 0x1030000

    .line 854
    .local v2, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    .line 855
    const-string v6, "ScoverManager"

    const-string v7, "unregisterNfcTouchListener : This device does not support cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v6

    if-nez v6, :cond_2

    .line 860
    const-string v6, "ScoverManager"

    const-string v7, "unregisterNfcTouchListener : This device does not support NFC Led cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 864
    :cond_2
    const/high16 v6, 0x1030000

    invoke-static {v6}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 865
    new-instance v6, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v7, "This device does not support this function. Device is must higher then v1.3.0"

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 870
    :cond_3
    if-nez p1, :cond_4

    .line 871
    const-string v6, "ScoverManager"

    const-string v7, "unregisterNfcTouchListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 875
    :cond_4
    const/4 v4, 0x0

    .line 877
    .local v4, "nfcTouchListener":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 878
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 879
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;

    .line 880
    .local v0, "delegate":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 881
    move-object v4, v0

    .line 886
    .end local v0    # "delegate":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    :cond_6
    if-eqz v4, :cond_0

    .line 891
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 892
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 893
    invoke-interface {v5, v4}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 894
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 897
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v1

    .line 898
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "ScoverManager"

    const-string v7, "RemoteException in unregisterNfcTouchListener: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
