.class Lcom/sec/epdg/EpdgService$16;
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
    .line 1801
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$16;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1804
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1810
    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 1811
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.sec.commands.ipcall.setting"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1812
    .local v4, "settingType":I
    const-string v5, "com.sec.commands.ipcall.state"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1813
    .local v3, "on":Z
    const/4 v5, 0x7

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1700()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 1815
    .local v1, "imsInterface":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    if-nez v1, :cond_1

    .line 1816
    const-string v5, "[EPDGService]"

    const-string v6, "ImsInterface is null"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1819
    :cond_1
    if-nez v4, :cond_3

    .line 1820
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isVoLTEFeatureEnabled()Z

    move-result v0

    .line 1821
    .local v0, "current":Z
    if-eq v0, v3, :cond_0

    .line 1823
    if-eqz v3, :cond_2

    .line 1824
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureEnable()V

    .line 1825
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1700()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_type"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1827
    :cond_2
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureDisable()V

    .line 1828
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1700()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_type"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1831
    .end local v0    # "current":Z
    :cond_3
    if-ne v4, v8, :cond_5

    .line 1832
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallEnabled()Z

    move-result v0

    .line 1833
    .restart local v0    # "current":Z
    if-eq v0, v3, :cond_0

    .line 1835
    if-eqz v3, :cond_4

    .line 1836
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallEnable()V

    goto :goto_0

    .line 1838
    :cond_4
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallDisable()V

    goto :goto_0

    .line 1842
    .end local v0    # "current":Z
    :cond_5
    const-string v5, "[EPDGService]"

    const-string v6, "Received unknown command"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
