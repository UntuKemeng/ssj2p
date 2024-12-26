.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;
.super Ljava/lang/Object;
.source "NTLMAuthenticator.java"

# interfaces
.implements Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;


# static fields
.field private static final HEADER_PROXY_AUTHENTICATE:Ljava/lang/String; = "Proxy-Authenticate:"

.field private static final PROXY_AUTHENTICATION_HEADER_PREFIX:Ljava/lang/String; = "Proxy-Authorization: NTLM "

.field private static final TAG:Ljava/lang/String; = "NTLMAuthenticator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCredentialKeyValue(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "userCred"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/net/Socket;
    .param p3, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getNTLMType3String(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "NTLMType3String":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 71
    const-string v2, "Proxy-Authorization: NTLM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
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
    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 54
    .local v1, "byteBuffer":I
    if-gez v1, :cond_0

    .line 55
    const-string v2, ""

    .line 62
    :goto_0
    return-object v2

    .line 57
    :cond_0
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 58
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 61
    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    if-gez v1, :cond_0

    .line 62
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getNTLMType3String(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "userCred"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/net/Socket;
    .param p3, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 81
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v1

    .line 84
    :cond_1
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->sendType1Message(Ljava/io/OutputStream;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;

    move-result-object v9

    .line 87
    .local v9, "type1Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->receiveType2Message(Ljava/net/Socket;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;

    move-result-object v10

    .line 89
    .local v10, "type2Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
    if-eqz v10, :cond_0

    .line 90
    const/4 v5, 0x0

    .line 91
    .local v5, "domainFromType2":Ljava/lang/String;
    const/4 v2, 0x0

    .line 92
    .local v2, "finalFlagsForType3":I
    const/high16 v1, 0x10000

    invoke-virtual {v10, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->isFlagSet(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {v10}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getTargetName()Ljava/lang/String;

    move-result-object v5

    .line 95
    :cond_2
    invoke-virtual {v9}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->getFlags()I

    move-result v1

    invoke-virtual {v10}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getFlags()I

    move-result v3

    and-int v2, v1, v3

    .line 97
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "credentials":[Ljava/lang/String;
    new-instance v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;

    invoke-virtual {v10}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getServerChallengeNonce()[B

    move-result-object v1

    array-length v3, v8

    if-lez v3, :cond_3

    const/4 v3, 0x0

    aget-object v3, v8, v3

    :goto_1
    array-length v4, v8

    if-lez v4, :cond_4

    aget-object v4, v8, v7

    :goto_2
    const-string/jumbo v6, "localhost"

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;-><init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    .local v0, "type3Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;
    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createMessageString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 98
    .end local v0    # "type3Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;
    :cond_3
    const-string v3, ""

    goto :goto_1

    :cond_4
    const-string v4, ""

    goto :goto_2
.end method

.method private getNTLMTypeMessageFromResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "type2Response":Ljava/lang/String;
    const/4 v0, 0x0

    .line 142
    .local v0, "line":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "Proxy-Authenticate:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->processResponseFromeServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 150
    return-object v1

    .line 147
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

    .line 154
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 155
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

    .line 158
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, v0

    if-le v2, v4, :cond_0

    aget-object v1, v0, v4

    goto :goto_0
.end method

.method private receiveType2Message(Ljava/net/Socket;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
    .locals 6
    .param p1, "destination"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v3, 0x0

    .line 110
    .local v3, "type2Response":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "response":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 112
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "lineTokens":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 114
    const/4 v4, 0x1

    aget-object v4, v0, v4

    const-string v5, "407"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getNTLMTypeMessageFromResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .end local v0    # "lineTokens":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 119
    .local v2, "type2Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
    if-eqz v3, :cond_1

    .line 120
    new-instance v2, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;

    .end local v2    # "type2Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
    invoke-direct {v2, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;-><init>(Ljava/lang/String;)V

    .line 122
    .restart local v2    # "type2Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
    :cond_1
    return-object v2
.end method

.method private sendType1Message(Ljava/io/OutputStream;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;

    invoke-direct {v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;-><init>()V

    .line 128
    .local v1, "type1Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;
    invoke-static {p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Proxy-Authorization: NTLM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->createMessageString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 134
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 135
    return-object v1
.end method


# virtual methods
.method public buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/net/Socket;
    .param p3, "requestLine"    # [Ljava/lang/String;

    .prologue
    .line 165
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getCredentialKeyValue(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "processedHeaderCred":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 174
    .end local v1    # "processedHeaderCred":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v3

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "NTLM"

    return-object v0
.end method

.method public isCredentialRequired()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I
    .locals 17
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .param p3, "requestLine"    # [Ljava/lang/String;

    .prologue
    .line 181
    const/4 v9, 0x0

    .line 182
    .local v9, "retStatus":Z
    invoke-virtual/range {p2 .. p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    .line 183
    .local v5, "inetSocketAddress":Ljava/net/InetSocketAddress;
    :try_start_0
    new-instance v3, Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v13

    invoke-direct {v3, v12, v13}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v3, "destination":Ljava/net/Socket;
    const/4 v13, 0x0

    .line 185
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 186
    .local v10, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, "processedHeaderCred":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 189
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    const-string v12, "\r\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v12, "NTLMAuthenticator"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "In verifyProxyAuthCredentials: processedHeaderCred = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v12, "NTLMAuthenticator"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "In verifyProxyAuthCredentials. Full header = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 200
    .local v6, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 202
    .local v7, "line":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 203
    const-string v12, "NTLMAuthenticator"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Line froms server "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    if-gtz v12, :cond_3

    .line 211
    :goto_0
    if-eqz v3, :cond_2

    if-eqz v13, :cond_6

    :try_start_2
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 214
    .end local v3    # "destination":Ljava/net/Socket;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "processedHeaderCred":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    if-eqz v9, :cond_9

    const/4 v12, 0x0

    :goto_2
    return v12

    .line 206
    .restart local v3    # "destination":Ljava/net/Socket;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "processedHeaderCred":Ljava/lang/String;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    const-string v12, "HTTP/1."

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 207
    const-string v12, " "

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    aget-object v12, v12, v14

    const-string v14, "407"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v9, 0x1

    .line 209
    :cond_4
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v12

    if-gtz v12, :cond_1

    goto :goto_0

    .line 207
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 211
    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .end local v3    # "destination":Ljava/net/Socket;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "processedHeaderCred":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 212
    .local v4, "e":Ljava/io/IOException;
    const-string v12, "NTLMAuthenticator"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 211
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "destination":Ljava/net/Socket;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "processedHeaderCred":Ljava/lang/String;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    :try_start_5
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 183
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "processedHeaderCred":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v12

    :try_start_6
    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 211
    :catchall_0
    move-exception v13

    move-object/from16 v16, v13

    move-object v13, v12

    move-object/from16 v12, v16

    :goto_4
    if-eqz v3, :cond_7

    if-eqz v13, :cond_8

    :try_start_7
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_7
    :goto_5
    :try_start_8
    throw v12

    :catch_3
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    .line 214
    .end local v3    # "destination":Ljava/net/Socket;
    :cond_9
    const/4 v12, -0x1

    goto :goto_2

    .line 211
    .restart local v3    # "destination":Ljava/net/Socket;
    :catchall_1
    move-exception v12

    goto :goto_4
.end method
