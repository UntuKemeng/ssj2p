.class Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;
.super Ljava/lang/Object;
.source "ExtractorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/ExtractorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractorBuilder"
.end annotation


# instance fields
.field private final label:Ljava/lang/Class;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/Class;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;->label:Ljava/lang/Class;

    .line 159
    iput-object p2, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;->type:Ljava/lang/Class;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;)Ljava/lang/reflect/Constructor;
    .locals 1
    .param p0, "x0"    # Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method private getConstructor()Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;->type:Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/simpleframework/xml/core/Contact;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;->label:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/simpleframework/xml/stream/Format;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method
