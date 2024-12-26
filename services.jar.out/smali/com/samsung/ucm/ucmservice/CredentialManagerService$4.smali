.class Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;->registerPersonaObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .locals 0
    .param p1, "personaId"    # I

    .prologue
    .line 551
    return-void
.end method

.method public onPersonaActive(I)V
    .locals 0
    .param p1, "personaId"    # I

    .prologue
    .line 539
    return-void
.end method

.method public onRemovePersona(I)V
    .locals 0
    .param p1, "personaId"    # I

    .prologue
    .line 543
    return-void
.end method

.method public onResetPersona(I)V
    .locals 0
    .param p1, "personaId"    # I

    .prologue
    .line 547
    return-void
.end method

.method public onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "oldState"    # Landroid/content/pm/PersonaState;
    .param p3, "newState"    # Landroid/content/pm/PersonaState;

    .prologue
    .line 555
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " inside onstatechange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :try_start_0
    sget-object v1, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    invoke-virtual {p3, v1}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateMDMPolicies(I)V
    invoke-static {v1, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
