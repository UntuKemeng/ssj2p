.class Lorg/simpleframework/xml/core/ElementUnionLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "ElementUnionLabel.java"


# instance fields
.field private contact:Lorg/simpleframework/xml/core/Contact;

.field private extractor:Lorg/simpleframework/xml/core/GroupExtractor;

.field private label:Lorg/simpleframework/xml/core/Label;

.field private path:Lorg/simpleframework/xml/core/Expression;

.field private union:Lorg/simpleframework/xml/ElementUnion;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementUnion;Lorg/simpleframework/xml/Element;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "union"    # Lorg/simpleframework/xml/ElementUnion;
    .param p3, "element"    # Lorg/simpleframework/xml/Element;
    .param p4, "format"    # Lorg/simpleframework/xml/stream/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateLabel;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-direct {v0, p1, p2, p4}, Lorg/simpleframework/xml/core/GroupExtractor;-><init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    new-instance v0, Lorg/simpleframework/xml/core/ElementLabel;

    invoke-direct {v0, p1, p3, p4}, Lorg/simpleframework/xml/core/ElementLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/Element;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    iput-object p1, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->union:Lorg/simpleframework/xml/ElementUnion;

    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object v0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 7
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementUnionLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .local v0, "expression":Lorg/simpleframework/xml/core/Expression;
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementUnionLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    .local v1, "type":Lorg/simpleframework/xml/strategy/Type;
    if-nez v1, :cond_0

    new-instance v2, Lorg/simpleframework/xml/core/UnionException;

    const-string v3, "Union %s was not declared on a field or method"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_0
    new-instance v2, Lorg/simpleframework/xml/core/CompositeUnion;

    iget-object v3, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-direct {v2, p1, v3, v0, v1}, Lorg/simpleframework/xml/core/CompositeUnion;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Group;Lorg/simpleframework/xml/core/Expression;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v2
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    return-object v0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    return-object v0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getEntry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->path:Lorg/simpleframework/xml/core/Expression;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->path:Lorg/simpleframework/xml/core/Expression;

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->path:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .locals 6
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementUnionLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .local v0, "contact":Lorg/simpleframework/xml/strategy/Type;
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/GroupExtractor;->isValid(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/UnionException;

    const-string v2, "No type matches %s in %s for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->union:Lorg/simpleframework/xml/ElementUnion;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/GroupExtractor;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor;->getNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverride()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getOverride()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaths()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor;->getPaths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .locals 6
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementUnionLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .local v0, "contact":Lorg/simpleframework/xml/strategy/Type;
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/GroupExtractor;->isValid(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/UnionException;

    const-string v2, "No type matches %s in %s for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->union:Lorg/simpleframework/xml/ElementUnion;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/GroupExtractor;->isDeclared(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/simpleframework/xml/core/OverrideType;

    invoke-direct {v1, v0, p1}, Lorg/simpleframework/xml/core/OverrideType;-><init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    move-object v0, v1

    .end local v0    # "contact":Lorg/simpleframework/xml/strategy/Type;
    :cond_1
    return-object v0
.end method

.method public isCollection()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isCollection()Z

    move-result v0

    return v0
.end method

.method public isData()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    return v0
.end method

.method public isUnion()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
