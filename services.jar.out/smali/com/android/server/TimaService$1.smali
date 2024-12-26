.class Lcom/android/server/TimaService$1;
.super Landroid/content/BroadcastReceiver;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TimaService;


# direct methods
.method constructor <init>(Lcom/android/server/TimaService;)V
    .locals 0

    .prologue
    .line 2230
    iput-object p1, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2234
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2237
    .local v0, "action":Ljava/lang/String;
    const-string v8, "TimaService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BroadcastReceiver - action:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    iget-object v8, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->isKapSupported()Z
    invoke-static {v8}, Lcom/android/server/TimaService;->access$200(Lcom/android/server/TimaService;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2240
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2242
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->isZeroModel()Z
    invoke-static {v8}, Lcom/android/server/TimaService;->access$300(Lcom/android/server/TimaService;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2243
    iget-object v8, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->notifyKapEnabled()V
    invoke-static {v8}, Lcom/android/server/TimaService;->access$400(Lcom/android/server/TimaService;)V

    .line 2246
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2247
    .local v2, "kapIntent":Landroid/content/Intent;
    const-string v8, "com.samsung.action.knox.kap.KAP_NOTIFICATION"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2248
    const-string v8, "com.samsung.klmsagent"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2249
    const-string v8, "KAP_LICENSE_STATUS_REQUEST"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2250
    iget-object v8, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # getter for: Lcom/android/server/TimaService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/TimaService;->access$100(Lcom/android/server/TimaService;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v10, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v8, v2, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2251
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2265
    .end local v2    # "kapIntent":Landroid/content/Intent;
    .end local v6    # "token":J
    :cond_1
    :goto_0
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2266
    const-string v8, "TimaService"

    const-string/jumbo v9, "received ACTION_BOOT_COMPLETED, start new thread"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    new-instance v8, Lcom/android/server/TimaService$1$1;

    invoke-direct {v8, p0}, Lcom/android/server/TimaService$1$1;-><init>(Lcom/android/server/TimaService$1;)V

    invoke-virtual {v8}, Lcom/android/server/TimaService$1$1;->start()V

    .line 2285
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 2252
    .restart local v0    # "action":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->isKapSupported()Z
    invoke-static {v8}, Lcom/android/server/TimaService;->access$200(Lcom/android/server/TimaService;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2253
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 2254
    .local v4, "msgData":Landroid/os/Bundle;
    if-nez v4, :cond_4

    .line 2256
    const-string v8, "TimaService"

    const-string/jumbo v9, "null msgData"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2282
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "msgData":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 2283
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2260
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v4    # "msgData":Landroid/os/Bundle;
    :cond_4
    :try_start_1
    const-string v8, "KAP_LICENSE_NOTIFICATION_TRIGGER"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2261
    .local v5, "notiTrigger":I
    const-string v8, "KLMS_LICENSE_STATUS"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2262
    .local v3, "licenseStatus":Ljava/lang/Boolean;
    iget-object v8, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v5, v9}, Lcom/android/server/TimaService;->handleLicenseStatus(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
