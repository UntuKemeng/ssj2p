.class public Landroid/os/PersonaManager$StateManager;
.super Ljava/lang/Object;
.source "PersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateManager"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IPersonaManager;

.field private userId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/IPersonaManager;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPersonaManager;
    .param p3, "userId"    # I

    .prologue
    .line 3326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3327
    iput-object p2, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    .line 3328
    iput-object p1, p0, Landroid/os/PersonaManager$StateManager;->mContext:Landroid/content/Context;

    .line 3329
    iput p3, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    .line 3330
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/IPersonaManager;ILandroid/os/PersonaManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/os/IPersonaManager;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/os/PersonaManager$1;

    .prologue
    .line 3321
    invoke-direct {p0, p1, p2, p3}, Landroid/os/PersonaManager$StateManager;-><init>(Landroid/content/Context;Landroid/os/IPersonaManager;I)V

    return-void
.end method


# virtual methods
.method public fireEvent(Landroid/content/pm/PersonaNewEvent;)Landroid/content/pm/PersonaState;
    .locals 3
    .param p1, "event"    # Landroid/content/pm/PersonaNewEvent;

    .prologue
    .line 3371
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.fireEvent()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3374
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3379
    :goto_0
    return-object v1

    .line 3375
    :catch_0
    move-exception v0

    .line 3376
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3379
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPreviousState()Landroid/content/pm/PersonaState;
    .locals 3

    .prologue
    .line 3346
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.getState()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3349
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getPreviousState(I)Landroid/content/pm/PersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3354
    :goto_0
    return-object v1

    .line 3350
    :catch_0
    move-exception v0

    .line 3351
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPreviousState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3354
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()Landroid/content/pm/PersonaState;
    .locals 3

    .prologue
    .line 3334
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3336
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getState(I)Landroid/content/pm/PersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3341
    :goto_0
    return-object v1

    .line 3337
    :catch_0
    move-exception v0

    .line 3338
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3341
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public inState(Landroid/content/pm/PersonaState;)Z
    .locals 3
    .param p1, "state"    # Landroid/content/pm/PersonaState;

    .prologue
    .line 3360
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3362
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->inState(Landroid/content/pm/PersonaState;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3367
    :goto_0
    return v1

    .line 3363
    :catch_0
    move-exception v0

    .line 3364
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3367
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAttribute(Landroid/content/pm/PersonaAttribute;)Z
    .locals 3
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;

    .prologue
    .line 3395
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.isAttribute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3398
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3403
    :goto_0
    return v1

    .line 3399
    :catch_0
    move-exception v0

    .line 3400
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3403
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAttribute(Landroid/content/pm/PersonaAttribute;Z)Z
    .locals 3
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;
    .param p2, "enabled"    # Z

    .prologue
    .line 3383
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.setAttribute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3386
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IPersonaManager;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3391
    :goto_0
    return v1

    .line 3387
    :catch_0
    move-exception v0

    .line 3388
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3391
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
