.class Lcom/sec/epdg/EpdgService$19;
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
    .line 1907
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$19;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1910
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v12, 0x1

    .line 1915
    move-object v3, p1

    check-cast v3, Landroid/content/Intent;

    .line 1917
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "com.sec.imsservice.intent.action.EPDG_NAME"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1918
    const/4 v6, 0x0

    .line 1919
    .local v6, "result":I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1920
    .local v4, "intentToCall":Landroid/content/Intent;
    const-string v9, "epdgfqdn"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1922
    .local v1, "epdgfqdn":Ljava/lang/String;
    const-string v9, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "INTENT_EPDG_FQDN_NAME - ePDG Server address is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getSimState()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1925
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1700()Landroid/content/Context;

    move-result-object v9

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 1927
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    .line 1929
    .local v5, "operator":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1930
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v9, p0, Lcom/sec/epdg/EpdgService$19;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isValidEpdgFqdn(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v9, v5, v1}, Lcom/sec/epdg/EpdgService;->access$3200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1931
    const-string v9, "epdgserverip"

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "operatornumeric="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1938
    .local v7, "selection":Ljava/lang/String;
    const-string v9, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URI is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/epdg/EpdgService$19;->this$0:Lcom/sec/epdg/EpdgService;

    iget-object v11, v11, Lcom/sec/epdg/EpdgService;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ContentValues is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "epdgserverip"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Selection is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1700()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/epdg/EpdgService$19;->this$0:Lcom/sec/epdg/EpdgService;

    iget-object v10, v10, Lcom/sec/epdg/EpdgService;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v0, v7, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1942
    if-ne v6, v12, :cond_3

    .line 1943
    const-string v9, "epdgserverip"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1945
    .local v2, "epdgserverip":Ljava/lang/String;
    const-string v9, "NoEpdgServerIp"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1946
    const-string v9, "provisioning"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1951
    :goto_1
    const-string v9, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VoWiFi Provisioning intent will be sent to PhoneApp with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "provisioning"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    const-string v9, "com.samsung.android.phone.VOWIFI_PROVISIONING"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1955
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1700()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1961
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "epdgfqdn":Ljava/lang/String;
    .end local v2    # "epdgserverip":Ljava/lang/String;
    .end local v4    # "intentToCall":Landroid/content/Intent;
    .end local v5    # "operator":Ljava/lang/String;
    .end local v6    # "result":I
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_2
    return-void

    .line 1934
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "epdgfqdn":Ljava/lang/String;
    .restart local v4    # "intentToCall":Landroid/content/Intent;
    .restart local v5    # "operator":Ljava/lang/String;
    .restart local v6    # "result":I
    .restart local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v9, "epdgserverip"

    const-string v10, "NoEpdgServerIp"

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1948
    .restart local v2    # "epdgserverip":Ljava/lang/String;
    .restart local v7    # "selection":Ljava/lang/String;
    :cond_2
    const-string v9, "provisioning"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 1957
    .end local v2    # "epdgserverip":Ljava/lang/String;
    :cond_3
    const-string v9, "[EPDGService]"

    const-string v10, "ePDG Server address is not updated"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
