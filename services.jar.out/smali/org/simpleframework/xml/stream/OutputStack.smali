.class Lorg/simpleframework/xml/stream/OutputStack;
.super Ljava/util/ArrayList;
.source "OutputStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/stream/OutputStack$Sequence;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/simpleframework/xml/stream/OutputNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final active:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .param p1, "active"    # Ljava/util/Set;

    .prologue
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputStack;->active:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public bottom()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputStack;->size()I

    move-result v0

    .local v0, "size":I
    if-gtz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/stream/OutputStack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/stream/OutputNode;

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/OutputStack$Sequence;-><init>(Lorg/simpleframework/xml/stream/OutputStack;)V

    return-object v0
.end method

.method public pop()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputStack;->size()I

    move-result v0

    .local v0, "size":I
    if-gtz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/stream/OutputStack;->purge(I)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    goto :goto_0
.end method

.method public purge(I)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 2
    .param p1, "index"    # I

    .prologue
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/OutputStack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/OutputNode;

    .local v0, "node":Lorg/simpleframework/xml/stream/OutputNode;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputStack;->active:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public push(Lorg/simpleframework/xml/stream/OutputNode;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1
    .param p1, "value"    # Lorg/simpleframework/xml/stream/OutputNode;

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputStack;->active:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/OutputStack;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public top()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputStack;->size()I

    move-result v0

    .local v0, "size":I
    if-gtz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/stream/OutputStack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/stream/OutputNode;

    goto :goto_0
.end method
