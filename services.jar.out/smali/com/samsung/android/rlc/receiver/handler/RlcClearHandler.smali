.class public Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;
.super Ljava/lang/Object;
.source "RlcClearHandler.java"


# static fields
.field private static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_REQUEST_SHUTDOWN"

.field private static final EXTRA_CONFIRM_DIALOG:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field public static final OPRT_DEFUALT:I = -0x1

.field public static final OPRT_POWEROFF:I = 0x1

.field public static final OPRT_QUERY_PARAM:Ljava/lang/String; = "oprtType"

.field public static final OPRT_REBOOT:I = 0x2

.field public static final OPRT_REINIT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllBackoff(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    const-string v1, "[clearAllBackoff]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearGCMBackoff(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearSPPBackoff(Landroid/content/Context;)Z

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearGCMMgRegistrationBackoff(Landroid/content/Context;)Z

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearSPPMgRegistrationBackoff(Landroid/content/Context;)Z

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearDeliveryBackoff(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearCheckBackoff(Landroid/content/Context;)Z

    const-string v0, "SPP"

    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->unmarkMGRegistered(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "GCM"

    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->unmarkMGRegistered(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "callcheckapi"

    const-string v1, "N"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v5, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "oprtType"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "oprtType":I
    const-string v5, "clearOp"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "option":Z
    const-string v5, "SPP"

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->isMGRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->deregisterFromSPP(Landroid/content/Context;)V

    :cond_0
    const-string v5, "GCM"

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->isMGRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->deregisterFromGCM(Landroid/content/Context;)V

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->clearAllBackoff(Landroid/content/Context;)V

    if-nez v2, :cond_2

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRlcClear(Landroid/content/Context;Ljava/lang/Boolean;)V

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/rlc/util/RLCUtil;->resetSecureData()V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    sget v8, Lcom/samsung/android/rlc/util/RLCUtil;->RESET_ASKED:I

    invoke-virtual {v5, v8}, Lcom/samsung/android/rlc/util/RLCUtil;->setRegiStatus(I)V

    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Operation called by scheme : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_2
    move v5, v7

    goto :goto_0

    :pswitch_1
    invoke-static {p0, v10, v6}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_1

    :pswitch_2
    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3, v10}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_1

    .end local v3    # "pm":Landroid/os/PowerManager;
    :pswitch_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "powerOffIntent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .end local v4    # "powerOffIntent":Landroid/content/Intent;
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    sget v6, Lcom/samsung/android/rlc/util/RLCUtil;->NOT_SUPPORTED:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/rlc/util/RLCUtil;->setRegiStatus(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
