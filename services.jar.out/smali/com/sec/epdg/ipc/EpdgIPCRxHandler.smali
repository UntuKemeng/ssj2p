.class public Lcom/sec/epdg/ipc/EpdgIPCRxHandler;
.super Ljava/lang/Object;
.source "EpdgIPCRxHandler.java"

# interfaces
.implements Lcom/sec/epdg/ipc/RilToEpdgInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "[RILRECEIVER]"


# instance fields
.field private final mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "[RILRECEIVER]"

    const-string v1, "Initiating EpdgRxHandler"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    const-string v0, "[RILRECEIVER]"

    const-string v1, "Exiting EpdgRxHandler initialization"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private getEpdgContextInfo()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/ipc/EpdgPdpContextInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    .local v2, "mpdpCtxInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/ipc/EpdgPdpContextInfo;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-gt v1, v3, :cond_2

    .line 219
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getNewEpdgContextInfo()Lcom/sec/epdg/ipc/EpdgPdpContextInfo;

    move-result-object v0

    .line 221
    .local v0, "ctxInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0, v1}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setCid(I)V

    .line 223
    invoke-virtual {v0, v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setDataCallRsn(I)V

    .line 224
    invoke-virtual {v0, v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setDataCallType(I)V

    .line 225
    const/4 v3, 0x4

    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 226
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setState(I)V

    .line 227
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_CMD_GET] -- RESPONSE -- connected-- (cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_0
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setState(I)V

    .line 233
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_CMD_GET] -- RESPONSE -- not connected-- (cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_1
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_CMD_GET] -- RESPONSE -- none[dropped] -- (No Context info for cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 244
    .end local v0    # "ctxInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    :cond_2
    return-object v2
.end method

.method private static getParamsForUserBin(Lcom/sec/epdg/ipc/EpdgIpcMessage;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getMainCmd()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 301
    const-string v0, "Suppressed"

    .line 303
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleHandOverStatus(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V
    .locals 4
    .param p1, "netIpcMsg"    # Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    .prologue
    .line 44
    const-string v1, "[RILRECEIVER]"

    const-string v2, "RX [NET_DATA_HANDOVER] -- RESPONSE -- true(always)"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->decodeHandoverResult()Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;

    move-result-object v0

    .line 47
    .local v0, "handoverResult":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 49
    new-instance v1, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->getPdnType()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->getAct()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;-><init>(II)V

    invoke-static {v1}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvApnHandoverResult(Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;)V

    goto :goto_0
.end method

.method private handleIILSsacEvent(Lcom/sec/epdg/ipc/EpdgIilIpcMessage;)V
    .locals 6
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgIilIpcMessage;

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;->decodeIilSsacInfo()Lcom/sec/epdg/ipc/EpdgIilSsacInfo;

    move-result-object v0

    .line 199
    .local v0, "ssacInfo":Lcom/sec/epdg/ipc/EpdgIilSsacInfo;
    if-nez v0, :cond_0

    .line 200
    const-string v2, "[RILRECEIVER]"

    const-string v3, "Incorrect EpdgIilIpcMessage IPC Message"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSAC info received. Voice Factor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVoiceFactor()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Voice Time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVoiceTime()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Video Factor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVideoFactor()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Video Time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVideoTime()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v1, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVoiceFactor()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVoiceTime()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVideoFactor()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVideoTime()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;-><init>(IIII)V

    .line 211
    .local v1, "ssacUpdate":Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;
    invoke-static {v1}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvIilSsacUpdate(Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;)V

    goto :goto_0
.end method

.method private handleIPSecConnectionInitRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    .prologue
    const/4 v7, 0x0

    .line 78
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->decodeDefinePdpContext()Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;

    move-result-object v2

    .line 79
    .local v2, "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    if-nez v2, :cond_0

    .line 128
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getCid()I

    move-result v1

    .line 81
    .local v1, "cid":I
    if-lez v1, :cond_6

    .line 82
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v0

    .line 83
    .local v0, "apnState":I
    if-eqz v0, :cond_1

    const/4 v3, 0x2

    if-eq v3, v0, :cond_1

    const/4 v3, 0x3

    if-ne v3, v0, :cond_5

    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->isEpdgNotAvailableRequired(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    const-string v3, "[RILRECEIVER]"

    const-string v4, "Define pdp context gets called again without gprs pdp context"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- falseDuplicate define pdp context for Cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {v7, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 100
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    :cond_2
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/4 v3, 0x1

    invoke-static {v3, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 105
    const-string v4, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- true -- Received Values: Cid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getCid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "APNName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getApnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "v4: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Suppressed"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "v6: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Suppressed"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "pcscfreq: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getPcscfReq()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv4Addr()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv6Addr()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 117
    :cond_5
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- false-- (Invalid IWlan state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") (cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v0    # "apnState":I
    :goto_3
    invoke-static {v7, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_0

    .line 124
    :cond_6
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- false-- (Invalid Cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private handleIPSecConnectionToggleRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V
    .locals 9
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->decodePdpContext()Lcom/sec/epdg/ipc/EpdgPdpContextInfo;

    move-result-object v7

    .line 132
    .local v7, "pdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    if-nez v7, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getCid()I

    move-result v1

    .line 134
    .local v1, "cid":I
    if-lez v1, :cond_0

    .line 135
    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v2

    if-eq v2, v8, :cond_2

    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;

    .line 140
    .local v6, "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    if-nez v6, :cond_3

    .line 141
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] -- RESPONSE -- false-- (previously missing [IPC_GPRS_DEFINE_PDP_CONTEXT]) (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {v5, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto :goto_0

    .line 147
    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 148
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] for connect -- RESPONSE -- false-- (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attach received for cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in Connected state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {v5, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_0

    .line 155
    :cond_4
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] for connect -- RESPONSE -- true-- (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {v8, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 159
    new-instance v0, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    invoke-virtual {v6}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv4Addr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv6Addr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getPcscfReq()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    .local v0, "connReqObj":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {v0}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvApnAttachRequest(Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;)V

    goto/16 :goto_0

    .line 170
    .end local v0    # "connReqObj":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    .end local v6    # "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    :cond_5
    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v2

    if-nez v2, :cond_8

    .line 171
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_6

    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_6

    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v2

    if-nez v2, :cond_7

    .line 174
    :cond_6
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] for disconnect -- RESPONSE -- false-- (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detach received for cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in Disconnected/Disconnecting/Idle state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {v5, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_0

    .line 180
    :cond_7
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] for disconnect -- RESPONSE -- true-- (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {v8, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 184
    new-instance v2, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    invoke-direct {v2, v1}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-static {v2}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvApnDetachRequest(Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;)V

    goto/16 :goto_0

    .line 188
    :cond_8
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] -- RESPONSE -- false-- (Invalid State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v5, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_0
.end method

.method private handleNetRegQuery(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V
    .locals 7
    .param p1, "netIpcMsg"    # Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x2

    .line 55
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    .line 56
    .local v0, "epdgAvailable":I
    const-string v3, "[RILRECEIVER]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [NET_REGIST] -- RESPONSE -- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v0, v5, :cond_0

    const-string v2, "EPDG AVAILABLE"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportChangeRatWhenThrottle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgRilSharedData;->getImsApnThrottled()Z

    move-result v1

    .line 63
    .local v1, "imsApnThrottled":Z
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [NET_REGIST] -- RESPONSE -- Throttled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v6, v2, v5}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendNetRegist(III)Z

    .line 73
    .end local v1    # "imsApnThrottled":Z
    :goto_2
    invoke-static {v0}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvEpdgStatusQuery(I)V

    .line 74
    return-void

    .line 56
    :cond_0
    const-string v2, "EPDG NOT AVAILABLE"

    goto :goto_0

    .line 65
    .restart local v1    # "imsApnThrottled":Z
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v2

    goto :goto_1

    .line 69
    .end local v1    # "imsApnThrottled":Z
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v2

    invoke-static {v6, v2, v5}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendNetRegist(III)Z

    goto :goto_2
.end method

.method private processIpcMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;)V
    .locals 7
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    .prologue
    const/4 v6, 0x5

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Main: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mainCmdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Sub: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "header":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->getParamsForUserBin(Lcom/sec/epdg/ipc/EpdgIpcMessage;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "param":Ljava/lang/String;
    :goto_0
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Rx]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Rx]: Param: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getMainCmd()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 293
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CRITICAL : Unknown IPC Message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .end local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :cond_0
    :goto_1
    return-void

    .line 251
    .end local v2    # "param":Ljava/lang/String;
    .restart local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :cond_1
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getBody()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 258
    .restart local v2    # "param":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_2

    .line 259
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    check-cast p1, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    .end local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-direct {p0, p1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleHandOverStatus(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V

    goto :goto_1

    .line 261
    .restart local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :cond_2
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 262
    check-cast p1, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    .end local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-direct {p0, p1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleNetRegQuery(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V

    goto :goto_1

    .line 266
    .restart local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :sswitch_1
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getcmdType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 267
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->getEpdgContextInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    .local v0, "epdgCtxtInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/ipc/EpdgPdpContextInfo;>;"
    invoke-static {v0}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->SendEpdgCtxtInfo(Ljava/util/ArrayList;)Z

    goto :goto_1

    .line 271
    .end local v0    # "epdgCtxtInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/ipc/EpdgPdpContextInfo;>;"
    :cond_3
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 272
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    check-cast p1, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    .end local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-direct {p0, p1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleIPSecConnectionInitRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V

    goto :goto_1

    .line 274
    .restart local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :cond_4
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 275
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    check-cast p1, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    .end local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-direct {p0, p1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleIPSecConnectionToggleRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V

    goto :goto_1

    .line 282
    .restart local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :sswitch_2
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getcmdType()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 283
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_0

    .line 284
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    check-cast p1, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;

    .end local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-direct {p0, p1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleIILSsacEvent(Lcom/sec/epdg/ipc/EpdgIilIpcMessage;)V

    goto :goto_1

    .line 289
    .restart local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :cond_5
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown IPC Message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xd -> :sswitch_1
        0x70 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public receive([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    .line 309
    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcMessageFactory;->fromByteArray([BI)Lcom/sec/epdg/ipc/EpdgIpcMessage;

    move-result-object v1

    .line 310
    .local v1, "ipcMessage":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    if-eqz v1, :cond_0

    .line 311
    invoke-direct {p0, v1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->processIpcMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v1    # "ipcMessage":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :cond_0
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "[RILRECEIVER]"

    const-string v3, "Could not parse IPC message"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method