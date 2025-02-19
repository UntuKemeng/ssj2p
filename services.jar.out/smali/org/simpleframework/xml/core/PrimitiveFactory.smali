.class Lorg/simpleframework/xml/core/PrimitiveFactory;
.super Lorg/simpleframework/xml/core/Factory;
.source "PrimitiveFactory.java"


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 0
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Factory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V
    .locals 0
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "override"    # Ljava/lang/Class;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Factory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Support;->read(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;
    .locals 4
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v1

    .local v1, "value":Lorg/simpleframework/xml/strategy/Value;
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getType()Ljava/lang/Class;

    move-result-object v0

    .local v0, "type":Ljava/lang/Class;
    if-nez v1, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v0}, Lorg/simpleframework/xml/core/Context;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/simpleframework/xml/core/ObjectInstance;

    iget-object v3, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-direct {v2, v3, v1}, Lorg/simpleframework/xml/core/ObjectInstance;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Value;)V

    goto :goto_0
.end method

.method public getText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "type":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/Support;->write(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/Support;->write(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
