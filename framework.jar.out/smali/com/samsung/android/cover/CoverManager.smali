.class public Lcom/samsung/android/cover/CoverManager;
.super Ljava/lang/Object;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;,
        Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;,
        Lcom/samsung/android/cover/CoverManager$CoverStateListener;,
        Lcom/samsung/android/cover/CoverManager$StateListener;
    }
.end annotation


# static fields
.field public static final COVER_MODE_HIDE_SVIEW_ONCE:I = 0x2

.field public static final COVER_MODE_NONE:I = 0x0

.field public static final COVER_MODE_SVIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CoverManager"

.field private static sIsFilpCoverSystemFeatureEnabled:Z

.field private static sIsNfcLedCoverSystemFeatureEnabled:Z

.field private static sIsSViewCoverSystemFeatureEnabled:Z

.field private static sIsSystemFeatureQueried:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cover/CoverStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cover/CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cover/LedSystemEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cover/CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/cover/ICoverManager;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSystemFeatureQueried:Z

    .line 125
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 131
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 137
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 139
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mToken:Landroid/os/IBinder;

    .line 147
    iput-object p1, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->initSystemFeature()V

    .line 149
    return-void
.end method

.method private declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 223
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    .line 224
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 225
    const-string v0, "CoverManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSystemFeature()V
    .locals 2

    .prologue
    .line 155
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 158
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 160
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 162
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSystemFeatureQueried:Z

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 684
    const-string v2, "CoverManager"

    const-string v3, "addLedNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v2

    if-nez v2, :cond_1

    .line 686
    const-string v2, "CoverManager"

    const-string v3, "addLedNotification : This device does not support NFC Led cover"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2

    .line 691
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "CoverManager only available from system UID."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 694
    :cond_2
    if-nez p1, :cond_3

    .line 695
    const-string v2, "CoverManager"

    const-string v3, "addLedNotification : Null notification data!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 699
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 701
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_0

    .line 702
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ICoverManager;->addLedNotification(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "addLedNotification in sendData to NFC : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableCoverManager(Z)V
    .locals 4
    .param p1, "disable"    # Z

    .prologue
    .line 534
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 535
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_0

    .line 536
    iget-object v2, p0, Lcom/samsung/android/cover/CoverManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/samsung/android/cover/ICoverManager;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .end local v1    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_0
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in disalbeCoverManager : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableLcdOffByCover(Lcom/samsung/android/cover/CoverManager$StateListener;)Z
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .prologue
    const/4 v6, 0x0

    .line 940
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v7

    if-nez v7, :cond_1

    .line 941
    const-string v7, "CoverManager"

    const-string v8, "disableLcdOffByCover : This device does not support cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_0
    :goto_0
    return v6

    .line 945
    :cond_1
    if-nez p1, :cond_2

    .line 946
    const-string v7, "CoverManager"

    const-string v8, "disableLcdOffByCover : listener cannot be null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 949
    :cond_2
    const-string v7, "CoverManager"

    const-string v8, "disableLcdOffByCover"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v1, 0x0

    .line 954
    .local v1, "coverListener":Lcom/samsung/android/cover/CoverListenerDelegate;
    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 955
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverListenerDelegate;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 956
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cover/CoverListenerDelegate;

    .line 957
    .local v2, "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 958
    move-object v1, v2

    .line 963
    .end local v2    # "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    :cond_4
    if-nez v1, :cond_5

    .line 964
    new-instance v1, Lcom/samsung/android/cover/CoverListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverListenerDelegate;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v7, v8}, Lcom/samsung/android/cover/CoverListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager$StateListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 968
    .restart local v1    # "coverListener":Lcom/samsung/android/cover/CoverListenerDelegate;
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 969
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 970
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .local v0, "cm":Landroid/content/ComponentName;
    invoke-interface {v5, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 973
    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    const/4 v6, 0x1

    goto :goto_0

    .line 977
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v3

    .line 978
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "CoverManager"

    const-string v8, "RemoteException in unregisterNfcTouchListener: "

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableLcdOffByCover(Lcom/samsung/android/cover/CoverManager$StateListener;)Z
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .prologue
    const/4 v6, 0x0

    .line 994
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v7

    if-nez v7, :cond_1

    .line 995
    const-string v7, "CoverManager"

    const-string v8, "enableLcdOffByCover : This device does not support cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_0
    :goto_0
    return v6

    .line 999
    :cond_1
    if-nez p1, :cond_2

    .line 1000
    const-string v7, "CoverManager"

    const-string v8, "enableLcdOffByCover : listener cannot be null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1004
    :cond_2
    const-string v7, "CoverManager"

    const-string v8, "enableLcdOffByCover"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v1, 0x0

    .line 1009
    .local v1, "coverListener":Lcom/samsung/android/cover/CoverListenerDelegate;
    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1010
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverListenerDelegate;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1011
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cover/CoverListenerDelegate;

    .line 1012
    .local v2, "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1013
    move-object v1, v2

    .line 1018
    .end local v2    # "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    :cond_4
    if-nez v1, :cond_5

    .line 1019
    const-string v7, "CoverManager"

    const-string v8, "enableLcdOffByCover: Matching listener not found, cannot enable"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1024
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 1025
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 1026
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    .local v0, "cm":Landroid/content/ComponentName;
    invoke-interface {v5, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1029
    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    const/4 v6, 0x1

    goto :goto_0

    .line 1033
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v3

    .line 1034
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "CoverManager"

    const-string v8, "RemoteException in unregisterNfcTouchListener: "

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v4

    if-nez v4, :cond_1

    .line 467
    const-string v4, "CoverManager"

    const-string v5, "getCoverState : This device is not supported cover"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 486
    :cond_0
    :goto_0
    return-object v0

    .line 470
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_2

    .line 471
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "CoverManager only available from system UID."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 474
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 475
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_3

    .line 476
    invoke-interface {v2}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 477
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-nez v0, :cond_0

    .line 480
    const-string v4, "CoverManager"

    const-string v5, "getCoverState : coverState is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_3
    :goto_1
    move-object v0, v3

    .line 486
    goto :goto_0

    .line 483
    :catch_0
    move-exception v1

    .line 484
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "CoverManager"

    const-string v5, "RemoteException in getCoverState: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isCoverManagerDisabled()Z
    .locals 5

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 522
    .local v0, "disabled":Z
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 523
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_0

    .line 524
    invoke-interface {v2}, Lcom/samsung/android/cover/ICoverManager;->isCoverManagerDisabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 529
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_0
    :goto_0
    return v0

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CoverManager"

    const-string v4, "RemoteException in isCoverManagerDisabled : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method isSupportCover()Z
    .locals 1

    .prologue
    .line 173
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

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
    .line 183
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportSViewCover()Z
    .locals 1

    .prologue
    .line 193
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportTypeOfCover(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 204
    packed-switch p1, :pswitch_data_0

    .line 212
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 206
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    goto :goto_0

    .line 210
    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerLedSystemListener(Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    .line 804
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerLedSystemListener : This device does not support cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerLedSystemListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v6

    if-nez v6, :cond_2

    .line 810
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerLedSystemListener : This device does not support NFC Led cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 814
    :cond_2
    if-nez p1, :cond_3

    .line 815
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerLedSystemListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    :cond_3
    const/4 v4, 0x0

    .line 821
    .local v4, "ledSystemEventListener":Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 822
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/LedSystemEventListenerDelegate;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 823
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;

    .line 824
    .local v1, "delegate":Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 825
    move-object v4, v1

    .line 830
    .end local v1    # "delegate":Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
    :cond_5
    if-nez v4, :cond_6

    .line 831
    new-instance v4, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;

    .end local v4    # "ledSystemEventListener":Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, p1, v6, v7}, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 832
    .restart local v4    # "ledSystemEventListener":Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 837
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 838
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 841
    const/4 v6, 0x4

    invoke-interface {v5, v6, v4, v0}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 844
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 845
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "CoverManager"

    const-string v7, "RemoteException in registerLedSystemListener: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .prologue
    .line 315
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    .line 317
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerListener : This device is not supported cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_2

    .line 322
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "CoverManager only available from system UID."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 325
    :cond_2
    if-nez p1, :cond_3

    .line 326
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :cond_3
    const/4 v1, 0x0

    .line 332
    .local v1, "coverListener":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 333
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverStateListenerDelegate;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 334
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cover/CoverStateListenerDelegate;

    .line 335
    .local v2, "delegate":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverStateListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 336
    move-object v1, v2

    .line 341
    .end local v2    # "delegate":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    :cond_5
    if-nez v1, :cond_6

    .line 342
    new-instance v1, Lcom/samsung/android/cover/CoverStateListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v6, v7}, Lcom/samsung/android/cover/CoverStateListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager$CoverStateListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 343
    .restart local v1    # "coverListener":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 348
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 349
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 352
    const/4 v6, 0x2

    invoke-interface {v5, v1, v0, v6}, Lcom/samsung/android/cover/ICoverManager;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v3

    .line 357
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "CoverManager"

    const-string v7, "RemoteException in registerListener: "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .prologue
    .line 263
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    .line 265
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerListener : This device is not supported cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_2

    .line 270
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "CoverManager only available from system UID."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 273
    :cond_2
    if-nez p1, :cond_3

    .line 274
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_3
    const/4 v1, 0x0

    .line 280
    .local v1, "coverListener":Lcom/samsung/android/cover/CoverListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 281
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverListenerDelegate;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 282
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cover/CoverListenerDelegate;

    .line 283
    .local v2, "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 284
    move-object v1, v2

    .line 289
    .end local v2    # "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    :cond_5
    if-nez v1, :cond_6

    .line 290
    new-instance v1, Lcom/samsung/android/cover/CoverListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverListenerDelegate;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v6, v7}, Lcom/samsung/android/cover/CoverListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager$StateListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 291
    .restart local v1    # "coverListener":Lcom/samsung/android/cover/CoverListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 296
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 297
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v5, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v3

    .line 304
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "CoverManager"

    const-string v7, "RemoteException in registerListener: "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerNfcTouchListener(ILcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    .prologue
    .line 595
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerNfcTouchListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v6

    if-nez v6, :cond_1

    .line 597
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerNfcTouchListener : This device does not support NFC Led cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_2

    .line 602
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "CoverManager only available from system UID."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 605
    :cond_2
    if-nez p2, :cond_3

    .line 606
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerNfcTouchListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    :cond_3
    const/4 v4, 0x0

    .line 612
    .local v4, "nfcTouchListener":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 613
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 614
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;

    .line 615
    .local v1, "delegate":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 616
    move-object v4, v1

    .line 621
    .end local v1    # "delegate":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    :cond_5
    if-nez v4, :cond_6

    .line 622
    new-instance v4, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;

    .end local v4    # "nfcTouchListener":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, p2, v6, v7}, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 623
    .restart local v4    # "nfcTouchListener":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 628
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 629
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 632
    invoke-interface {v5, p1, v4, v0}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 635
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 636
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "CoverManager"

    const-string v7, "RemoteException in registerNfcTouchListener: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 709
    const-string v2, "CoverManager"

    const-string/jumbo v3, "removeLedNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v2

    if-nez v2, :cond_1

    .line 711
    const-string v2, "CoverManager"

    const-string/jumbo v3, "removeLedNotification : This device does not support NFC Led cover"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2

    .line 716
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "CoverManager only available from system UID."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 719
    :cond_2
    if-nez p1, :cond_3

    .line 720
    const-string v2, "CoverManager"

    const-string/jumbo v3, "removeLedNotification : Null notification data!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 724
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 726
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_0

    .line 727
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ICoverManager;->removeLedNotification(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string/jumbo v3, "removeLedNotification in sendData to NFC : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendDataToCover(I[B)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 492
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_0

    .line 493
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToCover(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in sendData : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendDataToNfcLedCover(I[B)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 502
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_0

    .line 503
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToNfcLedCover(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in sendData to NFC : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendPowerKeyToCover()V
    .locals 4

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 512
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_0

    .line 513
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/cover/ICoverManager;->sendPowerKeyToCover()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in sendPowerKeyToCover() : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v2

    if-nez v2, :cond_1

    .line 744
    const-string v2, "CoverManager"

    const-string/jumbo v3, "sendSystemEvent : This device does not support cover"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v2

    if-nez v2, :cond_2

    .line 749
    const-string v2, "CoverManager"

    const-string/jumbo v3, "sendSystemEvent : This device does not support NFC Led cover"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 753
    :cond_2
    if-nez p1, :cond_3

    .line 754
    const-string v2, "CoverManager"

    const-string/jumbo v3, "sendSystemEvent : Null system event data!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 758
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 760
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_0

    .line 761
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ICoverManager;->sendSystemEvent(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string/jumbo v3, "sendSystemEvent in sendData to NFC : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCoverModeToWindow(Landroid/view/Window;I)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "coverMode"    # I

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportSViewCover()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    const-string v1, "CoverManager"

    const-string/jumbo v2, "setSViewCoverModeToWindow : This device is not supported s view cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    .line 247
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "CoverManager only available from system UID."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_2
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 250
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 251
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public unregisterLedSystemEventListener(Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    .prologue
    .line 858
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterLedSystemEventListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v5

    if-nez v5, :cond_1

    .line 860
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterLedSystemEventListener : This device does not support cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v5

    if-nez v5, :cond_2

    .line 865
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterLedSystemEventListener : This device does not support NFC Led cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 869
    :cond_2
    if-nez p1, :cond_3

    .line 870
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterLedSystemEventListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 874
    :cond_3
    const/4 v3, 0x0

    .line 876
    .local v3, "ledSystemEventListener":Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 877
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/LedSystemEventListenerDelegate;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 878
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;

    .line 879
    .local v0, "delegate":Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 880
    move-object v3, v0

    .line 885
    .end local v0    # "delegate":Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
    :cond_5
    if-eqz v3, :cond_0

    .line 890
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 891
    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_0

    .line 892
    invoke-interface {v4, v3}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 893
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 896
    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v1

    .line 897
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "CoverManager"

    const-string v6, "RemoteException in unregisterLedSystemEventListener: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .prologue
    .line 417
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v5

    if-nez v5, :cond_1

    .line 419
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_2

    .line 424
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "CoverManager only available from system UID."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 427
    :cond_2
    if-nez p1, :cond_3

    .line 428
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_3
    const/4 v0, 0x0

    .line 434
    .local v0, "coverListener":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 435
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverStateListenerDelegate;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 436
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cover/CoverStateListenerDelegate;

    .line 437
    .local v1, "delegate":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverStateListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 438
    move-object v0, v1

    .line 443
    .end local v1    # "delegate":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    :cond_5
    if-eqz v0, :cond_0

    .line 448
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 449
    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_0

    .line 450
    invoke-interface {v4, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 451
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 455
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "CoverManager"

    const-string v6, "RemoteException in unregisterListener: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .prologue
    .line 368
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v5

    if-nez v5, :cond_1

    .line 370
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_2

    .line 375
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "CoverManager only available from system UID."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 378
    :cond_2
    if-nez p1, :cond_3

    .line 379
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_3
    const/4 v0, 0x0

    .line 385
    .local v0, "coverListener":Lcom/samsung/android/cover/CoverListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 386
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverListenerDelegate;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 387
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cover/CoverListenerDelegate;

    .line 388
    .local v1, "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 389
    move-object v0, v1

    .line 394
    .end local v1    # "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    :cond_5
    if-eqz v0, :cond_0

    .line 399
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 400
    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_0

    .line 401
    invoke-interface {v4, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 402
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 406
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "CoverManager"

    const-string v6, "RemoteException in unregisterListener: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterNfcTouchListener(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    .prologue
    .line 641
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterNfcTouchListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v5

    if-nez v5, :cond_1

    .line 643
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterNfcTouchListener : This device does not support NFC Led cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_2

    .line 648
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "CoverManager only available from system UID."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 651
    :cond_2
    if-nez p1, :cond_3

    .line 652
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterNfcTouchListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 656
    :cond_3
    const/4 v3, 0x0

    .line 658
    .local v3, "nfcTouchListener":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 659
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 660
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;

    .line 661
    .local v0, "delegate":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 662
    move-object v3, v0

    .line 667
    .end local v0    # "delegate":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    :cond_5
    if-eqz v3, :cond_0

    .line 672
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 673
    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_0

    .line 674
    invoke-interface {v4, v3}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 675
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v1

    .line 679
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "CoverManager"

    const-string v6, "RemoteException in unregisterNfcTouchListener: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
