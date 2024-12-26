.class public Lcom/android/internal/telephony/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0x0

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VS_RX:I = 0x2

.field public static final CALL_TYPE_VS_TX:I = 0x1

.field public static final CALL_TYPE_VT:I = 0x3


# instance fields
.field public call_domain:I

.field public call_isMpty:Z

.field public call_type:I

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 117
    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 118
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 120
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "callDomain"    # I
    .param p3, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 124
    iput p1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 125
    iput p2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 126
    invoke-static {p3}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Call$CallType;)V
    .locals 5
    .param p1, "callType"    # Lcom/android/internal/telephony/Call$CallType;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-boolean v3, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 133
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_0

    .line 134
    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 135
    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 188
    :goto_0
    return-void

    .line 136
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_1

    .line 137
    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 138
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 139
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_2

    .line 140
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 141
    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 142
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_3

    .line 143
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 144
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "hd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_4

    .line 147
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 148
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "qcif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_5

    .line 151
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 152
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "qvga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 154
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_6

    .line 155
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 156
    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 157
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_7

    .line 158
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 159
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 160
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_8

    .line 161
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 162
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "hd_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_9

    .line 165
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 166
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "hd720"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_a

    .line 169
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 170
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "cif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 172
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_b

    .line 173
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 174
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "cif_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 176
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_c

    .line 177
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 178
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "qvga_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 180
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_d

    .line 181
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 182
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "hd720_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 185
    :cond_d
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 186
    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallDetails;)V
    .locals 1
    .param p1, "srcCall"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 193
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 194
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 195
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 202
    :goto_0
    return-void

    .line 197
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 198
    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 199
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    goto :goto_0
.end method

.method public static callTypeToVideoState(I)I
    .locals 2
    .param p0, "callType"    # I

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 420
    .local v0, "videoState":I
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 421
    const/4 v0, 0x1

    .line 428
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 423
    const/4 v0, 0x2

    goto :goto_0

    .line 424
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 425
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 223
    .local v1, "extras":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 224
    const/4 v4, 0x0

    .line 236
    :goto_0
    return-object v4

    .line 228
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 230
    if-eqz v1, :cond_1

    .line 231
    const/4 v2, 0x0

    .line 232
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 233
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v4, v1

    .line 236
    goto :goto_0
.end method

.method public static getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10
    .param p0, "extras"    # [Ljava/lang/String;
    .param p1, "needDecode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 262
    :cond_0
    return-object v4

    .line 250
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 251
    .local v5, "s":Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 252
    .local v6, "sep_index":I
    if-gez v6, :cond_2

    .line 250
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, "value":Ljava/lang/String;
    :goto_2
    if-eqz p1, :cond_3

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 257
    :cond_4
    const-string v7, ""

    goto :goto_2
.end method

.method public static videoStateToCallType(I)I
    .locals 3
    .param p0, "videoState"    # I

    .prologue
    .line 400
    invoke-static {p0}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v1

    .line 401
    .local v1, "imsCallType":I
    const/4 v0, 0x0

    .line 403
    .local v0, "callType":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 404
    const/4 v0, 0x1

    .line 414
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 406
    const/4 v0, 0x2

    goto :goto_0

    .line 407
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 408
    const/4 v0, 0x3

    goto :goto_0

    .line 409
    :cond_3
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 411
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public getBundleFromExtras()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 266
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 269
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 270
    iget-object v3, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 271
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "+"

    invoke-static {v4, v5}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 275
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public getCsvFromExtras()Ljava/lang/String;
    .locals 7

    .prologue
    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    const-string v4, ""

    .line 297
    :goto_0
    return-object v4

    .line 292
    :cond_0
    const-string v0, "+"

    .line 293
    .local v0, "ALLOW_CHARS":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 294
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "+"

    invoke-static {v4, v6}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 297
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getExtraStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/telephony/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isChanged(Lcom/android/internal/telephony/CallDetails;)Z
    .locals 3
    .param p1, "details"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, "changed":Z
    if-eqz p1, :cond_0

    if-ne p1, p0, :cond_1

    .line 385
    :cond_0
    const/4 v1, 0x0

    .line 396
    :goto_0
    return v1

    .line 388
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget v2, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iget v2, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    iget-boolean v2, p1, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    if-eq v1, v2, :cond_3

    .line 389
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 392
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 393
    const/4 v0, 0x1

    :cond_4
    move v1, v0

    .line 396
    goto :goto_0
.end method

.method public setExtraValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public setExtras([Ljava/lang/String;)V
    .locals 1
    .param p1, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {p1}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 206
    return-void
.end method

.method public setExtrasFromCsv(Ljava/lang/String;)V
    .locals 2
    .param p1, "newExtras"    # Ljava/lang/String;

    .prologue
    .line 301
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 302
    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    goto :goto_0
.end method

.method public setIsMpty(Z)V
    .locals 0
    .param p1, "isMpty"    # Z

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 306
    return-void
.end method

.method public toCallType()Lcom/android/internal/telephony/Call$CallType;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 311
    iget-object v2, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v3, "participants"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 312
    .local v0, "isConferenceCall":Z
    iget-object v2, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v3, "resolution"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v2, v5, :cond_e

    .line 315
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v2, :cond_1

    .line 316
    if-eqz v0, :cond_0

    .line 317
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    .line 359
    :goto_0
    return-object v2

    .line 319
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 321
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v6, :cond_b

    .line 322
    if-eqz v0, :cond_2

    .line 323
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 324
    :cond_2
    const-string v2, "qcif"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 325
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 326
    :cond_3
    const-string v2, "qvga"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 327
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 328
    :cond_4
    const-string v2, "hd_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 329
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 330
    :cond_5
    const-string v2, "hd720"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 331
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 332
    :cond_6
    const-string v2, "cif"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 333
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 334
    :cond_7
    const-string v2, "cif_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 335
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 336
    :cond_8
    const-string v2, "qvga_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 337
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 338
    :cond_9
    const-string v2, "hd720_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 339
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 341
    :cond_a
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 343
    :cond_b
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v4, :cond_c

    .line 344
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 345
    :cond_c
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v5, :cond_d

    .line 346
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 348
    :cond_d
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 350
    :cond_e
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v2, v4, :cond_11

    .line 351
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v2, :cond_f

    .line 352
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    goto/16 :goto_0

    .line 353
    :cond_f
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v6, :cond_10

    .line 354
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto/16 :goto_0

    .line 356
    :cond_10
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    goto/16 :goto_0

    .line 359
    :cond_11
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " domain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isMpty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extras : <MASKED>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " domain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isMpty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallDetails;->getCsvFromExtras()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
