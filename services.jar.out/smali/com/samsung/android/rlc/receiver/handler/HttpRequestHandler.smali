.class public Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;
.super Ljava/lang/Object;
.source "HttpRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    }
.end annotation


# static fields
.field protected static final ALREADY_SUCCESS:I = 0x1

.field protected static final DEVICE_TYPE:I = 0x1

.field public static final ENCODING_TYPE:Ljava/lang/String; = "UTF8"

.field public static final RETRY_BODY:Ljava/lang/String; = "body"

.field public static final RETRY_PUSH_TYPE:Ljava/lang/String; = "pushType"

.field private static final TAG:Ljava/lang/String;

.field private static existProxy:Z

.field private static manager:Lorg/apache/http/conn/ClientConnectionManager;

.field private static params:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .prologue
    .line 69
    const-class v13, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    .line 79
    const/4 v13, 0x0

    sput-object v13, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->manager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 80
    const/4 v13, 0x0

    sput-object v13, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->params:Lorg/apache/http/params/HttpParams;

    .line 86
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v9

    .line 87
    .local v9, "keyStoreType":Ljava/lang/String;
    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    .line 88
    .local v8, "keyStore":Ljava/security/KeyStore;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 89
    const-string v13, "AndroidCAStore"

    invoke-static {v13}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    .line 90
    .local v10, "ks":Ljava/security/KeyStore;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 91
    invoke-virtual {v10}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v5

    .line 93
    .local v5, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 94
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 96
    .local v4, "alias":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 97
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    const-string v13, "system:"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 98
    invoke-virtual {v8, v4, v6}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v8    # "keyStore":Ljava/security/KeyStore;
    .end local v10    # "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v7

    .line 121
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 102
    .restart local v5    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v8    # "keyStore":Ljava/security/KeyStore;
    .restart local v10    # "ks":Ljava/security/KeyStore;
    :cond_1
    :try_start_1
    new-instance v12, Lcom/samsung/android/rlc/util/RMMSSLSocketFactory;

    invoke-direct {v12, v8}, Lcom/samsung/android/rlc/util/RMMSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 105
    .local v12, "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    new-instance v11, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v11}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 106
    .local v11, "schreg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v13, Lorg/apache/http/conn/scheme/Scheme;

    const-string v14, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v15

    const/16 v16, 0x50

    invoke-direct/range {v13 .. v16}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v11, v13}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 107
    new-instance v13, Lorg/apache/http/conn/scheme/Scheme;

    const-string v14, "https"

    const/16 v15, 0x1bb

    invoke-direct {v13, v14, v12, v15}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v11, v13}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 110
    const-wide/16 v0, 0x2710

    .line 111
    .local v0, "CONN_MGR_TIMEOUT":J
    const/16 v2, 0x7530

    .line 112
    .local v2, "CONN_TIMEOUT":I
    const/16 v3, 0x7530

    .line 114
    .local v3, "SO_TIMEOUT":I
    new-instance v13, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v13}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v13, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->params:Lorg/apache/http/params/HttpParams;

    .line 115
    sget-object v13, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->params:Lorg/apache/http/params/HttpParams;

    const-wide/16 v14, 0x2710

    invoke-static {v13, v14, v15}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 116
    sget-object v13, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->params:Lorg/apache/http/params/HttpParams;

    const/16 v14, 0x7530

    invoke-static {v13, v14}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 117
    sget-object v13, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->params:Lorg/apache/http/params/HttpParams;

    const/16 v14, 0x7530

    invoke-static {v13, v14}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 118
    new-instance v13, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    new-instance v14, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v14}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-direct {v13, v14, v11}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v13, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->manager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPushTypeFromBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 128
    const/4 v0, 0x0

    .line 131
    .local v0, "pushType":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const-string v1, "SPP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v2, v1, :cond_1

    .line 135
    const-string v0, "SPP"

    .line 143
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :cond_1
    const-string v1, "GCM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 139
    const-string v0, "GCM"

    goto :goto_0
.end method

