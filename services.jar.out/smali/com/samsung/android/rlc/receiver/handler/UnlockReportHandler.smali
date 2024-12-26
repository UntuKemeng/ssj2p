.class public Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;
.super Ljava/lang/Object;
.source "UnlockReportHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUnlockReportBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v4, "srcBody":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "rlcID":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "curTime":Ljava/lang/String;
    const/4 v5, 0x0

    .line 85
    .local v5, "token":Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v3}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 93
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    new-instance v2, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v2}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    .line 96
    .local v2, "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    invoke-virtual {v2, v3}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setData(Ljava/lang/String;)V

    .line 99
    return-object v2

    .line 86
    .end local v2    # "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/security/SignatureException;
    invoke-virtual {v1}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v1    # "e":Ljava/security/SignatureException;
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 91
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0
.end method

.method public static makeUnlockReportBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "body"

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->getUnlockReportBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 74
    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x193

    const/16 v11, 0x11

    .line 25
    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string v9, "UnlockReportManager run"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 29
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "body"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    .line 30
    .local v3, "dvcVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    new-instance v1, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-direct {v1}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;-><init>()V

    .line 31
    .local v1, "cert":Lcom/samsung/android/rlc/receiver/handler/CertHandler;
    invoke-virtual {v1, p0, v3}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v5

    .line 32
    .local v5, "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    if-nez v5, :cond_2

    .line 33
    invoke-virtual {v1}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->getResponse()Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 35
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v2, "clearBundle":Landroid/os/Bundle;
    const-string v8, "clearOp"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    const/16 v8, 0xc

    invoke-static {p0, v2, v8}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 38
    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string v9, "UnlockReportManager : not supported device "

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cert":Lcom/samsung/android/rlc/receiver/handler/CertHandler;
    .end local v2    # "clearBundle":Landroid/os/Bundle;
    .end local v3    # "dvcVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v5    # "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :cond_0
    :goto_0
    return-void

    .line 42
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "cert":Lcom/samsung/android/rlc/receiver/handler/CertHandler;
    .restart local v3    # "dvcVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .restart local v5    # "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const/16 v9, 0x11

    invoke-static {p0, v8, v9}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cert":Lcom/samsung/android/rlc/receiver/handler/CertHandler;
    .end local v3    # "dvcVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v5    # "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :catch_0
    move-exception v4

    .line 66
    .local v4, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {p0, v8, v11}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto :goto_0

    .line 47
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "cert":Lcom/samsung/android/rlc/receiver/handler/CertHandler;
    .restart local v3    # "dvcVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .restart local v5    # "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :cond_2
    :try_start_1
    const-string v8, "https://%s/dm/v1/dev/unlocked"

    invoke-static {p0, v8}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "uri":Ljava/lang/String;
    invoke-static {p0, v5, v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v6

    .line 50
    .local v6, "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    if-eqz v6, :cond_4

    .line 51
    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_3

    .line 53
    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string v9, "UnlockReportManager - success "

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v8

    if-ne v8, v10, :cond_0

    .line 56
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 57
    .restart local v2    # "clearBundle":Landroid/os/Bundle;
    const-string v8, "clearOp"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    const/16 v8, 0xc

    invoke-static {p0, v2, v8}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 59
    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string v9, "UnlockReportManager : not supported device "

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v2    # "clearBundle":Landroid/os/Bundle;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const/16 v9, 0x11

    invoke-static {p0, v8, v9}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
