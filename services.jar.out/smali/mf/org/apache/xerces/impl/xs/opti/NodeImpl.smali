.class public Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;
.super Lmf/org/apache/xerces/impl/xs/opti/DefaultNode;
.source "NodeImpl.java"


# instance fields
.field hidden:Z

.field localpart:Ljava/lang/String;

.field nodeType:S

.field prefix:Ljava/lang/String;

.field rawname:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/DefaultNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "localpart"    # Ljava/lang/String;
    .param p3, "rawname"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "nodeType"    # S

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/DefaultNode;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->prefix:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->localpart:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->rawname:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->uri:Ljava/lang/String;

    iput-short p5, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->nodeType:S

    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->localpart:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->rawname:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->nodeType:S

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->hidden:Z

    return v0
.end method

.method public setReadOnly(ZZ)V
    .locals 0
    .param p1, "hide"    # Z
    .param p2, "deep"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->hidden:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
