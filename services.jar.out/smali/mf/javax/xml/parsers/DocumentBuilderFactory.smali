.class public abstract Lmf/javax/xml/parsers/DocumentBuilderFactory;
.super Ljava/lang/Object;
.source "DocumentBuilderFactory.java"


# static fields
.field private static final DEFAULT_PROPERTY_NAME:Ljava/lang/String; = "javax.xml.parsers.DocumentBuilderFactory"


# instance fields
.field private canonicalState:Z

.field private coalescing:Z

.field private expandEntityRef:Z

.field private ignoreComments:Z

.field private namespaceAware:Z

.field private validating:Z

.field private whitespace:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->validating:Z

    iput-boolean v1, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->namespaceAware:Z

    iput-boolean v1, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->whitespace:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->expandEntityRef:Z

    iput-boolean v1, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->ignoreComments:Z

    iput-boolean v1, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->coalescing:Z

    iput-boolean v1, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->canonicalState:Z

    return-void
.end method

.method public static newInstance()Lmf/javax/xml/parsers/DocumentBuilderFactory;
    .locals 4

    .prologue
    :try_start_0
    const-string v1, "javax.xml.parsers.DocumentBuilderFactory"

    const-string v2, "com.sun.org.apache.xerces.internal.jaxp.DocumentBuilderFactoryImpl"

    invoke-static {v1, v2}, Lmf/javax/xml/parsers/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catch Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;
    new-instance v1, Lmf/javax/xml/parsers/FactoryConfigurationError;

    invoke-virtual {v0}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmf/javax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/parsers/DocumentBuilderFactory;
    .locals 4
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lmf/javax/xml/parsers/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catch Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;
    new-instance v1, Lmf/javax/xml/parsers/FactoryConfigurationError;

    invoke-virtual {v0}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmf/javax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public getSchema()Lmf/javax/xml/validation/Schema;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This parser does not support specification \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCoalescing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->coalescing:Z

    return v0
.end method

.method public isExpandEntityReferences()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->expandEntityRef:Z

    return v0
.end method

.method public isIgnoringComments()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->ignoreComments:Z

    return v0
.end method

.method public isIgnoringElementContentWhitespace()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->whitespace:Z

    return v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->namespaceAware:Z

    return v0
.end method

.method public isValidating()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->validating:Z

    return v0
.end method

.method public isXIncludeAware()Z
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This parser does not support specification \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract newDocumentBuilder()Lmf/javax/xml/parsers/DocumentBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setCoalescing(Z)V
    .locals 0
    .param p1, "coalescing"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->coalescing:Z

    return-void
.end method

.method public setExpandEntityReferences(Z)V
    .locals 0
    .param p1, "expandEntityRef"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->expandEntityRef:Z

    return-void
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public setIgnoringComments(Z)V
    .locals 0
    .param p1, "ignoreComments"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->ignoreComments:Z

    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .locals 0
    .param p1, "whitespace"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->whitespace:Z

    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 0
    .param p1, "awareness"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->namespaceAware:Z

    return-void
.end method

.method public setSchema(Lmf/javax/xml/validation/Schema;)V
    .locals 3
    .param p1, "schema"    # Lmf/javax/xml/validation/Schema;

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This parser does not support specification \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValidating(Z)V
    .locals 0
    .param p1, "validating"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/javax/xml/parsers/DocumentBuilderFactory;->validating:Z

    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " setXIncludeAware is not supported on this JAXP implementation or earlier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
