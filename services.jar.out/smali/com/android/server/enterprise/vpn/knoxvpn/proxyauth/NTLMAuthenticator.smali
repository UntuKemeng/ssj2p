.class public Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;
.super Ljava/lang/Object;
.source "NTLMAuthenticator.java"

# interfaces
.implements Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_CLIENT_FLAGS:I = 0x88207

.field private static final PROXY_AUTHENTICATION_HEADER_PREFIX:Ljava/lang/String; = "Proxy-Authorization: NTLM "

.field private static final TAG:Ljava/lang/String; = "NTLMAuthenticator"

.field private static lmCompatibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "lmCompatibility"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sput p1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->lmCompatibility:I

    .line 23
    return-void
.end method

.method private buildRequestString([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .param p1, "requestLine"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "HEAD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    array-length v1, p1

    if-le v1, v2, :cond_0

    aget-object v1, p1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    array-length v1, p1

    if-le v1, v2, :cond_1

    aget-object v1, p1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "Proxy-Connection: keep-alive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    return-object v0

    .line 124
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    goto :goto_0

    .line 126
    :cond_1
    aget-object v1, p1, v3

    goto :goto_1
.end method

.method private getCredentialKeyValue(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "userCred"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "destination"    # Ljava/net/Socket;
    .param p4, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getNTLMType3String(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "NTLMType3String":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 45
    const-string v2, "Proxy-Authorization: NTLM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    .end local v0    # "NTLMType3String":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 28
    .local v1, "byteBuffer":I
    if-gez v1, :cond_0

    .line 29
    const-string v2, ""

    .line 36
    :goto_0
    return-object v2

    .line 31
    :cond_0
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 32
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 35
    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    if-gez v1, :cond_0

    .line 36
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getNTLMType3String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "type2String"    # Ljava/lang/String;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v12, 0x0

    .local v12, "type3ReturnValue":Ljava/lang/String;
    const/4 v5, 0x0

    .line 187
    .local v5, "domainFromType2":Ljava/lang/String;
    const/4 v2, 0x0

    .line 188
    .local v2, "finalFlagsForType3":I
    const/4 v6, 0x0

    .line 190
    .local v6, "targetInfoFromServer":[B
    :try_start_0
    new-instance v11, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;

    invoke-direct {v11, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;-><init>(Ljava/lang/String;)V

    .line 191
    .local v11, "type2Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;
    const/high16 v1, 0x10000

    invoke-virtual {v11, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->isFlagSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getTargetName()Ljava/lang/String;

    move-result-object v5

    .line 194
    :cond_0
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getTargetData()[B

    move-result-object v6

    .line 195
    const v1, 0x88207

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getFlags()I

    move-result v3

    and-int v2, v1, v3

    .line 196
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getServerChallengeNonce()[B

    move-result-object v1

    const-string/jumbo v7, "localhost"

    sget v8, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->lmCompatibility:I

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;-><init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;I)V

    .line 198
    .local v0, "type3Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createMessageString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 204
    .end local v0    # "type3Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;
    .end local v11    # "type2Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;
    :goto_0
    return-object v12

    .line 199
    :catch_0
    move-exception v10

    .line 200
    .local v10, "ex":Ljava/io/IOException;
    const-string v1, "NTLMAuthenticator"

    const-string v3, "IOException in getNTLMType3String"

    invoke-static {v1, v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 201
    .end local v10    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 202
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "NTLMAuthenticator"

    const-string v3, "Exception in getNTLMType3String"

    invoke-static {v1, v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getNTLMType3String(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "userCred"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "destination"    # Ljava/net/Socket;
    .param p4, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 56
    :cond_0
    const/4 v3, 0x0

    .line 96
    :goto_0
    return-object v3

    .line 57
    :cond_1
    const/4 v14, 0x0

    .line 58
    .local v14, "out":Ljava/io/OutputStream;
    invoke-virtual/range {p3 .. p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 59
    new-instance v17, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;-><init>()V

    .line 60
    .local v17, "type1Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->buildRequestString([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 61
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Proxy-Authorization: NTLM "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->createMessageString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v3, "\r\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/OutputStream;->write([B)V

    .line 66
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 68
    const/16 v19, 0x0

    .line 69
    .local v19, "type2Response":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    .line 70
    .local v15, "response":Ljava/lang/String;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 71
    const-string v3, " "

    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 72
    .local v13, "lineTokens":[Ljava/lang/String;
    if-eqz v13, :cond_2

    array-length v3, v13

    if-lez v3, :cond_2

    .line 73
    const/4 v3, 0x1

    aget-object v3, v13, v3

    const-string v5, "407"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-virtual/range {p3 .. p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getNTLMTypeMessageFromResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    .line 78
    .end local v13    # "lineTokens":[Ljava/lang/String;
    :cond_2
    if-eqz v19, :cond_7

    .line 79
    const/4 v7, 0x0

    .line 80
    .local v7, "domainFromType2":Ljava/lang/String;
    const/4 v4, 0x0

    .line 81
    .local v4, "finalFlagsForType3":I
    const/4 v8, 0x0

    .line 82
    .local v8, "targetInfoFromServer":[B
    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;

    invoke-direct/range {v18 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;-><init>(Ljava/lang/String;)V

    .line 83
    .local v18, "type2Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;
    const/high16 v3, 0x10000

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->isFlagSet(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getTargetName()Ljava/lang/String;

    move-result-object v7

    .line 85
    :cond_3
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getTargetData()[B

    move-result-object v8

    .line 87
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->getFlags()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getFlags()I

    move-result v5

    and-int v4, v3, v5

    .line 88
    new-instance v12, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>([B)V

    .line 90
    .local v12, "decodedCredentials":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 91
    .local v11, "credentials":[Ljava/lang/String;
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getServerChallengeNonce()[B

    move-result-object v3

    array-length v5, v11

    if-lez v5, :cond_5

    const/4 v5, 0x0

    aget-object v5, v11, v5

    :goto_1
    array-length v6, v11

    if-lez v6, :cond_6

    const/4 v6, 0x1

    aget-object v6, v11, v6

    :goto_2
    const-string/jumbo v9, "localhost"

    sget v10, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->lmCompatibility:I

    invoke-direct/range {v2 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;-><init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;I)V

    .line 93
    .local v2, "type3Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "NTLMAuthenticator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNTLMType3String Returning type 3 string = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createMessageString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createMessageString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 91
    .end local v2    # "type3Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;
    :cond_5
    const-string v5, ""

    goto :goto_1

    :cond_6
    const-string v6, ""

    goto :goto_2

    .line 96
    .end local v4    # "finalFlagsForType3":I
    .end local v7    # "domainFromType2":Ljava/lang/String;
    .end local v8    # "targetInfoFromServer":[B
    .end local v11    # "credentials":[Ljava/lang/String;
    .end local v12    # "decodedCredentials":Ljava/lang/String;
    .end local v18    # "type2Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private getNTLMTypeMessageFromResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "type2Response":Ljava/lang/String;
    const/4 v0, 0x0

    .line 103
    .local v0, "line":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "Proxy-Authenticate:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->processResponseFromeServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 110
    return-object v1

    .line 108
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0
.end method

.method private processResponseFromeServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 114
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "array":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "Proxy-Authenticate:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const-string v3, "NTLM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, v0

    if-le v2, v4, :cond_0

    aget-object v1, v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getAuthHeaderKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const-string v0, "Proxy-Authorization: NTLM "

    return-object v0
.end method

.method public getCredentialsAppendedHeader(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "userCred"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "destination"    # Ljava/net/Socket;
    .param p4, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Z
    .locals 9
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "destination"    # Ljava/net/Socket;
    .param p4, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    const-string v6, "NTLMAuthenticator"

    const-string v7, ": In verifyProxyAuthCredentials in NTLM"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 139
    .local v2, "outputStream":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 140
    .local v0, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 141
    .local v4, "retStatus":Z
    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 149
    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getCredentialKeyValue(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "processedHeaderCred":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": In verifyProxyAuthCredentials: processedHeaderCred = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->buildRequestString([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 153
    if-eqz v3, :cond_1

    .line 154
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_1
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": In verifyProxyAuthCredentials. Full header = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 159
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 160
    const/4 v1, 0x0

    .line 162
    .local v1, "line":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 163
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Line from server = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_6

    .line 170
    :goto_0
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": In verifyProxyAuthCredentials retStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_5
    return v4

    .line 165
    :cond_6
    const-string v6, "HTTP/1."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 166
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "407"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 167
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_7

    const-string v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In verifyProxyAuthCredentials: retStatus= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_3

    goto :goto_0
.end method