.method private static getResponseMsg(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 282
    .local v3, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 285
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF8"

    invoke-direct {v5, p0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 288
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 292
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 293
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    :try_start_2
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnsupportedEncodingException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    if-eqz v0, :cond_0

    .line 301
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 303
    :cond_0
    if-eqz p0, :cond_1

    .line 304
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 313
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 300
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v1, :cond_3

    .line 301
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 303
    :cond_3
    if-eqz p0, :cond_4

    .line 304
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v0, v1

    .line 309
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 307
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 308
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 310
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 307
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v2

    .line 308
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 295
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 296
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 300
    if-eqz v0, :cond_5

    .line 301
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 303
    :cond_5
    if-eqz p0, :cond_1

    .line 304
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 307
    :catch_4
    move-exception v2

    .line 308
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 299
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 300
    :goto_4
    if-eqz v0, :cond_6

    .line 301
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 303
    :cond_6
    if-eqz p0, :cond_7

    .line 304
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 309
    :cond_7
    :goto_5
    throw v5

    .line 307
    :catch_5
    move-exception v2

    .line 308
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 299
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 295
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 292
    :catch_7
    move-exception v2

    goto/16 :goto_1
.end method

.method public static httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "body"    # Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 195
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->returnMGResult(Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v0

    return-object v0
.end method

.method public static httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "body"    # Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 190
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Request : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->returnDMResult(Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v0

    return-object v0
.end method

.method public static httpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v7, 0x0

    .line 241
    .local v7, "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    const/4 v9, 0x0

    sput-boolean v9, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->existProxy:Z

    .line 242
    const/4 v5, -0x1

    .line 244
    .local v5, "responseCode":I
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->manager:Lorg/apache/http/conn/ClientConnectionManager;

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v9, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 246
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 247
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v9, "Content-Type"

    const-string v10, "text/xml"

    invoke-virtual {v2, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 250
    .local v3, "requestEntity":Lorg/apache/http/entity/StringEntity;
    const-string v9, "text/xml"

    invoke-virtual {v3, v9}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 251
    const-string v9, "UTF8"

    invoke-virtual {v3, v9}, Lorg/apache/http/entity/StringEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 253
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 256
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 257
    const/16 v9, 0xc8

    if-eq v5, v9, :cond_0

    .line 258
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response Code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 261
    .local v6, "responseEntity":Lorg/apache/http/HttpEntity;
    new-instance v8, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-direct {v8}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;-><init>()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 262
    .end local v7    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .local v8, "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    :try_start_1
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->getResponseMsg(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->setResponse(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v8, v5}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->setHttpStatusCode(I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v7, v8

    .line 275
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "requestEntity":Lorg/apache/http/entity/StringEntity;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v8    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v7    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    :goto_0
    return-object v7

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[requestHttp] UnsupportedEncodingException- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 270
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[requestHttp] ClientProtocolException- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 273
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestHttp] IOException- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "requestEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    :catch_3
    move-exception v1

    move-object v7, v8

    .end local v8    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v7    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    goto :goto_3

    .line 269
    .end local v7    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v8    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    :catch_4
    move-exception v1

    move-object v7, v8

    .end local v8    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v7    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    goto :goto_2

    .line 266
    .end local v7    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v8    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    :catch_5
    move-exception v1

    move-object v7, v8

    .end local v8    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v7    # "result":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    goto :goto_1
.end method

.method public static returnDMResult(Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .locals 7
    .param p0, "result"    # Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    .prologue
    .line 200
    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 202
    const/4 v3, 0x0

    .line 203
    .local v3, "vo":Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    new-instance v1, Lcom/samsung/android/rlc/util/XMLUtil;

    invoke-direct {v1}, Lcom/samsung/android/rlc/util/XMLUtil;-><init>()V

    .line 204
    .local v1, "util":Lcom/samsung/android/rlc/util/XMLUtil;, "Lcom/samsung/android/rlc/util/XMLUtil<Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;>;"
    invoke-virtual {p0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponse()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/rlc/util/XMLUtil;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "vo":Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    check-cast v3, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    .line 205
    .restart local v3    # "vo":Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    invoke-virtual {p0, v3}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->setResponseBean(Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;)V

    .line 225
    .end local v1    # "util":Lcom/samsung/android/rlc/util/XMLUtil;, "Lcom/samsung/android/rlc/util/XMLUtil<Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;>;"
    .end local v3    # "vo":Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    :cond_0
    :goto_0
    return-object p0

    .line 208
    :cond_1
    const/4 v0, 0x0

    .line 209
    .local v0, "error":Lcom/samsung/android/rlc/vo/ErrorResponseVO;
    new-instance v2, Lcom/samsung/android/rlc/util/XMLUtil;

    invoke-direct {v2}, Lcom/samsung/android/rlc/util/XMLUtil;-><init>()V

    .line 210
    .local v2, "util":Lcom/samsung/android/rlc/util/XMLUtil;, "Lcom/samsung/android/rlc/util/XMLUtil<Lcom/samsung/android/rlc/vo/ErrorResponseVO;>;"
    invoke-virtual {p0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponse()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/samsung/android/rlc/vo/ErrorResponseVO;

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/rlc/util/XMLUtil;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "error":Lcom/samsung/android/rlc/vo/ErrorResponseVO;
    check-cast v0, Lcom/samsung/android/rlc/vo/ErrorResponseVO;

    .line 211
    .restart local v0    # "error":Lcom/samsung/android/rlc/vo/ErrorResponseVO;
    if-eqz v0, :cond_0

    .line 212
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "returnDMResult] - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/ErrorResponseVO;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v3, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    invoke-direct {v3}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;-><init>()V

    .line 214
    .restart local v3    # "vo":Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/ErrorResponseVO;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->setErrorCode(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/ErrorResponseVO;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->setErrorDescription(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, v3}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->setResponseBean(Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;)V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v4

    const/16 v5, 0x193

    if-ne v4, v5, :cond_0

    .line 218
    const-string v4, "RDM-4030"

    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/ErrorResponseVO;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 219
    const/16 v4, 0x191

    invoke-virtual {p0, v4}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->setHttpStatusCode(I)V

    goto :goto_0
.end method

.method public static returnMGResult(Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .locals 4
    .param p0, "result"    # Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    .prologue
    .line 229
    if-eqz p0, :cond_0

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "vo":Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;
    new-instance v0, Lcom/samsung/android/rlc/util/XMLUtil;

    invoke-direct {v0}, Lcom/samsung/android/rlc/util/XMLUtil;-><init>()V

    .line 232
    .local v0, "util":Lcom/samsung/android/rlc/util/XMLUtil;, "Lcom/samsung/android/rlc/util/XMLUtil<Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;>;"
    invoke-virtual {p0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponse()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/rlc/util/XMLUtil;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "vo":Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;
    check-cast v1, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;

    .line 233
    .restart local v1    # "vo":Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;
    invoke-virtual {p0, v1}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->setResponseDeliveryBean(Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;)V

    .line 235
    .end local v0    # "util":Lcom/samsung/android/rlc/util/XMLUtil;, "Lcom/samsung/android/rlc/util/XMLUtil<Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;>;"
    .end local v1    # "vo":Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;
    :cond_0
    return-object p0
.end method

.method public static declared-synchronized saveServerUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dm"    # Ljava/lang/String;
    .param p2, "mg"    # Ljava/lang/String;

    .prologue
    .line 147
    const-class v1, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DMServer"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MGServer"

    invoke-static {p0, v0, p2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_1
    monitor-exit v1

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
