.class Lorg/simpleframework/xml/transform/AtomicIntegerTransform;
.super Ljava/lang/Object;
.source "AtomicIntegerTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform",
        "<",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
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
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/AtomicIntegerTransform;->read(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "number":Ljava/lang/Integer;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-object v1
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
    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/AtomicIntegerTransform;->write(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
