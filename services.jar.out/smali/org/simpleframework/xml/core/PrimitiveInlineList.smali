.class Lorg/simpleframework/xml/core/PrimitiveInlineList;
.super Ljava/lang/Object;
.source "PrimitiveInlineList.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Repeater;


# instance fields
.field private final entry:Lorg/simpleframework/xml/strategy/Type;

.field private final factory:Lorg/simpleframework/xml/core/CollectionFactory;

.field private final parent:Ljava/lang/String;

.field private final root:Lorg/simpleframework/xml/core/Primitive;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "entry"    # Lorg/simpleframework/xml/strategy/Type;
    .param p4, "parent"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/CollectionFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->root:Lorg/simpleframework/xml/core/Primitive;

    iput-object p4, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->parent:Ljava/lang/String;

    iput-object p3, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method

.method private isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-virtual {v0, v1, p2, p1}, Lorg/simpleframework/xml/core/CollectionFactory;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v0

    return v0
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "list"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .local v0, "from":Lorg/simpleframework/xml/stream/InputNode;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v3, p1}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0, v2}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_0

    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    return-object p2
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/stream/Mode;)V
    .locals 5
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "mode"    # Lorg/simpleframework/xml/stream/Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    move-object v3, p2

    check-cast v3, Ljava/util/Collection;

    .local v3, "list":Ljava/util/Collection;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "item":Ljava/lang/Object;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->parent:Ljava/lang/String;

    invoke-interface {p1, v4}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .local v0, "child":Lorg/simpleframework/xml/stream/OutputNode;
    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/PrimitiveInlineList;->isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, p3}, Lorg/simpleframework/xml/stream/OutputNode;->setMode(Lorg/simpleframework/xml/stream/Mode;)V

    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v4, v0, v2}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "child":Lorg/simpleframework/xml/stream/OutputNode;
    .end local v2    # "item":Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 3
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance()Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    .local v0, "list":Ljava/util/Collection;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    .local v0, "list":Ljava/util/Collection;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/PrimitiveInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 4
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .local v0, "from":Lorg/simpleframework/xml/stream/InputNode;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "name":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/simpleframework/xml/core/PrimitiveInlineList;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v3, p1}, Lorg/simpleframework/xml/core/Primitive;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v2

    .local v2, "valid":Z
    if-nez v2, :cond_0

    const/4 v3, 0x0

    .end local v2    # "valid":Z
    :goto_1
    return v3

    .restart local v2    # "valid":Z
    :cond_0
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_0

    .end local v2    # "valid":Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 3
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    .local v1, "parent":Lorg/simpleframework/xml/stream/OutputNode;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getMode()Lorg/simpleframework/xml/stream/Mode;

    move-result-object v0

    .local v0, "mode":Lorg/simpleframework/xml/stream/Mode;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->isCommitted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->remove()V

    :cond_0
    invoke-direct {p0, v1, p2, v0}, Lorg/simpleframework/xml/core/PrimitiveInlineList;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/stream/Mode;)V

    return-void
.end method
