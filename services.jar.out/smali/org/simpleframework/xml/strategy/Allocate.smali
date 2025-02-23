.class Lorg/simpleframework/xml/strategy/Allocate;
.super Ljava/lang/Object;
.source "Allocate.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field private key:Ljava/lang/String;

.field private map:Ljava/util/Map;

.field private value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Value;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Lorg/simpleframework/xml/strategy/Value;
    .param p2, "map"    # Ljava/util/Map;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/strategy/Allocate;->value:Lorg/simpleframework/xml/strategy/Value;

    iput-object p2, p0, Lorg/simpleframework/xml/strategy/Allocate;->map:Ljava/util/Map;

    iput-object p3, p0, Lorg/simpleframework/xml/strategy/Allocate;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/Allocate;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->getLength()I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/Allocate;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/Allocate;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/Allocate;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isReference()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/Allocate;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/strategy/Allocate;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/Allocate;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/Allocate;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    return-void
.end method
