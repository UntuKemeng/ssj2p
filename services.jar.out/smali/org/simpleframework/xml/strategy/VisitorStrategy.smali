.class public Lorg/simpleframework/xml/strategy/VisitorStrategy;
.super Ljava/lang/Object;
.source "VisitorStrategy.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Strategy;


# instance fields
.field private final strategy:Lorg/simpleframework/xml/strategy/Strategy;

.field private final visitor:Lorg/simpleframework/xml/strategy/Visitor;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Visitor;)V
    .locals 1
    .param p1, "visitor"    # Lorg/simpleframework/xml/strategy/Visitor;

    .prologue
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/strategy/VisitorStrategy;-><init>(Lorg/simpleframework/xml/strategy/Visitor;Lorg/simpleframework/xml/strategy/Strategy;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Visitor;Lorg/simpleframework/xml/strategy/Strategy;)V
    .locals 0
    .param p1, "visitor"    # Lorg/simpleframework/xml/strategy/Visitor;
    .param p2, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/simpleframework/xml/strategy/VisitorStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iput-object p1, p0, Lorg/simpleframework/xml/strategy/VisitorStrategy;->visitor:Lorg/simpleframework/xml/strategy/Visitor;

    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;
    .locals 1
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;",
            "Ljava/util/Map;",
            ")",
            "Lorg/simpleframework/xml/strategy/Value;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "node":Lorg/simpleframework/xml/stream/NodeMap;, "Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/InputNode;>;"
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/VisitorStrategy;->visitor:Lorg/simpleframework/xml/strategy/Visitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/strategy/VisitorStrategy;->visitor:Lorg/simpleframework/xml/strategy/Visitor;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/strategy/Visitor;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)V

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/VisitorStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    invoke-interface {v0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/Strategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z
    .locals 2
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "value"    # Ljava/lang/Object;
    .param p4, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Ljava/lang/Object;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;",
            "Ljava/util/Map;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, "node":Lorg/simpleframework/xml/stream/NodeMap;, "Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/OutputNode;>;"
    iget-object v1, p0, Lorg/simpleframework/xml/strategy/VisitorStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/simpleframework/xml/strategy/Strategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z

    move-result v0

    .local v0, "result":Z
    iget-object v1, p0, Lorg/simpleframework/xml/strategy/VisitorStrategy;->visitor:Lorg/simpleframework/xml/strategy/Visitor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/VisitorStrategy;->visitor:Lorg/simpleframework/xml/strategy/Visitor;

    invoke-interface {v1, p1, p3}, Lorg/simpleframework/xml/strategy/Visitor;->write(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)V

    :cond_0
    return v0
.end method
