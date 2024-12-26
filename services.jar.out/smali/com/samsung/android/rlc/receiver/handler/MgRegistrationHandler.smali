.class public Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;
.super Ljava/lang/Object;
.source "MgRegistrationHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMgRegistrationBody(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRegistraionID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "registrationID":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "rlcId":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 110
    .local v3, "resObj":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 112
    .local v5, "token":Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 113
    const/4 v6, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 131
    :goto_1
    :try_start_0
    const-string v6, "ver"

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v6, "model"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v6, "csc"

    invoke-static {}, Lcom/samsung/android/rlc/util/DeviceUtil;->getSalesCodeRegion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v5

    .line 145
    :goto_2
    new-instance v2, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v2}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    .line 146
    .local v2, "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    invoke-virtual {v2, v4}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setData(Ljava/lang/String;)V

    .line 148
    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ REG_ID]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "registPUSH: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[RegisterURL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getMGRegisterURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v2    # "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :goto_3
    return-object v2

    .line 113
    :sswitch_0
    const-string v7, "GCM"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    goto/16 :goto_0

    :sswitch_1
    const-string v7, "SPP"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 116
    :pswitch_0
    :try_start_1
    const-string v6, "gcm"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 123
    .end local v0    # "e":Lorg/json/JSONException;
    :pswitch_1
    :try_start_2
    const-string v6, "spp"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 124
    :catch_1
    move-exception v0

    .line 125
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 135
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 136
    .local v0, "e":Ljava/security/SignatureException;
    invoke-virtual {v0}, Ljava/security/SignatureException;->printStackTrace()V

    goto/16 :goto_2

    .line 137
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 138
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_2

    .line 139
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v0

    .line 140
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto/16 :goto_2

    .line 141
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_5
    move-exception v0

    .line 142
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 154
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        0x112f1 -> :sswitch_0
        0x14193 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static makeMgRegistrationBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "body"

    invoke-static {p0, p1}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->getMgRegistrationBody(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 101
    const-string v1, "pushType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, 0x193

    const/16 v11, 0xc

    .line 33
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v10, "MgRegistrationManager run"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v9, "body"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    .line 37
    .local v3, "dvcVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    const-string v9, "pushType"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "pushType":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getMGRegisterURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 40
    .local v8, "uri":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-direct {v1}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;-><init>()V

    .line 41
    .local v1, "cert":Lcom/samsung/android/rlc/receiver/handler/CertHandler;
    invoke-virtual {v1, p0, v3}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v6

    .line 42
    .local v6, "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    if-nez v6, :cond_1

    .line 43
    invoke-virtual {v1}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->getResponse()Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->getResponse()Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v9

    if-ne v9, v12, :cond_0

    .line 45
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v2, "clearBundle":Landroid/os/Bundle;
    const-string v9, "clearOp"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    invoke-static {p0, v2, v11}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 49
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v10, "MgRegistrationManager : not supported device "

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v2    # "clearBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v10, "MgRegistrationManager : retry alam set "

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, v5}, Lcom/samsung/android/rlc/util/PushUtil;->retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_1
    const/4 v9, 0x1

    :try_start_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-ne v9, v10, :cond_2

    .line 63
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v10, "unrecognized push type!! delivery repory ignored!!"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v4

    .line 93
    .local v4, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {p0, p1, v5}, Lcom/samsung/android/rlc/util/PushUtil;->retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {p0, v6, v8}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v7

    .line 69
    .local v7, "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "MgRegistrationManager: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-eqz v7, :cond_7

    .line 71
    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v9

    const/16 v10, 0x191

    if-ne v9, v10, :cond_4

    .line 73
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "MgRegistrationManager: DM_CLIENT_AUTH_FAIL"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    :cond_3
    const-string v9, "null"

    goto :goto_1

    .line 74
    :cond_4
    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v9

    if-ne v9, v12, :cond_5

    .line 77
    const/4 v9, 0x0

    const/16 v10, 0xc

    invoke-static {p0, v9, v10}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 78
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v10, "MgRegistrationManager : not supported device "

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_5
    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_6

    .line 82
    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMgAddr()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v5, v9}, Lcom/samsung/android/rlc/util/PreferencesUtil;->markMGRegistered(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/rlc/util/RLCUtil;->PKG_VER:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :cond_6
    invoke-static {p0, p1, v5}, Lcom/samsung/android/rlc/util/PushUtil;->retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_7
    invoke-static {p0, p1, v5}, Lcom/samsung/android/rlc/util/PushUtil;->retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
