.class Lorg/simpleframework/xml/stream/DocumentReader;
.super Ljava/lang/Object;
.source "DocumentReader.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/stream/DocumentReader$1;,
        Lorg/simpleframework/xml/stream/DocumentReader$End;,
        Lorg/simpleframework/xml/stream/DocumentReader$Text;,
        Lorg/simpleframework/xml/stream/DocumentReader$Start;,
        Lorg/simpleframework/xml/stream/DocumentReader$Entry;
    }
.end annotation


# static fields
.field private static final RESERVED:Ljava/lang/String; = "xml"


# instance fields
.field private peek:Lorg/simpleframework/xml/stream/EventNode;

.field private queue:Lorg/simpleframework/xml/stream/NodeExtractor;

.field private stack:Lorg/simpleframework/xml/stream/NodeStack;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/stream/NodeExtractor;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/NodeExtractor;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->queue:Lorg/simpleframework/xml/stream/NodeExtractor;

    new-instance v0, Lorg/simpleframework/xml/stream/NodeStack;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/NodeStack;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->stack:Lorg/simpleframework/xml/stream/NodeStack;

    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->stack:Lorg/simpleframework/xml/stream/NodeStack;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/NodeStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private attribute(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/DocumentReader$Entry;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    new-instance v0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/DocumentReader$Entry;-><init>(Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method private build(Lorg/simpleframework/xml/stream/DocumentReader$Start;)Lorg/simpleframework/xml/stream/DocumentReader$Start;
    .locals 6
    .param p1, "event"    # Lorg/simpleframework/xml/stream/DocumentReader$Start;

    .prologue
    invoke-virtual {p1}, Lorg/simpleframework/xml/stream/DocumentReader$Start;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .local v2, "list":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/stream/DocumentReader;->attribute(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/DocumentReader$Entry;

    move-result-object v4

    .local v4, "value":Lorg/simpleframework/xml/stream/Attribute;
    invoke-interface {v4}, Lorg/simpleframework/xml/stream/Attribute;->isReserved()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v4}, Lorg/simpleframework/xml/stream/DocumentReader$Start;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "value":Lorg/simpleframework/xml/stream/Attribute;
    :cond_1
    return-object p1
.end method

.method private convert(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/EventNode;
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    .local v0, "type":S
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/stream/DocumentReader;->stack:Lorg/simpleframework/xml/stream/NodeStack;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/stream/NodeStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/DocumentReader;->start(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/DocumentReader$Start;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/DocumentReader;->text(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/DocumentReader$Text;

    move-result-object v1

    goto :goto_0
.end method

.method private end()Lorg/simpleframework/xml/stream/DocumentReader$End;
    .locals 2

    .prologue
    new-instance v0, Lorg/simpleframework/xml/stream/DocumentReader$End;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/DocumentReader$End;-><init>(Lorg/simpleframework/xml/stream/DocumentReader$1;)V

    return-object v0
.end method

.method private read()Lorg/simpleframework/xml/stream/EventNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/stream/DocumentReader;->queue:Lorg/simpleframework/xml/stream/NodeExtractor;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/NodeExtractor;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .local v0, "node":Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/DocumentReader;->end()Lorg/simpleframework/xml/stream/DocumentReader$End;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/DocumentReader;->read(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v1

    goto :goto_0
.end method

.method private read(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/EventNode;
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "parent":Lorg/w3c/dom/Node;
    iget-object v2, p0, Lorg/simpleframework/xml/stream/DocumentReader;->stack:Lorg/simpleframework/xml/stream/NodeStack;

    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/NodeStack;->top()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .local v1, "top":Lorg/w3c/dom/Node;
    if-eq v0, v1, :cond_1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/stream/DocumentReader;->stack:Lorg/simpleframework/xml/stream/NodeStack;

    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/NodeStack;->pop()Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/DocumentReader;->end()Lorg/simpleframework/xml/stream/DocumentReader$End;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/simpleframework/xml/stream/DocumentReader;->queue:Lorg/simpleframework/xml/stream/NodeExtractor;

    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/NodeExtractor;->poll()Ljava/lang/Object;

    :cond_2
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/DocumentReader;->convert(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v2

    goto :goto_0
.end method

.method private start(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/DocumentReader$Start;
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    new-instance v0, Lorg/simpleframework/xml/stream/DocumentReader$Start;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/DocumentReader$Start;-><init>(Lorg/w3c/dom/Node;)V

    .local v0, "event":Lorg/simpleframework/xml/stream/DocumentReader$Start;
    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/DocumentReader$Start;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/DocumentReader;->build(Lorg/simpleframework/xml/stream/DocumentReader$Start;)Lorg/simpleframework/xml/stream/DocumentReader$Start;

    move-result-object v0

    .end local v0    # "event":Lorg/simpleframework/xml/stream/DocumentReader$Start;
    :cond_0
    return-object v0
.end method

.method private text(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/DocumentReader$Text;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    new-instance v0, Lorg/simpleframework/xml/stream/DocumentReader$Text;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/DocumentReader$Text;-><init>(Lorg/w3c/dom/Node;)V

    return-object v0
.end method


# virtual methods
.method public next()Lorg/simpleframework/xml/stream/EventNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    .local v0, "next":Lorg/simpleframework/xml/stream/EventNode;
    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/DocumentReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    goto :goto_0
.end method

.method public peek()Lorg/simpleframework/xml/stream/EventNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/DocumentReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    return-object v0
.end method
