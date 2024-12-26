.class public final Lcom/samsung/android/allaroundsensing/AASManager;
.super Ljava/lang/Object;
.source "AASManager.java"


# static fields
.field private static RETURN_ERROR:F = 0.0f

.field private static RETURN_ERROR_INT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AASManager"


# instance fields
.field final mService:Lcom/samsung/android/allaroundsensing/IAASManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/allaroundsensing/AASManager;->RETURN_ERROR:F

    .line 26
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/allaroundsensing/AASManager;->RETURN_ERROR_INT:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/allaroundsensing/IAASManager;)V
    .locals 2
    .param p1, "service"    # Lcom/samsung/android/allaroundsensing/IAASManager;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    const-string v0, "AASManager"

    const-string v1, "In Constructor Stub-Service(IAASManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    .line 34
    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 120
    const-string v0, "AASManager"

    const-string v1, "Error AASManager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    return-void
.end method


# virtual methods
.method public getBrightnessValue()F
    .locals 2

    .prologue
    .line 38
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    if-nez v1, :cond_0

    .line 39
    sget v1, Lcom/samsung/android/allaroundsensing/AASManager;->RETURN_ERROR:F

    .line 45
    :goto_0
    return v1

    .line 43
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    invoke-interface {v1}, Lcom/samsung/android/allaroundsensing/IAASManager;->getBrightnessValue()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/allaroundsensing/AASManager;->RETURN_ERROR:F

    goto :goto_0
.end method

.method public getBrightnessValueEnable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    if-nez v2, :cond_0

    .line 75
    :goto_0
    return v1

    .line 73
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    invoke-interface {v2}, Lcom/samsung/android/allaroundsensing/IAASManager;->getBrightnessValueEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getPlatformBrightnessValue()I
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    if-nez v1, :cond_0

    .line 56
    sget v1, Lcom/samsung/android/allaroundsensing/AASManager;->RETURN_ERROR_INT:I

    .line 62
    :goto_0
    return v1

    .line 60
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    invoke-interface {v1}, Lcom/samsung/android/allaroundsensing/IAASManager;->getPlatformBrightnessValue()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/allaroundsensing/AASManager;->RETURN_ERROR_INT:I

    goto :goto_0
.end method

.method public setBrightnessValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/allaroundsensing/IAASManager;->setBrightnessValue(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/AASManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setBrightnessValue(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 104
    return-void
.end method

.method public setBrightnessValueEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/allaroundsensing/IAASManager;->setBrightnessValueEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/AASManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setPlatformBrightnessValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/allaroundsensing/IAASManager;->setPlatformBrightnessValue(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/AASManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
