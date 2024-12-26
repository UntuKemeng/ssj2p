.class public Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
.super Ljava/lang/Object;
.source "DeviceApiRequestVO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "request"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private imei:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private imei2:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private msgId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private oprtId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private resultDev:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private rlcId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private ver:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imei:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imei2:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->rlcId:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->msgId:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->oprtId:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->data:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->token:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->resultDev:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->ver:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImei2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imei2:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getOprtId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->oprtId:Ljava/lang/String;

    return-object v0
.end method

.method public getResultDev()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->resultDev:Ljava/lang/String;

    return-object v0
.end method

.method public getRlcId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->rlcId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->data:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setDataByte([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 97
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->data:Ljava/lang/String;

    .line 100
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imei:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setImei2(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei2"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imei2:Ljava/lang/String;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->msgId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setOprtId(Ljava/lang/String;)V
    .locals 0
    .param p1, "oprtId"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->oprtId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setResultDev(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultDev"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->resultDev:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setRlcId(Ljava/lang/String;)V
    .locals 0
    .param p1, "rlcId"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->rlcId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->token:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setTokenBytes([B)V
    .locals 4
    .param p1, "token"    # [B

    .prologue
    .line 113
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->token:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->token:Ljava/lang/String;

    .line 116
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "ver"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->ver:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "<request>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "<imei>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</imei>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getImei2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "<imei2>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getImei2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</imei2>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getRlcId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "<rlcId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getRlcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</rlcId>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "<msgId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</msgId>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getOprtId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "<oprtId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getOprtId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</oprtId>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "<data>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</data>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "<token>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</token>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "<ver>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</ver>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getResultDev()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "<resultDev>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getResultDev()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</resultDev>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_8
    const-string v1, "</request>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
