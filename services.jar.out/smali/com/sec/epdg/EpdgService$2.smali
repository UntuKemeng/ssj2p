.class Lcom/sec/epdg/EpdgService$2;
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
    .line 1447
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$2;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1451
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, -0x1

    .line 1456
    move-object v3, p1

    check-cast v3, Landroid/content/Intent;

    .line 1457
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intent received."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const-string v6, "NetworkType"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1459
    .local v4, "networkType":I
    const-string v6, "ErrorReason"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1461
    .local v2, "errorReason":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .line 1462
    .local v0, "apnType":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/epdg/EpdgService$2;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {v6, v0}, Lcom/sec/epdg/EpdgService;->access$1400(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v5

    .line 1464
    .local v5, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.intent.action.IMS_CALL_DROP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1465
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 1466
    const-string v6, "[EPDGService]"

    const-string v7, "VoWiFi call is drop or not established properly, send DPD to check peer alive or not"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    const/16 v6, 0x57a

    if-eq v2, v6, :cond_0

    const/16 v6, 0x198

    if-ne v2, v6, :cond_1

    .line 1468
    :cond_0
    const-string v6, "[EPDGService]"

    const-string v7, "Call drop abnormally, trigger DPD to check peer is alive or dead"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1470
    .local v1, "dpdmsg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1476
    .end local v1    # "dpdmsg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 1473
    :cond_2
    const-string v6, "[EPDGService]"

    const-string v7, "It\'s not VoWiFi call so ignore it"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
