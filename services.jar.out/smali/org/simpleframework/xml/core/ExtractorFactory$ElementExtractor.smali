.class Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;
.super Ljava/lang/Object;
.source "ExtractorFactory.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Extractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/ExtractorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElementExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/core/Extractor",
        "<",
        "Lorg/simpleframework/xml/Element;",
        ">;"
    }
.end annotation


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/Contact;

.field private final format:Lorg/simpleframework/xml/stream/Format;

.field private final union:Lorg/simpleframework/xml/ElementUnion;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementUnion;Lorg/simpleframework/xml/stream/Format;)V
    .locals 0
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "union"    # Lorg/simpleframework/xml/ElementUnion;
    .param p3, "format"    # Lorg/simpleframework/xml/stream/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->contact:Lorg/simpleframework/xml/core/Contact;

    iput-object p3, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->union:Lorg/simpleframework/xml/ElementUnion;

    return-void
.end method


# virtual methods
.method public bridge synthetic getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->getAnnotations()[Lorg/simpleframework/xml/Element;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Lorg/simpleframework/xml/Element;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->union:Lorg/simpleframework/xml/ElementUnion;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementUnion;->value()[Lorg/simpleframework/xml/Element;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLabel(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .locals 1
    .param p1, "x0"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    check-cast p1, Lorg/simpleframework/xml/Element;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->getLabel(Lorg/simpleframework/xml/Element;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Lorg/simpleframework/xml/Element;)Lorg/simpleframework/xml/core/Label;
    .locals 3
    .param p1, "element"    # Lorg/simpleframework/xml/Element;

    .prologue
    new-instance v0, Lorg/simpleframework/xml/core/ElementLabel;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->contact:Lorg/simpleframework/xml/core/Contact;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0, v1, p1, v2}, Lorg/simpleframework/xml/core/ElementLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/Element;Lorg/simpleframework/xml/stream/Format;)V

    return-object v0
.end method

.method public bridge synthetic getType(Ljava/lang/annotation/Annotation;)Ljava/lang/Class;
    .locals 1
    .param p1, "x0"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    check-cast p1, Lorg/simpleframework/xml/Element;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->getType(Lorg/simpleframework/xml/Element;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lorg/simpleframework/xml/Element;)Ljava/lang/Class;
    .locals 2
    .param p1, "element"    # Lorg/simpleframework/xml/Element;

    .prologue
    invoke-interface {p1}, Lorg/simpleframework/xml/Element;->type()Ljava/lang/Class;

    move-result-object v0

    .local v0, "type":Ljava/lang/Class;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object v0

    .end local v0    # "type":Ljava/lang/Class;
    :cond_0
    return-object v0
.end method
