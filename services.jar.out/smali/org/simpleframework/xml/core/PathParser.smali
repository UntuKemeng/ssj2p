.class Lorg/simpleframework/xml/core/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Expression;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/PathParser$PathSection;
    }
.end annotation


# instance fields
.field protected attribute:Z

.field protected attributes:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected builder:Ljava/lang/StringBuilder;

.field protected cache:Ljava/lang/String;

.field protected count:I

.field protected data:[C

.field protected elements:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected indexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected location:Ljava/lang/String;

.field protected names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected off:I

.field protected path:Ljava/lang/String;

.field protected prefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected start:I

.field protected style:Lorg/simpleframework/xml/stream/Style;

.field protected type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "format"    # Lorg/simpleframework/xml/stream/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/util/Cache;

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/util/Cache;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/Style;

    iput-object p2, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    iput-object p1, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->parse(Ljava/lang/String;)V

    return-void
.end method

.method private align()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "require":I
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    if-le v0, v1, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private attribute()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    .local v0, "mark":I
    :cond_0
    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v1, v2, v3

    .local v1, "value":C
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/PathParser;->isValid(C)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/simpleframework/xml/core/PathException;

    const-string v3, "Illegal character \'%s\' in attribute for \'%s\' in %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .end local v1    # "value":C
    :cond_1
    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    if-gt v2, v0, :cond_2

    new-instance v2, Lorg/simpleframework/xml/core/PathException;

    const-string v3, "Attribute reference in \'%s\' for %s is empty"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_2
    iput-boolean v6, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    sub-int/2addr v2, v0

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/PathParser;->attribute(II)V

    return-void
.end method

.method private attribute(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .local v0, "segment":Ljava/lang/String;
    if-lez p2, :cond_0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->attribute(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private attribute(Ljava/lang/String;)V
    .locals 3
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "attribute":Ljava/lang/String;
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private build()V
    .locals 8

    .prologue
    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "last":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "prefix":Ljava/lang/String;
    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "segment":Ljava/lang/String;
    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "index":I
    if-lez v1, :cond_0

    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v6, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    if-eqz v6, :cond_1

    if-ne v1, v3, :cond_1

    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v7, 0x5b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v2    # "index":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "segment":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    return-void
.end method

.method private element()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    .local v0, "mark":I
    const/4 v1, 0x0

    .local v1, "size":I
    :goto_0
    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v4, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v4, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v2, v3, v4

    .local v2, "value":C
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/PathParser;->isValid(C)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    .end local v2    # "value":C
    :cond_0
    :goto_1
    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/PathParser;->element(II)V

    return-void

    .restart local v2    # "value":C
    :cond_1
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->index()V

    goto :goto_1

    :cond_2
    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    new-instance v3, Lorg/simpleframework/xml/core/PathException;

    const-string v4, "Illegal character \'%s\' in element for \'%s\' in %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private element(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .local v0, "segment":Ljava/lang/String;
    if-lez p2, :cond_0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->element(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private element(Ljava/lang/String;)V
    .locals 4
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "prefix":Ljava/lang/String;
    if-lez v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v3, p1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "element":Ljava/lang/String;
    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private index()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "value":I
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    :goto_0
    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v0, v2, v3

    .local v0, "digit":C
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .end local v0    # "digit":C
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/simpleframework/xml/core/PathException;

    const-string v3, "Invalid index for path \'%s\' in %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .restart local v0    # "digit":C
    :cond_1
    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x30

    goto :goto_0

    .end local v0    # "digit":C
    :cond_2
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isDigit(C)Z
    .locals 1
    .param p1, "value"    # C

    .prologue
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLetter(C)Z
    .locals 1
    .param p1, "value"    # C

    .prologue
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    return v0
.end method

.method private isSpecial(C)Z
    .locals 1
    .param p1, "value"    # C

    .prologue
    const/16 v0, 0x5f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValid(C)Z
    .locals 1
    .param p1, "value"    # C

    .prologue
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isSpecial(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parse(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    :cond_0
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->path()V

    return-void
.end method

.method private path()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v1, "Path \'%s\' in %s references document root"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->skip()V

    :cond_1
    :goto_0
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-ge v0, v1, :cond_3

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    if-eqz v0, :cond_2

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v1, "Path \'%s\' in %s references an invalid attribute"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->segment()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->truncate()V

    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->build()V

    return-void
.end method

.method private segment()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v0, v1, v2

    .local v0, "first":C
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Invalid path expression \'%s\' in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_0
    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->attribute()V

    :goto_0
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->align()V

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->element()V

    goto :goto_0
.end method

.method private skip()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    array-length v0, v0

    if-le v0, v5, :cond_1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v1, "Path \'%s\' in %s has an illegal syntax"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    :cond_1
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    return-void
.end method

.method private truncate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    goto :goto_0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lorg/simpleframework/xml/core/PathParser;->getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v1, p2}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "attribute":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "attribute":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "attribute":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lorg/simpleframework/xml/core/PathParser;->getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v1, p2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "element":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[1]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getFirst()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLast()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "index":I
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(I)Lorg/simpleframework/xml/core/Expression;
    .locals 1
    .param p1, "from"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/PathParser;->getPath(II)Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getPath(II)Lorg/simpleframework/xml/core/Expression;
    .locals 3
    .param p1, "from"    # I
    .param p2, "trim"    # I

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "last":I
    sub-int v1, v0, p2

    if-lt v1, p1, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/PathParser$PathSection;

    sub-int v2, v0, p2

    invoke-direct {v1, p0, p1, v2}, Lorg/simpleframework/xml/core/PathParser$PathSection;-><init>(Lorg/simpleframework/xml/core/PathParser;II)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/PathParser$PathSection;

    invoke-direct {v1, p0, p1, p1}, Lorg/simpleframework/xml/core/PathParser$PathSection;-><init>(Lorg/simpleframework/xml/core/PathParser;II)V

    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAttribute()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPath()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    sub-int v0, v1, v2

    .local v0, "size":I
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    return-object v1
.end method
