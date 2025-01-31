.class Lorg/simpleframework/xml/transform/ArrayTransform;
.super Ljava/lang/Object;
.source "ArrayTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# instance fields
.field private final delegate:Lorg/simpleframework/xml/transform/Transform;

.field private final entry:Ljava/lang/Class;

.field private final split:Lorg/simpleframework/xml/transform/StringArrayTransform;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/transform/Transform;Ljava/lang/Class;)V
    .locals 1
    .param p1, "delegate"    # Lorg/simpleframework/xml/transform/Transform;
    .param p2, "entry"    # Ljava/lang/Class;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/transform/StringArrayTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/StringArrayTransform;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->split:Lorg/simpleframework/xml/transform/StringArrayTransform;

    iput-object p1, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->delegate:Lorg/simpleframework/xml/transform/Transform;

    iput-object p2, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->entry:Ljava/lang/Class;

    return-void
.end method

.method private read([Ljava/lang/String;I)Ljava/lang/Object;
    .locals 5
    .param p1, "list"    # [Ljava/lang/String;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->entry:Ljava/lang/Class;

    invoke-static {v3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "array":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v3, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->delegate:Lorg/simpleframework/xml/transform/Transform;

    aget-object v4, p1, v1

    invoke-interface {v3, v4}, Lorg/simpleframework/xml/transform/Transform;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "item":Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "item":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method private write(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-array v2, p2, [Ljava/lang/String;

    .local v2, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "entry":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->delegate:Lorg/simpleframework/xml/transform/Transform;

    invoke-interface {v3, v0}, Lorg/simpleframework/xml/transform/Transform;->write(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "entry":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->split:Lorg/simpleframework/xml/transform/StringArrayTransform;

    invoke-virtual {v3, v2}, Lorg/simpleframework/xml/transform/StringArrayTransform;->write([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->split:Lorg/simpleframework/xml/transform/StringArrayTransform;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/transform/StringArrayTransform;->read(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "list":[Ljava/lang/String;
    array-length v0, v1

    .local v0, "length":I
    invoke-direct {p0, v1, v0}, Lorg/simpleframework/xml/transform/ArrayTransform;->read([Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .local v0, "length":I
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/transform/ArrayTransform;->write(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
