.class public Lmf/org/apache/xerces/dom/DeferredEntityImpl;
.super Lmf/org/apache/xerces/dom/EntityImpl;
.source "DeferredEntityImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x420f8ee1ad39e3c6L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 2
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    .param p2, "nodeIndex"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/EntityImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->needsSyncData(Z)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    return v0
.end method

.method protected synchronizeChildren()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->needsSyncChildren(Z)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->isReadOnly(Z)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .local v0, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V

    invoke-virtual {p0, v2, v2}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->setReadOnly(ZZ)V

    return-void
.end method

.method protected synchronizeData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->needsSyncData(Z)V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v2, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .local v2, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v3, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->name:Ljava/lang/String;

    iget v3, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->publicId:Ljava/lang/String;

    iget v3, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->systemId:Ljava/lang/String;

    iget v3, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v0

    .local v0, "extraDataIndex":I
    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->notationName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->version:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    .local v1, "extraIndex2":I
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->baseURI:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->inputEncoding:Ljava/lang/String;

    return-void
.end method
