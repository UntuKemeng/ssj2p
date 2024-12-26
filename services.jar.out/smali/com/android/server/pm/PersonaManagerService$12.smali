.class Lcom/android/server/pm/PersonaManagerService$12;
.super Landroid/database/ContentObserver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 15512
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$12;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 15515
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onChange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15516
    const-string/jumbo v2, "hide_secure_folder_flag"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    .line 15517
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$12;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hide_secure_folder_flag"

    invoke-static {v2, v3, v5, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 15519
    .local v0, "hideSecureFolderFlag":I
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$12;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I
    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$9800(Lcom/android/server/pm/PersonaManagerService;)I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 15520
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$12;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->showSecureFolder(I)V
    invoke-static {v2, v0}, Lcom/android/server/pm/PersonaManagerService;->access$9900(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 15529
    .end local v0    # "hideSecureFolderFlag":I
    :cond_0
    :goto_0
    return-void

    .line 15522
    :cond_1
    const-string/jumbo v2, "secure_folder_name"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    .line 15523
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$12;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "secure_folder_name"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 15525
    .local v1, "sfTitle":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$12;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I
    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$9800(Lcom/android/server/pm/PersonaManagerService;)I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 15526
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$12;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeSfTitle(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/server/pm/PersonaManagerService;->access$10000(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    goto :goto_0
.end method
