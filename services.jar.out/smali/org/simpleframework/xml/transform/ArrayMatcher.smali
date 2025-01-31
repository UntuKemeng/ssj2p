.class Lorg/simpleframework/xml/transform/ArrayMatcher;
.super Ljava/lang/Object;
.source "ArrayMatcher.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Matcher;


# instance fields
.field private final primary:Lorg/simpleframework/xml/transform/Matcher;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 0
    .param p1, "primary"    # Lorg/simpleframework/xml/transform/Matcher;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/transform/ArrayMatcher;->primary:Lorg/simpleframework/xml/transform/Matcher;

    return-void
.end method

.method private matchArray(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 2
    .param p1, "entry"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/transform/ArrayMatcher;->primary:Lorg/simpleframework/xml/transform/Matcher;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/transform/Matcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    .local v0, "transform":Lorg/simpleframework/xml/transform/Transform;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/simpleframework/xml/transform/ArrayTransform;

    invoke-direct {v1, v0, p1}, Lorg/simpleframework/xml/transform/ArrayTransform;-><init>(Lorg/simpleframework/xml/transform/Transform;Ljava/lang/Class;)V

    goto :goto_0
.end method


# virtual methods
.method public match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .local v0, "entry":Ljava/lang/Class;
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    new-instance v1, Lorg/simpleframework/xml/transform/CharacterArrayTransform;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/transform/CharacterArrayTransform;-><init>(Ljava/lang/Class;)V

    :goto_0
    return-object v1

    :cond_0
    const-class v1, Ljava/lang/Character;

    if-ne v0, v1, :cond_1

    new-instance v1, Lorg/simpleframework/xml/transform/CharacterArrayTransform;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/transform/CharacterArrayTransform;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_2

    new-instance v1, Lorg/simpleframework/xml/transform/StringArrayTransform;

    invoke-direct {v1}, Lorg/simpleframework/xml/transform/StringArrayTransform;-><init>()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/transform/ArrayMatcher;->matchArray(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v1

    goto :goto_0
.end method
