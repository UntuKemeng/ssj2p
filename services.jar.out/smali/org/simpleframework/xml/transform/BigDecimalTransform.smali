.class Lorg/simpleframework/xml/transform/BigDecimalTransform;
.super Ljava/lang/Object;
.source "BigDecimalTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform",
        "<",
        "Ljava/math/BigDecimal;",
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
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/BigDecimalTransform;->read(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

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
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/BigDecimalTransform;->write(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/math/BigDecimal;

    .prologue
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
