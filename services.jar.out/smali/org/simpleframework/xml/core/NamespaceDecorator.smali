.class Lorg/simpleframework/xml/core/NamespaceDecorator;
.super Ljava/lang/Object;
.source "NamespaceDecorator.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Decorator;


# instance fields
.field private primary:Lorg/simpleframework/xml/Namespace;

.field private scope:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/Namespace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/NamespaceDecorator;->scope:Ljava/util/List;

    return-void
.end method

.method private namespace(Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 2
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/core/NamespaceDecorator;->primary:Lorg/simpleframework/xml/Namespace;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/NamespaceDecorator;->primary:Lorg/simpleframework/xml/Namespace;

    invoke-interface {v1}, Lorg/simpleframework/xml/Namespace;->reference()Ljava/lang/String;

    move-result-object v0

    .local v0, "reference":Ljava/lang/String;
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->setReference(Ljava/lang/String;)V

    .end local v0    # "reference":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private scope(Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 6
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;

    .prologue
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v1

    .local v1, "map":Lorg/simpleframework/xml/stream/NamespaceMap;
    iget-object v5, p0, Lorg/simpleframework/xml/core/NamespaceDecorator;->scope:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/Namespace;

    .local v2, "next":Lorg/simpleframework/xml/Namespace;
    invoke-interface {v2}, Lorg/simpleframework/xml/Namespace;->reference()Ljava/lang/String;

    move-result-object v4

    .local v4, "reference":Ljava/lang/String;
    invoke-interface {v2}, Lorg/simpleframework/xml/Namespace;->prefix()Ljava/lang/String;

    move-result-object v3

    .local v3, "prefix":Ljava/lang/String;
    invoke-interface {v1, v4, v3}, Lorg/simpleframework/xml/stream/NamespaceMap;->setReference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .end local v2    # "next":Lorg/simpleframework/xml/Namespace;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "reference":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/simpleframework/xml/Namespace;)V
    .locals 1
    .param p1, "namespace"    # Lorg/simpleframework/xml/Namespace;

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/NamespaceDecorator;->scope:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public decorate(Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 1
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Decorator;)V

    return-void
.end method

.method public decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Decorator;)V
    .locals 0
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "decorator"    # Lorg/simpleframework/xml/core/Decorator;

    .prologue
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lorg/simpleframework/xml/core/Decorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/NamespaceDecorator;->scope(Lorg/simpleframework/xml/stream/OutputNode;)V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/NamespaceDecorator;->namespace(Lorg/simpleframework/xml/stream/OutputNode;)V

    return-void
.end method

.method public set(Lorg/simpleframework/xml/Namespace;)V
    .locals 0
    .param p1, "namespace"    # Lorg/simpleframework/xml/Namespace;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/NamespaceDecorator;->add(Lorg/simpleframework/xml/Namespace;)V

    :cond_0
    iput-object p1, p0, Lorg/simpleframework/xml/core/NamespaceDecorator;->primary:Lorg/simpleframework/xml/Namespace;

    return-void
.end method
