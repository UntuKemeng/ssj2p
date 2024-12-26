.class Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;
.super Ljava/lang/Object;
.source "EpdgTestRilAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgTestRilAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RILConnectionInfo"
.end annotation


# instance fields
.field private final adapterName:Ljava/lang/String;

.field private connectionId:I

.field private gatewayIP:Ljava/lang/String;

.field private gatewayIPv6:Ljava/lang/String;

.field private intfstatus:I

.field private ipType:I

.field private localIP:Ljava/lang/String;

.field private localIPv6:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/EpdgTestRilAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/EpdgTestRilAdapter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 180
    iput-object p1, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->this$0:Lcom/sec/epdg/EpdgTestRilAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->localIP:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->gatewayIP:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->localIPv6:Ljava/lang/String;

    .line 187
    iput-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->gatewayIPv6:Ljava/lang/String;

    .line 191
    iput-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->adapterName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/EpdgTestRilAdapter;Lcom/sec/epdg/EpdgTestRilAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/EpdgTestRilAdapter;
    .param p2, "x1"    # Lcom/sec/epdg/EpdgTestRilAdapter$1;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;-><init>(Lcom/sec/epdg/EpdgTestRilAdapter;)V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;
    .param p1, "x1"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->intfstatus:I

    return p1
.end method


# virtual methods
.method public bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    const/4 v3, 0x0

    .line 263
    :goto_0
    return-object v3

    .line 249
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 251
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 254
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 256
    .local v0, "b":I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    aget-byte v3, p1, v1

    and-int/lit8 v0, v3, 0xf

    .line 260
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 263
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getConnectionId()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->connectionId:I

    return v0
.end method

