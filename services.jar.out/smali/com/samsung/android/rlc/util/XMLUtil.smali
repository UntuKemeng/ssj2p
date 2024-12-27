.class public Lcom/samsung/android/rlc/util/XMLUtil;
.super Ljava/lang/Object;
.source "XMLUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/rlc/util/XMLUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/XMLUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .local p0, "this":Lcom/samsung/android/rlc/util/XMLUtil;, "Lcom/samsung/android/rlc/util/XMLUtil<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "xmlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/rlc/util/XMLUtil;, "Lcom/samsung/android/rlc/util/XMLUtil<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v3, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v3}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    .local v3, "serializer":Lorg/simpleframework/xml/Serializer;
    const/4 v2, 0x0

    .local v2, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v1, "input":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-interface {v3, p2, v1, v4}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/rlc/util/XMLUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/rlc/util/XMLUtil;, "Lcom/samsung/android/rlc/util/XMLUtil<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v2, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v2}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    .local v2, "serializer":Lorg/simpleframework/xml/Serializer;
    const/4 v3, 0x0

    .local v3, "serializeredString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    if-eqz v1, :cond_0

    invoke-interface {v2, p1, v1}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/OutputStream;)V

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "serializeredString":Ljava/lang/String;
    .local v4, "serializeredString":Ljava/lang/String;
    :try_start_1
    sget-object v5, Lcom/samsung/android/rlc/util/XMLUtil;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .end local v4    # "serializeredString":Ljava/lang/String;
    .restart local v3    # "serializeredString":Ljava/lang/String;
    :cond_0
    move-object v4, v3

    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "serializeredString":Ljava/lang/String;
    .restart local v4    # "serializeredString":Ljava/lang/String;
    :goto_0
    return-object v4

    .end local v4    # "serializeredString":Ljava/lang/String;
    .restart local v3    # "serializeredString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v3

    .end local v3    # "serializeredString":Ljava/lang/String;
    .restart local v4    # "serializeredString":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "output":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "serializeredString":Ljava/lang/String;
    .restart local v3    # "serializeredString":Ljava/lang/String;
    goto :goto_1
.end method
