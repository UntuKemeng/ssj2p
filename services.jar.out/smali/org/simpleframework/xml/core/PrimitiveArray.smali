.class Lorg/simpleframework/xml/core/PrimitiveArray;
.super Ljava/lang/Object;
.source "PrimitiveArray.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final entry:Lorg/simpleframework/xml/strategy/Type;

.field private final factory:Lorg/simpleframework/xml/core/ArrayFactory;

.field private final parent:Ljava/lang/String;

.field private final root:Lorg/simpleframework/xml/core/Primitive;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "entry"    # Lorg/simpleframework/xml/strategy/Type;
    .param p4, "parent"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/ArrayFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->root:Lorg/simpleframework/xml/core/Primitive;

    iput-object p4, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->parent:Ljava/lang/String;

    iput-object p3, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->entry:Lorg/simpleframework/xml/strategy/Type;

    iput-object p2, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->type:Lorg/simpleframework/xml/strategy/Type;

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
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-virtual {v0, v1, p2, p1}, Lorg/simpleframework/xml/core/ArrayFactory;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v0

    return v0
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .local v0, "next":Lorg/simpleframework/xml/stream/InputNode;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Primitive;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    goto :goto_0
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {p2, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "item":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveArray;->isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    :cond_0
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
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/ArrayFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v1

    .local v1, "type":Lorg/simpleframework/xml/core/Instance;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .local v0, "list":Ljava/lang/Object;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveArray;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "list":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "list"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .local v0, "length":I
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .local v1, "line":Lorg/simpleframework/xml/stream/Position;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v2

    .local v2, "next":Lorg/simpleframework/xml/stream/InputNode;
    if-nez v2, :cond_0

    return-object p2

    :cond_0
    if-lt v3, v0, :cond_1

    new-instance v4, Lorg/simpleframework/xml/core/ElementException;

    const-string v5, "Array length missing or incorrect for %s at %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_1
    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v4, v2}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

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
    iget-object v3, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-virtual {v3, p1}, Lorg/simpleframework/xml/core/ArrayFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v2

    .local v2, "value":Lorg/simpleframework/xml/core/Instance;
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "result":Ljava/lang/Object;
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v0

    .local v0, "expect":Ljava/lang/Class;
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveArray;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v3

    .end local v0    # "expect":Ljava/lang/Class;
    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 4
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->parent:Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .local v0, "child":Lorg/simpleframework/xml/stream/OutputNode;
    if-nez v0, :cond_1

    .end local v0    # "child":Lorg/simpleframework/xml/stream/OutputNode;
    :cond_0
    return-void

    .restart local v0    # "child":Lorg/simpleframework/xml/stream/OutputNode;
    :cond_1
    invoke-direct {p0, v0, p2, v1}, Lorg/simpleframework/xml/core/PrimitiveArray;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
