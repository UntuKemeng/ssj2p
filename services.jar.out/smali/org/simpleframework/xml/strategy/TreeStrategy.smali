.class public Lorg/simpleframework/xml/strategy/TreeStrategy;
.super Ljava/lang/Object;
.source "TreeStrategy.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Strategy;


# instance fields
.field private final label:Ljava/lang/String;

.field private final length:Ljava/lang/String;

.field private final loader:Lorg/simpleframework/xml/strategy/Loader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v0, "class"

    const-string v1, "length"

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "length"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/strategy/Loader;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/Loader;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->loader:Lorg/simpleframework/xml/strategy/Loader;

    iput-object p2, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->length:Ljava/lang/String;

    iput-object p1, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->label:Ljava/lang/String;

    return-void
.end method

.method private readArray(Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "node"    # Lorg/simpleframework/xml/stream/NodeMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->length:Ljava/lang/String;

    invoke-interface {p2, v3}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    .local v0, "entry":Lorg/simpleframework/xml/stream/Node;
    const/4 v1, 0x0

    .local v1, "size":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    new-instance v3, Lorg/simpleframework/xml/strategy/ArrayValue;

    invoke-direct {v3, p1, v1}, Lorg/simpleframework/xml/strategy/ArrayValue;-><init>(Ljava/lang/Class;I)V

    return-object v3
.end method

.method private readValue(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;
    .locals 4
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "node"    # Lorg/simpleframework/xml/stream/NodeMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->label:Ljava/lang/String;

    invoke-interface {p2, v3}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    .local v0, "entry":Lorg/simpleframework/xml/stream/Node;
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .local v1, "expect":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->loader:Lorg/simpleframework/xml/strategy/Loader;

    invoke-virtual {v3, v2}, Lorg/simpleframework/xml/strategy/Loader;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private writeArray(Ljava/lang/Class;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;
    .locals 3
    .param p1, "field"    # Ljava/lang/Class;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "node"    # Lorg/simpleframework/xml/stream/NodeMap;

    .prologue
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .local v0, "size":I
    iget-object v1, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->length:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->length:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;
    .locals 3
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "node"    # Lorg/simpleframework/xml/stream/NodeMap;
    .param p3, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/strategy/TreeStrategy;->readValue(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "actual":Ljava/lang/Class;
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .local v1, "expect":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, p2}, Lorg/simpleframework/xml/strategy/TreeStrategy;->readArray(Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    if-eq v1, v0, :cond_1

    new-instance v2, Lorg/simpleframework/xml/strategy/ObjectValue;

    invoke-direct {v2, v0}, Lorg/simpleframework/xml/strategy/ObjectValue;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z
    .locals 5
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "node"    # Lorg/simpleframework/xml/stream/NodeMap;
    .param p4, "map"    # Ljava/util/Map;

    .prologue
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "actual":Ljava/lang/Class;
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .local v1, "expect":Ljava/lang/Class;
    move-object v2, v0

    .local v2, "real":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, p2, p3}, Lorg/simpleframework/xml/strategy/TreeStrategy;->writeArray(Ljava/lang/Class;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;

    move-result-object v2

    :cond_0
    if-eq v0, v1, :cond_1

    iget-object v3, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    :cond_1
    const/4 v3, 0x0

    return v3
.end method
