.class Lorg/simpleframework/xml/core/ModelList;
.super Ljava/util/ArrayList;
.source "ModelList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/simpleframework/xml/core/Model;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/simpleframework/xml/core/ModelList;
    .locals 4

    .prologue
    new-instance v1, Lorg/simpleframework/xml/core/ModelList;

    invoke-direct {v1}, Lorg/simpleframework/xml/core/ModelList;-><init>()V

    .local v1, "list":Lorg/simpleframework/xml/core/ModelList;
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Model;

    .local v2, "model":Lorg/simpleframework/xml/core/Model;
    invoke-virtual {v1, v2}, Lorg/simpleframework/xml/core/ModelList;->register(Lorg/simpleframework/xml/core/Model;)V

    goto :goto_0

    .end local v2    # "model":Lorg/simpleframework/xml/core/Model;
    :cond_0
    return-object v1
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Model;

    .local v1, "model":Lorg/simpleframework/xml/core/Model;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Model;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .end local v1    # "model":Lorg/simpleframework/xml/core/Model;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public lookup(I)Lorg/simpleframework/xml/core/Model;
    .locals 2
    .param p1, "index"    # I

    .prologue
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->size()I

    move-result v0

    .local v0, "size":I
    if-gt p1, v0, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/ModelList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Model;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public register(Lorg/simpleframework/xml/core/Model;)V
    .locals 4
    .param p1, "model"    # Lorg/simpleframework/xml/core/Model;

    .prologue
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Model;->getIndex()I

    move-result v1

    .local v1, "index":I
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->size()I

    move-result v2

    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    if-lt v0, v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/simpleframework/xml/core/ModelList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3, p1}, Lorg/simpleframework/xml/core/ModelList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public take()Lorg/simpleframework/xml/core/Model;
    .locals 2

    .prologue
    :cond_0
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/ModelList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Model;

    .local v0, "model":Lorg/simpleframework/xml/core/Model;
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "model":Lorg/simpleframework/xml/core/Model;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
