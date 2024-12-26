.class Lorg/simpleframework/xml/core/Qualifier;
.super Ljava/lang/Object;
.source "Qualifier.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Decorator;


# instance fields
.field private decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;)V
    .locals 1
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    .line 52
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Qualifier;->scan(Lorg/simpleframework/xml/core/Contact;)V

    .line 53
    return-void
.end method

.method private namespace(Lorg/simpleframework/xml/core/Contact;)V
    .locals 2
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;

    .prologue
    .line 105
    const-class v1, Lorg/simpleframework/xml/Namespace;

    invoke-interface {p1, v1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Namespace;

    .line 107
    .local v0, "primary":Lorg/simpleframework/xml/Namespace;
    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;->set(Lorg/simpleframework/xml/Namespace;)V

    .line 109
    iget-object v1, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;->add(Lorg/simpleframework/xml/Namespace;)V

    .line 111
    :cond_0
    return-void
.end method

.method private scan(Lorg/simpleframework/xml/core/Contact;)V
    .locals 0
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Qualifier;->namespace(Lorg/simpleframework/xml/core/Contact;)V

    .line 93
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Qualifier;->scope(Lorg/simpleframework/xml/core/Contact;)V

    .line 94
    return-void
.end method

.method private scope(Lorg/simpleframework/xml/core/Contact;)V
    .locals 6
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;

    .prologue
    .line 122
    const-class v5, Lorg/simpleframework/xml/NamespaceList;

    invoke-interface {p1, v5}, Lorg/simpleframework/xml/core/Contact;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/NamespaceList;

    .line 124
    .local v4, "scope":Lorg/simpleframework/xml/NamespaceList;
    if-eqz v4, :cond_0

    .line 125
    invoke-interface {v4}, Lorg/simpleframework/xml/NamespaceList;->value()[Lorg/simpleframework/xml/Namespace;

    move-result-object v0

    .local v0, "arr$":[Lorg/simpleframework/xml/Namespace;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 126
    .local v3, "name":Lorg/simpleframework/xml/Namespace;
    iget-object v5, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v5, v3}, Lorg/simpleframework/xml/core/NamespaceDecorator;->add(Lorg/simpleframework/xml/Namespace;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "arr$":[Lorg/simpleframework/xml/Namespace;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "name":Lorg/simpleframework/xml/Namespace;
    :cond_0
    return-void
.end method


# virtual methods
.method public decorate(Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 1
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/NamespaceDecorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 65
    return-void
.end method

.method public decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Decorator;)V
    .locals 1
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "secondary"    # Lorg/simpleframework/xml/core/Decorator;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/NamespaceDecorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Decorator;)V

    .line 80
    return-void
.end method