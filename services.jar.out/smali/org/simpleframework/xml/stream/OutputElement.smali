.class Lorg/simpleframework/xml/stream/OutputElement;
.super Ljava/lang/Object;
.source "OutputElement.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/OutputNode;


# instance fields
.field private comment:Ljava/lang/String;

.field private mode:Lorg/simpleframework/xml/stream/Mode;

.field private name:Ljava/lang/String;

.field private parent:Lorg/simpleframework/xml/stream/OutputNode;

.field private reference:Ljava/lang/String;

.field private scope:Lorg/simpleframework/xml/stream/NamespaceMap;

.field private table:Lorg/simpleframework/xml/stream/OutputNodeMap;

.field private value:Ljava/lang/String;

.field private writer:Lorg/simpleframework/xml/stream/NodeWriter;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/stream/NodeWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "writer"    # Lorg/simpleframework/xml/stream/NodeWriter;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/stream/PrefixResolver;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;-><init>(Lorg/simpleframework/xml/stream/OutputNode;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    new-instance v0, Lorg/simpleframework/xml/stream/OutputNodeMap;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/OutputNodeMap;-><init>(Lorg/simpleframework/xml/stream/OutputNode;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->INHERIT:Lorg/simpleframework/xml/stream/Mode;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->mode:Lorg/simpleframework/xml/stream/Mode;

    iput-object p2, p0, Lorg/simpleframework/xml/stream/OutputElement;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputElement;->parent:Lorg/simpleframework/xml/stream/OutputNode;

    iput-object p3, p0, Lorg/simpleframework/xml/stream/OutputElement;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/stream/NodeWriter;->commit(Lorg/simpleframework/xml/stream/OutputNode;)V

    return-void
.end method

.method public bridge synthetic getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputElement;->getAttributes()Lorg/simpleframework/xml/stream/OutputNodeMap;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lorg/simpleframework/xml/stream/OutputNodeMap;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    invoke-virtual {v0, p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Lorg/simpleframework/xml/stream/Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->mode:Lorg/simpleframework/xml/stream/Mode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/simpleframework/xml/stream/Node;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputElement;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->parent:Lorg/simpleframework/xml/stream/OutputNode;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/OutputElement;->getPrefix(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Z)Ljava/lang/String;
    .locals 3
    .param p1, "inherit"    # Z

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputElement;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    iget-object v2, p0, Lorg/simpleframework/xml/stream/OutputElement;->reference:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/simpleframework/xml/stream/NamespaceMap;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "prefix":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputElement;->parent:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/OutputNode;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/stream/NodeWriter;->isCommitted(Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v0

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/stream/NodeWriter;->isRoot(Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/stream/NodeWriter;->remove(Lorg/simpleframework/xml/stream/OutputNode;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/stream/OutputNodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputElement;->comment:Ljava/lang/String;

    return-void
.end method

.method public setData(Z)V
    .locals 1
    .param p1, "data"    # Z

    .prologue
    if-eqz p1, :cond_0

    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->DATA:Lorg/simpleframework/xml/stream/Mode;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->mode:Lorg/simpleframework/xml/stream/Mode;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->ESCAPE:Lorg/simpleframework/xml/stream/Mode;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->mode:Lorg/simpleframework/xml/stream/Mode;

    goto :goto_0
.end method

.method public setMode(Lorg/simpleframework/xml/stream/Mode;)V
    .locals 0
    .param p1, "mode"    # Lorg/simpleframework/xml/stream/Mode;

    .prologue
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputElement;->mode:Lorg/simpleframework/xml/stream/Mode;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputElement;->name:Ljava/lang/String;

    return-void
.end method

.method public setReference(Ljava/lang/String;)V
    .locals 0
    .param p1, "reference"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputElement;->reference:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputElement;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v0, "element %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/stream/OutputElement;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
