.class Lorg/simpleframework/xml/core/ElementArrayLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "ElementArrayLabel.java"


# instance fields
.field private data:Z

.field private decorator:Lorg/simpleframework/xml/core/Decorator;

.field private detail:Lorg/simpleframework/xml/core/Introspector;

.field private entry:Ljava/lang/String;

.field private format:Lorg/simpleframework/xml/stream/Format;

.field private label:Lorg/simpleframework/xml/ElementArray;

.field private name:Ljava/lang/String;

.field private path:Lorg/simpleframework/xml/core/Expression;

.field private required:Z

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementArray;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Lorg/simpleframework/xml/ElementArray;
    .param p3, "format"    # Lorg/simpleframework/xml/stream/Format;

    .prologue
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateLabel;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/Introspector;

    invoke-direct {v0, p1, p0, p3}, Lorg/simpleframework/xml/core/Introspector;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    new-instance v0, Lorg/simpleframework/xml/core/Qualifier;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Qualifier;-><init>(Lorg/simpleframework/xml/core/Contact;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    invoke-interface {p2}, Lorg/simpleframework/xml/ElementArray;->required()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->required:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    invoke-interface {p2}, Lorg/simpleframework/xml/ElementArray;->entry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->entry:Ljava/lang/String;

    invoke-interface {p2}, Lorg/simpleframework/xml/ElementArray;->data()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->data:Z

    invoke-interface {p2}, Lorg/simpleframework/xml/ElementArray;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->format:Lorg/simpleframework/xml/stream/Format;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->label:Lorg/simpleframework/xml/ElementArray;

    return-void
.end method

.method private getConverter(Lorg/simpleframework/xml/core/Context;Ljava/lang/String;)Lorg/simpleframework/xml/core/Converter;
    .locals 3
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    .local v0, "entry":Lorg/simpleframework/xml/strategy/Type;
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    .local v1, "type":Lorg/simpleframework/xml/strategy/Type;
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/simpleframework/xml/core/CompositeArray;

    invoke-direct {v2, p1, v1, v0, p2}, Lorg/simpleframework/xml/core/CompositeArray;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/simpleframework/xml/core/PrimitiveArray;

    invoke-direct {v2, p1, v1, v0, p2}, Lorg/simpleframework/xml/core/PrimitiveArray;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->label:Lorg/simpleframework/xml/ElementArray;

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

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
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .local v0, "contact":Lorg/simpleframework/xml/core/Contact;
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getEntry()Ljava/lang/String;

    move-result-object v1

    .local v1, "entry":Ljava/lang/String;
    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v3, "Type is not an array %s for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_0
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getConverter(Lorg/simpleframework/xml/core/Context;Ljava/lang/String;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v2

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
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object v0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .locals 3

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .local v0, "entry":Ljava/lang/Class;
    if-nez v0, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/ClassType;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    invoke-direct {v1, v2}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/ClassType;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 3
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    invoke-direct {v0, v2}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    .local v0, "array":Lorg/simpleframework/xml/strategy/Type;
    new-instance v1, Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/ArrayFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    .local v1, "factory":Lorg/simpleframework/xml/core/Factory;
    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->label:Lorg/simpleframework/xml/ElementArray;

    invoke-interface {v2}, Lorg/simpleframework/xml/ElementArray;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Factory;->getInstance()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    .local v0, "style":Lorg/simpleframework/xml/stream/Style;
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->entry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/simpleframework/xml/core/Introspector;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Introspector;->getEntry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->entry:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->entry:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->path:Lorg/simpleframework/xml/core/Expression;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->path:Lorg/simpleframework/xml/core/Expression;

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->path:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v1

    .local v1, "style":Lorg/simpleframework/xml/stream/Style;
    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Introspector;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    invoke-interface {v1, v0}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getOverride()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v1

    .local v1, "path":Lorg/simpleframework/xml/core/Expression;
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isData()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->data:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->required:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
