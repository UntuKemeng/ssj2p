.class public Lmf/javax/xml/parsers/FactoryConfigurationError;
.super Ljava/lang/Error;
.source "FactoryConfigurationError.java"


# static fields
.field private static final serialVersionUID:J = -0xb7a7af6e9668ebbL


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/javax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lmf/javax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lmf/javax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/javax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/javax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/javax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lmf/javax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/javax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