.method public getGatewayIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->gatewayIP:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayIPv6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->gatewayIPv6:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceConfigureCommand()Ljava/io/ByteArrayOutputStream;
    .locals 20

    .prologue
    .line 285
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 286
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 288
    .local v4, "dos":Ljava/io/DataOutputStream;
    const/4 v13, 0x0

    .line 289
    .local v13, "inetlocaladdr4":Ljava/net/InetAddress;
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v9, v0, [B

    fill-array-data v9, :array_0

    .line 290
    .local v9, "inetBytelocalAddr":[B
    const/4 v11, 0x0

    .line 291
    .local v11, "inetgatewayaddr4":Ljava/net/InetAddress;
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v7, v0, [B

    fill-array-data v7, :array_1

    .line 292
    .local v7, "inetBytegatewayAddr":[B
    const/4 v14, 0x0

    .line 293
    .local v14, "inetlocaladdr6":Ljava/net/InetAddress;
    const/16 v16, 0x10

    move/from16 v0, v16

    new-array v10, v0, [B

    fill-array-data v10, :array_2

    .line 294
    .local v10, "inetBytelocalAddr6":[B
    const/4 v12, 0x0

    .line 295
    .local v12, "inetgatewayaddr6":Ljava/net/InetAddress;
    const/16 v16, 0x10

    move/from16 v0, v16

    new-array v8, v0, [B

    fill-array-data v8, :array_3

    .line 297
    .local v8, "inetBytegatewayAddr6":[B
    const/4 v15, 0x4

    .line 299
    .local v15, "len":I
    add-int/lit8 v15, v15, 0x1

    .line 300
    add-int/lit8 v15, v15, 0x1

    .line 301
    add-int/lit8 v15, v15, 0x1

    .line 302
    const-string v16, "[TESTRILADAPTER]"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "got InterfaceConfigureCommand iptype"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->ipType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " intfstatus:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->intfstatus:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->intfstatus:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->ipType:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 309
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getLocalIP()Ljava/lang/String;

    move-result-object v16

    const-string v17, "\\/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "data":[Ljava/lang/String;
    const/16 v16, 0x0

    const-string v17, "[TESTRILADAPTER]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IPv4 data is ::"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v3, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 311
    const/16 v16, 0x0

    aget-object v16, v3, v16

    invoke-static/range {v16 .. v16}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 315
    .end local v3    # "data":[Ljava/lang/String;
    :goto_0
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    .line 316
    :cond_0
    array-length v0, v9

    move/from16 v16, v0

    add-int/lit8 v15, v16, 0x7

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getGatewayIP()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    .line 320
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getGatewayIP()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 324
    :goto_1
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    .line 326
    :cond_1
    array-length v0, v7

    move/from16 v16, v0

    add-int v15, v15, v16

    .line 396
    :cond_2
    :goto_2
    const/16 v16, 0xd

    :try_start_2
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 397
    const/16 v16, 0x11

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 398
    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 399
    const-string v16, "[TESTRILADAPTER]"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IPv4v6 data length is ::"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->ipType:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 401
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->connectionId:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->intfstatus:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->intfstatus:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->ipType:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 406
    invoke-virtual {v4, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 407
    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 425
    :cond_3
    :goto_3
    const-string v16, "[TESTRILADAPTER]"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Output ByteStream > ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-object v2

    .line 312
    :catch_0
    move-exception v5

    .line 313
    .local v5, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_0

    .line 321
    .end local v5    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v5

    .line 322
    .restart local v5    # "e":Ljava/net/UnknownHostException;
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_1

    .line 328
    .end local v5    # "e":Ljava/net/UnknownHostException;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->ipType:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 331
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getLocalIPv6()Ljava/lang/String;

    move-result-object v16

    const-string v17, "\\/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 332
    .restart local v3    # "data":[Ljava/lang/String;
    const/16 v16, 0x0

    const-string v17, "[TESTRILADAPTER]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IPv6 data is ::"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v3, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 333
    const/16 v16, 0x0

    aget-object v16, v3, v16

    invoke-static/range {v16 .. v16}, Ljava/net/Inet6Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v14

    .line 337
    .end local v3    # "data":[Ljava/lang/String;
    :goto_4
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    .line 338
    :cond_5
    array-length v0, v10

    move/from16 v16, v0

    add-int/lit8 v15, v16, 0x7

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getGatewayIPv6()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_6

    .line 342
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getGatewayIPv6()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/net/Inet6Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v12

    .line 346
    :goto_5
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    .line 348
    :cond_6
    array-length v0, v8

    move/from16 v16, v0

    add-int v15, v15, v16

    goto/16 :goto_2

    .line 334
    :catch_2
    move-exception v5

    .line 335
    .restart local v5    # "e":Ljava/net/UnknownHostException;
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_4

    .line 343
    .end local v5    # "e":Ljava/net/UnknownHostException;
    :catch_3
    move-exception v5

    .line 344
    .restart local v5    # "e":Ljava/net/UnknownHostException;
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_5

    .line 352
    .end local v5    # "e":Ljava/net/UnknownHostException;
    :cond_7
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getLocalIP()Ljava/lang/String;

    move-result-object v16

    const-string v17, "\\/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 353
    .restart local v3    # "data":[Ljava/lang/String;
    const/16 v16, 0x0

    const-string v17, "[TESTRILADAPTER]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IPv4 data is ::"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v3, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 354
    const/16 v16, 0x0

    aget-object v16, v3, v16

    invoke-static/range {v16 .. v16}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v13

    .line 358
    .end local v3    # "data":[Ljava/lang/String;
    :goto_6
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    .line 359
    :cond_8
    array-length v0, v9

    move/from16 v16, v0

    add-int/lit8 v15, v16, 0x7

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getGatewayIP()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_9

    .line 363
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getGatewayIP()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v11

    .line 367
    :goto_7
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    .line 369
    :cond_9
    array-length v0, v7

    move/from16 v16, v0

    add-int v15, v15, v16

    .line 372
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getLocalIPv6()Ljava/lang/String;

    move-result-object v16

    const-string v17, "\\/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 373
    .restart local v3    # "data":[Ljava/lang/String;
    const/16 v16, 0x0

    const-string v17, "[TESTRILADAPTER]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IPv6 data is ::"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v3, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 374
    const/16 v16, 0x0

    aget-object v16, v3, v16

    invoke-static/range {v16 .. v16}, Ljava/net/Inet6Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v14

    .line 378
    .end local v3    # "data":[Ljava/lang/String;
    :goto_8
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    .line 379
    :cond_a
    array-length v0, v10

    move/from16 v16, v0

    add-int v15, v15, v16

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getGatewayIPv6()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_b

    .line 383
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getGatewayIPv6()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/net/Inet6Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v12

    .line 387
    :goto_9
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    .line 389
    :cond_b
    array-length v0, v8

    move/from16 v16, v0

    add-int v15, v15, v16

    goto/16 :goto_2

    .line 355
    :catch_4
    move-exception v5

    .line 356
    .restart local v5    # "e":Ljava/net/UnknownHostException;
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_6

    .line 364
    .end local v5    # "e":Ljava/net/UnknownHostException;
    :catch_5
    move-exception v5

    .line 365
    .restart local v5    # "e":Ljava/net/UnknownHostException;
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_7

    .line 375
    .end local v5    # "e":Ljava/net/UnknownHostException;
    :catch_6
    move-exception v5

    .line 376
    .restart local v5    # "e":Ljava/net/UnknownHostException;
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_8

    .line 384
    .end local v5    # "e":Ljava/net/UnknownHostException;
    :catch_7
    move-exception v5

    .line 385
    .restart local v5    # "e":Ljava/net/UnknownHostException;
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_9

    .line 409
    .end local v5    # "e":Ljava/net/UnknownHostException;
    :cond_c
    :try_start_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->ipType:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 410
    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 411
    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_3

    .line 421
    :catch_8
    move-exception v6

    .line 422
    .local v6, "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 414
    .end local v6    # "ex":Ljava/io/IOException;
    :cond_d
    :try_start_a
    invoke-virtual {v4, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 415
    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 416
    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 417
    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_3

    .line 289
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 291
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 293
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 295
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public getInterfaceInitCommand()Ljava/io/ByteArrayOutputStream;
    .locals 5

    .prologue
    .line 267
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 268
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 270
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 273
    .local v3, "len":I
    const/16 v4, 0xd

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 274
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 275
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-object v0

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIpType()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->ipType:I

    return v0
.end method

.method public getLocalIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->localIP:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalIPv6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->localIPv6:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectionId(I)V
    .locals 0
    .param p1, "connid"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->connectionId:I

    .line 243
    return-void
.end method

.method public setGatewayIP(Ljava/lang/String;)V
    .locals 0
    .param p1, "gatewayIP"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->gatewayIP:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setGatewayIPv6(Ljava/lang/String;)V
    .locals 0
    .param p1, "gatewayIP"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->gatewayIPv6:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setIpType(I)V
    .locals 0
    .param p1, "ipType"    # I

    .prologue
    .line 234
    iput p1, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->ipType:I

    .line 235
    return-void
.end method

.method public setLocalIP(Ljava/lang/String;)V
    .locals 0
    .param p1, "localIP"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->localIP:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setLocalIPv6(Ljava/lang/String;)V
    .locals 0
    .param p1, "localIP"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->localIPv6:Ljava/lang/String;

    .line 219
    return-void
.end method
