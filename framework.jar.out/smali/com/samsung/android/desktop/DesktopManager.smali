.class public final Lcom/samsung/android/desktop/DesktopManager;
.super Ljava/lang/Object;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;
    }
.end annotation


# static fields
.field public static final LAUNCHER_APPNAME:Ljava/lang/String; = "DesktopLauncher"

.field public static final LAUNCHER_CLSNAME:Ljava/lang/String; = "com.android.launcher2.Launcher"

.field public static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegisteredCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/desktop/IDesktopStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/desktop/IDesktop;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/desktop/DesktopManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/desktop/IDesktop;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/desktop/IDesktop;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    .line 26
    iput-object v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mRegisteredCallbacks:Ljava/util/HashMap;

    .line 51
    iput-object p2, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public isDeskDockConnected()Z
    .locals 3

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 124
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    invoke-interface {v2}, Lcom/samsung/android/desktop/IDesktop;->isDesktopDockConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isKnoxDesktopMode()Z
    .locals 3

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    invoke-interface {v2}, Lcom/samsung/android/desktop/IDesktop;->isKnoxDesktopMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 145
    :goto_0
    return v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    .prologue
    .line 61
    sget-object v2, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerListener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mRegisteredCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    sget-object v2, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    const-string v3, "Already exist callback"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_1
    new-instance v1, Lcom/samsung/android/desktop/DesktopManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/desktop/DesktopManager$1;-><init>(Lcom/samsung/android/desktop/DesktopManager;Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)V

    .line 91
    .local v1, "serviceCallback":Lcom/samsung/android/desktop/IDesktopStateCallback;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    invoke-interface {v2, v1}, Lcom/samsung/android/desktop/IDesktop;->registerStateCallback(Lcom/samsung/android/desktop/IDesktopStateCallback;)Z

    .line 92
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mRegisteredCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mRegisteredCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktop/IDesktopStateCallback;

    .line 106
    .local v1, "serviceCallback":Lcom/samsung/android/desktop/IDesktopStateCallback;
    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    invoke-interface {v2, v1}, Lcom/samsung/android/desktop/IDesktop;->registerStateCallback(Lcom/samsung/android/desktop/IDesktopStateCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1    # "serviceCallback":Lcom/samsung/android/desktop/IDesktopStateCallback;
    :cond_0
    :goto_0
    return-void

    .line 109
    .restart local v1    # "serviceCallback":Lcom/samsung/android/desktop/IDesktopStateCallback;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
