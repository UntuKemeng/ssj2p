.class public Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;
.super Ljava/lang/Object;
.source "PrepareHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPrepareBody(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 4
    .param p0, "msgId"    # Ljava/lang/String;
    .param p1, "oprtId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->TAG:Ljava/lang/String;

    const-string v2, "[getPrepareBody]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    .local v0, "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    invoke-static {p2}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setOprtId(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getPrepareBody]msgId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setMsgId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static makePrepareBundle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3
    .param p0, "msgId"    # Ljava/lang/String;
    .param p1, "oprtId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "body"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->getPrepareBody(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    sget-object v11, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->TAG:Ljava/lang/String;

    const-string v12, "RLC_PrepareHandler run"

    invoke-static {v11, v12}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "bundle":Landroid/os/Bundle;
    const-string v11, "MID"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "msgId":Ljava/lang/String;
    const-string v11, "OID"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "oprtId":Ljava/lang/String;
    invoke-static {v6, v7, p0}, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->getPrepareBody(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v0

    .local v0, "body":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    const-string v11, "https://%s/dm/v1/dev/getCmd"

    invoke-static {p0, v11}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "uri":Ljava/lang/String;
    invoke-static {p0, v0, v10}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v9

    .local v9, "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_0

    invoke-virtual {v9}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v8

    .local v8, "resVO":Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .local v4, "completeBody":Lorg/json/JSONObject;
    const-string v11, "cmd"

    invoke-virtual {v8}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCmd()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "oprtId"

    invoke-virtual {v8}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getOprtId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "cert"

    invoke-virtual {v8}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCert()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "nonceSvr"

    invoke-virtual {v8}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getNonceSvr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v4, p0}, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->makeCompleteBundle(Lorg/json/JSONObject;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v3

    .end local v0    # "body":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "completeBody":Lorg/json/JSONObject;
    .end local v6    # "msgId":Ljava/lang/String;
    .end local v7    # "oprtId":Ljava/lang/String;
    .end local v8    # "resVO":Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    .end local v9    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v10    # "uri":Ljava/lang/String;
    :goto_0
    return-object v3

    .restart local v0    # "body":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "msgId":Ljava/lang/String;
    .restart local v7    # "oprtId":Ljava/lang/String;
    .restart local v9    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v10    # "uri":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v11

    const/16 v12, 0x193

    if-ne v11, v12, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "clearBundle":Landroid/os/Bundle;
    const-string v11, "clearOp"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v11, 0xc

    invoke-static {p0, v2, v11}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    sget-object v11, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->TAG:Ljava/lang/String;

    const-string v12, "RLC_PrepareHandler : not supported device "

    invoke-static {v11, v12}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "body":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "clearBundle":Landroid/os/Bundle;
    .end local v6    # "msgId":Ljava/lang/String;
    .end local v7    # "oprtId":Ljava/lang/String;
    .end local v9    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v10    # "uri":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
