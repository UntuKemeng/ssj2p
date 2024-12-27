.class public final Lcom/samsung/android/displaysolution/DisplaySolutionManager;
.super Ljava/lang/Object;
.source "DisplaySolutionManager.java"


# static fields
.field private static RETURN_ERROR:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "DisplaySolutionManager"


# instance fields
.field final mService:Lcom/samsung/android/displaysolution/IDisplaySolutionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->RETURN_ERROR:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/displaysolution/IDisplaySolutionManager;)V
    .locals 2
    .param p1, "service"    # Lcom/samsung/android/displaysolution/IDisplaySolutionManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "DisplaySolutionManager"

    const-string v1, "In Constructor Stub-Service(IDisplaySolutionManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/IDisplaySolutionManager;

    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const-string v0, "DisplaySolutionManager"

    const-string v1, "Error DisplaySolutionManager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public getGalleryModeEnable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/IDisplaySolutionManager;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/IDisplaySolutionManager;

    invoke-interface {v2}, Lcom/samsung/android/displaysolution/IDisplaySolutionManager;->getGalleryModeEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getMdnieScenarioControlServiceEnable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/IDisplaySolutionManager;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/IDisplaySolutionManager;

    invoke-interface {v2}, Lcom/samsung/android/displaysolution/IDisplaySolutionManager;->getMdnieScenarioControlServiceEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getVideoModeEnable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/IDisplaySolutionManager;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/IDisplaySolutionManager;

    invoke-interface {v2}, Lcom/samsung/android/displaysolution/IDisplaySolutionManager;->getVideoModeEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setGalleryModeEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/IDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/IDisplaySolutionManager;->setGalleryModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMdnieScenarioControlServiceEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/IDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/IDisplaySolutionManager;->setMdnieScenarioControlServiceEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMultipleScreenBrightness(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/IDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/IDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMultipleScreenBrightnessForPreview(I)V
    .locals 2
    .param p1, "settingValue"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/IDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/IDisplaySolutionManager;->setMultipleScreenBrightnessForPreview(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setVideoModeEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/IDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/IDisplaySolutionManager;->setVideoModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
