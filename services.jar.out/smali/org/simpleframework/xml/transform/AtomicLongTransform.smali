.class Lorg/simpleframework/xml/transform/AtomicLongTransform;
.super Ljava/lang/Object;
.source "AtomicLongTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform",
        "<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
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
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/AtomicLongTransform;->read(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .local v0, "number":Ljava/lang/Long;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

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
    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/AtomicLongTransform;->write(Ljava/util/concurrent/atomic/AtomicLong;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/util/concurrent/atomic/AtomicLong;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/util/concurrent/atomic/AtomicLong;

    .prologue
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
