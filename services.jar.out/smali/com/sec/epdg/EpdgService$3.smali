.class Lcom/sec/epdg/EpdgService$3;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$3;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1495
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1482
    const-string v1, "[EPDGService]"

    const-string v2, "onReceive action: ACTION_IMS_ON_SIMLOADED"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$3;->this$0:Lcom/sec/epdg/EpdgService;

    const/16 v2, 0x3fd

    # invokes: Lcom/sec/epdg/EpdgService;->handleImsStateChange(I)V
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgService;->access$1500(Lcom/sec/epdg/EpdgService;I)V

    .line 1484
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isNeedNotiVoWifiSupport()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1485
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1486
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.epdg.VOWIFI_SUPPORT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1487
    const-string v1, "CAPABLILITY"

    # getter for: Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1488
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1700()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1489
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast intent: com.sec.epdg.VOWIFI_SUPPORT CAPABILITY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
