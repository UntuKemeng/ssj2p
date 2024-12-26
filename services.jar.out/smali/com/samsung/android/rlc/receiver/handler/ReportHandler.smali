.class public Lcom/samsung/android/rlc/receiver/handler/ReportHandler;
.super Ljava/lang/Object;
.source "ReportHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getReportBody(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preBody"    # Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    .param p2, "oprtCmd"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v9, -0x1

    .line 90
    .local v9, "cmdNum":I
    const/4 v1, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 105
    :goto_1
    const/4 v11, 0x0

    .line 107
    .local v11, "oprtResult":[B
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/rlc/util/RLCUtil;->backUpSecureData()Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "backUpData":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne v9, v1, :cond_2

    .line 109
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 110
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPinByte()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTokenByte()[B

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessageByte()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestorByte()[B

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/lang/String;-><init>([B)V

    .line 109
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/rlc/util/RLCUtil;->completeLock(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    .line 117
    :goto_3
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/samsung/android/rlc/util/RLCUtil;->restoreSecureData(Ljava/lang/String;)Z

    move-result v13

    .line 118
    .local v13, "result":Z
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Store Client Data] Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v8    # "backUpData":Ljava/lang/String;
    .end local v13    # "result":Z
    :goto_4
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changed Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v12, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v12}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    .line 125
    .local v12, "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getOprtId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setOprtId(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setToken(Ljava/lang/String;)V

    .line 129
    if-nez v11, :cond_4

    const-string v1, "NOK"

    :goto_5
    invoke-virtual {v12, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setResultDev(Ljava/lang/String;)V

    .line 131
    return-object v12

    .line 90
    .end local v11    # "oprtResult":[B
    .end local v12    # "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :sswitch_0
    const-string v2, "Activating"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "Unlocking"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "Locking"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "Completing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_0

    .line 92
    :pswitch_0
    const/4 v9, 0x1

    .line 93
    goto/16 :goto_1

    .line 95
    :pswitch_1
    const/4 v9, 0x3

    .line 96
    goto/16 :goto_1

    .line 98
    :pswitch_2
    const/4 v9, 0x2

    .line 99
    goto/16 :goto_1

    .line 101
    :pswitch_3
    const/4 v9, 0x4

    goto/16 :goto_1

    .line 109
    .restart local v8    # "backUpData":Ljava/lang/String;
    .restart local v11    # "oprtResult":[B
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 113
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 114
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTokenByte()[B

    move-result-object v3

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getSignByte()[B

    move-result-object v4

    .line 113
    invoke-virtual {v2, v1, v3, v9, v4}, Lcom/samsung/android/rlc/util/RLCUtil;->completeRlc(Z[BI[B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    goto/16 :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_6

    .line 119
    .end local v8    # "backUpData":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 120
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 129
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :cond_4
    const-string v1, "OK"

    goto :goto_5

    .line 90
    :sswitch_data_0
    .sparse-switch
        -0xf83a2f0 -> :sswitch_0
        -0xe559e02 -> :sswitch_1
        0x568fbfd6 -> :sswitch_3
        0x7768d6b7 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static makeReportBundle(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preBody"    # Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    .param p2, "oprtCmd"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "body"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->getReportBody(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 83
    const-string v1, "cmd"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 22
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string v10, "RLC_ReportHandler run"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return v7

    .line 26
    :cond_0
    :try_start_0
    const-string v9, "body"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    .line 27
    .local v1, "dvceVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    const-string v9, "cmd"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "oprtCmd":Ljava/lang/String;
    const-string v5, ""

    .line 30
    .local v5, "subURL":Ljava/lang/String;
    const/4 v9, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 44
    :goto_2
    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "uri":Ljava/lang/String;
    invoke-static {p0, v1, v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v4

    .line 48
    .local v4, "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    if-eqz v4, :cond_5

    .line 51
    invoke-virtual {v4}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_3

    .line 52
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string v10, "RLC_ReportHandler - success "

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v9, "Completing"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 54
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string v10, "Follow not support device steps."

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "clearBundle":Landroid/os/Bundle;
    const-string v9, "clearOp"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    const/16 v9, 0xc

    invoke-static {p0, v0, v9}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .end local v0    # "clearBundle":Landroid/os/Bundle;
    :cond_2
    move v7, v8

    .line 59
    goto :goto_0

    .line 30
    .end local v4    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v6    # "uri":Ljava/lang/String;
    :sswitch_0
    const-string v10, "Activating"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v9, v7

    goto :goto_1

    :sswitch_1
    const-string v10, "Unlocking"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v9, v8

    goto :goto_1

    :sswitch_2
    const-string v10, "Locking"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x2

    goto :goto_1

    :sswitch_3
    const-string v10, "Completing"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x3

    goto :goto_1

    .line 32
    :pswitch_0
    const-string v5, "https://%s/dm/v1/dev/report/activate"

    .line 33
    goto :goto_2

    .line 35
    :pswitch_1
    const-string v5, "https://%s/dm/v1/dev/report/unlock"

    .line 36
    goto :goto_2

    .line 38
    :pswitch_2
    const-string v5, "https://%s/dm/v1/dev/report/lock"

    .line 39
    goto :goto_2

    .line 41
    :pswitch_3
    const-string v5, "https://%s/dm/v1/dev/report/complete"

    goto :goto_2

    .line 60
    .restart local v4    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v6    # "uri":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v8

    const/16 v9, 0x193

    if-ne v8, v9, :cond_4

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .restart local v0    # "clearBundle":Landroid/os/Bundle;
    const-string v8, "clearOp"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const/16 v8, 0xc

    invoke-static {p0, v0, v8}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 65
    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string v9, "RLC_ReportHandler : not supported device "

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 73
    .end local v0    # "clearBundle":Landroid/os/Bundle;
    .end local v1    # "dvceVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v3    # "oprtCmd":Ljava/lang/String;
    .end local v4    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v5    # "subURL":Ljava/lang/String;
    .end local v6    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dvceVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .restart local v3    # "oprtCmd":Ljava/lang/String;
    .restart local v4    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v5    # "subURL":Ljava/lang/String;
    .restart local v6    # "uri":Ljava/lang/String;
    :cond_4
    const/16 v8, 0xf

    :try_start_1
    invoke-static {p0, p1, v8}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto/16 :goto_0

    .line 71
    :cond_5
    const/16 v8, 0xf

    invoke-static {p0, p1, v8}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 30
    nop

    :sswitch_data_0
    .sparse-switch
        -0xf83a2f0 -> :sswitch_0
        -0xe559e02 -> :sswitch_1
        0x568fbfd6 -> :sswitch_3
        0x7768d6b7 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
