.class Lorg/simpleframework/xml/transform/ShortTransform;
.super Ljava/lang/Object;
.source "ShortTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform",
        "<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/ShortTransform;->read(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/Short;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/ShortTransform;->write(Ljava/lang/Short;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Short;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Short;

    .prologue
    invoke-virtual {p1}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
