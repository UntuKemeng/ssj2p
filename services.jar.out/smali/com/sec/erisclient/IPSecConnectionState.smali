.class public Lcom/sec/erisclient/IPSecConnectionState;
.super Ljava/lang/Object;
.source "IPSecConnectionState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IPSecConnectionState"

.field private static final TAG_INTFNAME:Ljava/lang/String; = "mIntfName"

.field private static final TAG_IPTYPE:Ljava/lang/String; = "mIpType"

.field private static final TAG_IPv4ADDR:Ljava/lang/String; = "mIpv4Addr"

.field private static final TAG_IPv4DNS:Ljava/lang/String; = "mIpv4Dnses"

.field private static final TAG_IPv4LENG:Ljava/lang/String; = "mIpv4PrefixLen"

.field private static final TAG_IPv4PCSC:Ljava/lang/String; = "mIpv4PcscfAddr"

.field private static final TAG_IPv6ADDR:Ljava/lang/String; = "mIpv6Addr"

.field private static final TAG_IPv6DNS:Ljava/lang/String; = "mIpv6Dnses"

.field private static final TAG_IPv6LENG:Ljava/lang/String; = "mIpv6PrefixLen"

.field private static final TAG_IPv6PCSC:Ljava/lang/String; = "mIpv6PcscfAddr"


# instance fields
.field private mIntfName:Ljava/lang/String;

.field private mIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

.field private mIpv4Addr:Ljava/lang/String;

.field private mIpv4Dnses:[Ljava/lang/String;

.field private mIpv4PcscfAddr:[Ljava/lang/String;

.field private mIpv4PrefixLen:I

.field private mIpv6Addr:Ljava/lang/String;

.field private mIpv6Dnses:[Ljava/lang/String;

.field private mIpv6PcscfAddr:[Ljava/lang/String;

.field private mIpv6PrefixLen:I


# direct methods
.method public constructor <init>(IILcom/sec/epdg/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ipv4prefixlen"    # I
    .param p2, "ipv6prefixlen"    # I
    .param p3, "iptype"    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .param p4, "intfName"    # Ljava/lang/String;
    .param p5, "ipv4Dnses"    # [Ljava/lang/String;
    .param p6, "ipv6Dnses"    # [Ljava/lang/String;
    .param p7, "ipv4PcscfAddr"    # [Ljava/lang/String;
    .param p8, "ipv6PcscfAddr"    # [Ljava/lang/String;
    .param p9, "ipv4Addr"    # Ljava/lang/String;
    .param p10, "ipv6Addr"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "IPSecConnectionState"

    const-string v1, "IPSecConnectionState()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput p1, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4PrefixLen:I

    .line 48
    iput p2, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6PrefixLen:I

    .line 49
    iput-object p3, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 50
    iput-object p4, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIntfName:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4Dnses:[Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6Dnses:[Ljava/lang/String;

    .line 53
    iput-object p7, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4PcscfAddr:[Ljava/lang/String;

    .line 54
    iput-object p8, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6PcscfAddr:[Ljava/lang/String;

    .line 55
    iput-object p9, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4Addr:Ljava/lang/String;

    .line 56
    iput-object p10, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6Addr:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 20
    .param p1, "jobject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v18, "IPSecConnectionState"

    const-string v19, "IPSecConnectionState()"

    invoke-static/range {v18 .. v19}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v18, "mIntfName"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/IPSecConnectionState;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "mIntfName":Ljava/lang/String;
    const-string v18, "mIpType"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/erisclient/IPSecConnectionState;->getIpTypeFromInt(I)Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v9

    .line 74
    .local v9, "mIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    const-string v18, "mIpv4Addr"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/IPSecConnectionState;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 75
    .local v10, "mIpv4Addr":Ljava/lang/String;
    const-string v18, "mIpv6Addr"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/IPSecConnectionState;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 76
    .local v14, "mIpv6Addr":Ljava/lang/String;
    const-string v18, "mIpv4PrefixLen"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 77
    .local v13, "mIpv4PrefixLen":I
    const-string v18, "mIpv6PrefixLen"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 80
    .local v17, "mIpv6PrefixLen":I
    const-string v18, "mIpv4Dnses"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 81
    .local v4, "ipv4dnsarr":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    .line 82
    .local v11, "mIpv4Dnses":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_0

    .line 83
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v11, v3

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_0
    const-string v18, "mIpv6Dnses"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 87
    .local v6, "ipv6dnsarr":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    .line 88
    .local v15, "mIpv6Dnses":[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_1

    .line 89
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v3

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 92
    :cond_1
    const-string v18, "mIpv4PcscfAddr"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 93
    .local v5, "ipv4pcscarr":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v12, v0, [Ljava/lang/String;

    .line 94
    .local v12, "mIpv4PcscfAddr":[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_2

    .line 95
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v3

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 98
    :cond_2
    const-string v18, "mIpv6PcscfAddr"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 99
    .local v7, "ipv6pcscarr":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 100
    .local v16, "mIpv6PcscfAddr":[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_3

    .line 101
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v3

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 103
    :cond_3
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4PrefixLen:I

    .line 104
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6PrefixLen:I

    .line 105
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 106
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIntfName:Ljava/lang/String;

    .line 107
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4Dnses:[Ljava/lang/String;

    .line 108
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6Dnses:[Ljava/lang/String;

    .line 109
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4PcscfAddr:[Ljava/lang/String;

    .line 110
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6PcscfAddr:[Ljava/lang/String;

    .line 111
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4Addr:Ljava/lang/String;

    .line 112
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6Addr:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private getIpTypeFromInt(I)Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 123
    packed-switch p1, :pswitch_data_0

    .line 131
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    :goto_0
    return-object v0

    .line 125
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto :goto_0

    .line 127
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto :goto_0

    .line 129
    :pswitch_2
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "jobject"    # Lorg/json/JSONObject;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 119
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getIntfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIntfName:Ljava/lang/String;

    return-object v0
.end method

.method public getIptype()Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    return-object v0
.end method

.method public getIpv4PcscfAddr()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4PcscfAddr:[Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4addr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4prefixlen()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4PrefixLen:I

    return v0
.end method

.method public getIpv6PcscfAddr()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6PcscfAddr:[Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6addr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6prefixlen()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6PrefixLen:I

    return v0
.end method

.method public getmIpv4Dnses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4Dnses:[Ljava/lang/String;

    return-object v0
.end method

.method public getmIpv6Dnses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6Dnses:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    const-string v0, "{"

    .line 186
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Ipv4prefixlen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv4prefixlen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Ipv6prefixlen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv6prefixlen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Iptype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIptype()Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", IntfName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIntfName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Ipv4Dnses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getmIpv4Dnses()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Ipv6Dnses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getmIpv6Dnses()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Ipv4PcscfAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv4PcscfAddr()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Ipv6PcscfAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv6PcscfAddr()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Ipv4addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv4addr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Ipv6addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv6addr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    return-object v0
.end method
