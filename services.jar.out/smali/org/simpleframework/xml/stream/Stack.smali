.class Lorg/simpleframework/xml/stream/Stack;
.super Ljava/util/ArrayList;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .local p0, "this":Lorg/simpleframework/xml/stream/Stack;, "Lorg/simpleframework/xml/stream/Stack<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bottom()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/simpleframework/xml/stream/Stack;, "Lorg/simpleframework/xml/stream/Stack<TT;>;"
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Stack;->size()I

    move-result v0

    .local v0, "size":I
    if-gtz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/stream/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/simpleframework/xml/stream/Stack;, "Lorg/simpleframework/xml/stream/Stack<TT;>;"
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Stack;->size()I

    move-result v0

    .local v0, "size":I
    if-gtz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/stream/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/simpleframework/xml/stream/Stack;, "Lorg/simpleframework/xml/stream/Stack<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/Stack;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public top()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/simpleframework/xml/stream/Stack;, "Lorg/simpleframework/xml/stream/Stack<TT;>;"
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Stack;->size()I

    move-result v0

    .local v0, "size":I
    if-gtz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/stream/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
