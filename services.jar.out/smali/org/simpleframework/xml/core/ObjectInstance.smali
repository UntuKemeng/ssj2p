.class Lorg/simpleframework/xml/core/ObjectInstance;
.super Ljava/lang/Object;
.source "ObjectInstance.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Instance;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final type:Ljava/lang/Class;

.field private final value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Value;)V
    .locals 1
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "value"    # Lorg/simpleframework/xml/strategy/Value;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ObjectInstance;->type:Ljava/lang/Class;

    iput-object p1, p0, Lorg/simpleframework/xml/core/ObjectInstance;->context:Lorg/simpleframework/xml/core/Context;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ObjectInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    return-void
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/core/ObjectInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/simpleframework/xml/core/ObjectInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/core/ObjectInstance;->type:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/ObjectInstance;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "object":Ljava/lang/Object;
    iget-object v1, p0, Lorg/simpleframework/xml/core/ObjectInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/ObjectInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lorg/simpleframework/xml/core/ObjectInstance;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/core/Context;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v1

    .local v1, "value":Lorg/simpleframework/xml/core/Instance;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .local v0, "object":Ljava/lang/Object;
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectInstance;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isReference()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v0

    return v0
.end method

.method public setInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method
