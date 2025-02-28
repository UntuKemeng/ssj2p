.class abstract Lorg/simpleframework/xml/core/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# instance fields
.field protected context:Lorg/simpleframework/xml/core/Context;

.field protected override:Ljava/lang/Class;

.field protected support:Lorg/simpleframework/xml/core/Support;

.field protected type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method protected constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 1
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Factory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    return-void
.end method

.method protected constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "override"    # Ljava/lang/Class;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getSupport()Lorg/simpleframework/xml/core/Support;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Factory;->support:Lorg/simpleframework/xml/core/Support;

    iput-object p3, p0, Lorg/simpleframework/xml/core/Factory;->override:Ljava/lang/Class;

    iput-object p1, p0, Lorg/simpleframework/xml/core/Factory;->context:Lorg/simpleframework/xml/core/Context;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Factory;->type:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method

.method private getPrimitive(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .locals 2
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "expect"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/core/Factory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-static {p2}, Lorg/simpleframework/xml/core/Support;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "convert":Ljava/lang/Class;
    if-eq v0, p2, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/OverrideType;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/OverrideType;-><init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    move-object p1, v1

    .end local p1    # "type":Lorg/simpleframework/xml/strategy/Type;
    :cond_0
    return-object p1
.end method

.method public static isCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "expect"    # Ljava/lang/Class;
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static isInstantiable(Ljava/lang/Class;)Z
    .locals 3
    .param p0, "type"    # Ljava/lang/Class;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .local v0, "modifiers":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getConversion(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;
    .locals 4
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lorg/simpleframework/xml/core/Factory;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Factory;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2, v3, p1}, Lorg/simpleframework/xml/core/Context;->getOverride(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v1

    .local v1, "value":Lorg/simpleframework/xml/strategy/Value;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/core/Factory;->override:Ljava/lang/Class;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    .local v0, "proposed":Ljava/lang/Class;
    iget-object v2, p0, Lorg/simpleframework/xml/core/Factory;->override:Ljava/lang/Class;

    invoke-static {v2, v0}, Lorg/simpleframework/xml/core/Factory;->isCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/simpleframework/xml/core/OverrideValue;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Factory;->override:Ljava/lang/Class;

    invoke-direct {v2, v1, v3}, Lorg/simpleframework/xml/core/OverrideValue;-><init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)V

    move-object v1, v2

    .end local v0    # "proposed":Ljava/lang/Class;
    .end local v1    # "value":Lorg/simpleframework/xml/strategy/Value;
    :cond_0
    return-object v1
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Factory;->getType()Ljava/lang/Class;

    move-result-object v0

    .local v0, "type":Ljava/lang/Class;
    invoke-static {v0}, Lorg/simpleframework/xml/core/Factory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v2, "Type %s can not be instantiated"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;
    .locals 9
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Factory;->getConversion(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v3

    .local v3, "value":Lorg/simpleframework/xml/strategy/Value;
    if-eqz v3, :cond_0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .local v1, "line":Lorg/simpleframework/xml/stream/Position;
    invoke-interface {v3}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v2

    .local v2, "proposed":Ljava/lang/Class;
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Factory;->getType()Ljava/lang/Class;

    move-result-object v0

    .local v0, "expect":Ljava/lang/Class;
    invoke-static {v0, v2}, Lorg/simpleframework/xml/core/Factory;->isCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v5, "Incompatible %s for %s at %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/simpleframework/xml/core/Factory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .end local v0    # "expect":Ljava/lang/Class;
    .end local v1    # "line":Lorg/simpleframework/xml/stream/Position;
    .end local v2    # "proposed":Ljava/lang/Class;
    :cond_0
    return-object v3
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/Factory;->override:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/Factory;->override:Ljava/lang/Class;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Factory;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z
    .locals 2
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .local v0, "expect":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Factory;->getPrimitive(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/Factory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, p1, p2, p3}, Lorg/simpleframework/xml/core/Context;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v1

    return v1
.end method
