.class Lorg/simpleframework/xml/core/LabelExtractor;
.super Ljava/lang/Object;
.source "LabelExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;
    }
.end annotation


# instance fields
.field private final cache:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Lorg/simpleframework/xml/core/LabelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final format:Lorg/simpleframework/xml/stream/Format;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "format"    # Lorg/simpleframework/xml/stream/Format;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelExtractor;->cache:Lorg/simpleframework/xml/util/Cache;

    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    return-void
.end method

.method private getAnnotations(Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;
    .locals 6
    .param p1, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    .local v2, "union":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "list":[Ljava/lang/reflect/Method;
    array-length v4, v0

    if-lez v4, :cond_0

    aget-object v1, v0, v5

    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "value":Ljava/lang/Object;
    check-cast v3, [Ljava/lang/annotation/Annotation;

    .end local v3    # "value":Ljava/lang/Object;
    check-cast v3, [Ljava/lang/annotation/Annotation;

    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    :cond_0
    new-array v3, v5, [Ljava/lang/annotation/Annotation;

    goto :goto_0
.end method

.method private getBuilder(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;
    .locals 4
    .param p1, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    instance-of v0, p1, Lorg/simpleframework/xml/Element;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementLabel;

    const-class v2, Lorg/simpleframework/xml/Element;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementListLabel;

    const-class v2, Lorg/simpleframework/xml/ElementList;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementArrayLabel;

    const-class v2, Lorg/simpleframework/xml/ElementArray;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementMapLabel;

    const-class v2, Lorg/simpleframework/xml/ElementMap;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementUnionLabel;

    const-class v2, Lorg/simpleframework/xml/ElementUnion;

    const-class v3, Lorg/simpleframework/xml/Element;

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_5

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementListUnionLabel;

    const-class v2, Lorg/simpleframework/xml/ElementListUnion;

    const-class v3, Lorg/simpleframework/xml/ElementList;

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_6

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementMapUnionLabel;

    const-class v2, Lorg/simpleframework/xml/ElementMapUnion;

    const-class v3, Lorg/simpleframework/xml/ElementMap;

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/AttributeLabel;

    const-class v2, Lorg/simpleframework/xml/Attribute;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lorg/simpleframework/xml/Version;

    if-eqz v0, :cond_8

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/VersionLabel;

    const-class v2, Lorg/simpleframework/xml/Version;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_9

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/TextLabel;

    const-class v2, Lorg/simpleframework/xml/Text;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "Annotation %s not supported"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private getConstructor(Ljava/lang/annotation/Annotation;)Ljava/lang/reflect/Constructor;
    .locals 3
    .param p1, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/LabelExtractor;->getBuilder(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    move-result-object v0

    .local v0, "builder":Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    .local v1, "factory":Ljava/lang/reflect/Constructor;
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_0
    return-object v1
.end method

.method private getGroup(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lorg/simpleframework/xml/core/LabelGroup;
    .locals 3
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .param p3, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lorg/simpleframework/xml/core/LabelExtractor;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v2, p3}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/LabelGroup;

    .local v1, "value":Lorg/simpleframework/xml/core/LabelGroup;
    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getLabels(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object v0

    .local v0, "list":Lorg/simpleframework/xml/core/LabelGroup;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/core/LabelExtractor;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v2, p3, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "list":Lorg/simpleframework/xml/core/LabelGroup;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private getKey(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 1
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;

    .prologue
    new-instance v0, Lorg/simpleframework/xml/core/LabelKey;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/LabelKey;-><init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method private getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .locals 6
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .param p3, "entry"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getConstructor(Ljava/lang/annotation/Annotation;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .local v0, "factory":Ljava/lang/reflect/Constructor;
    if-eqz p3, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    iget-object v2, p0, Lorg/simpleframework/xml/core/LabelExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Label;

    :goto_0
    return-object v1

    :cond_0
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    iget-object v2, p0, Lorg/simpleframework/xml/core/LabelExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Label;

    goto :goto_0
.end method

.method private getLabels(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;
    .locals 1
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    instance-of v0, p2, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getSingle(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object v0

    goto :goto_0
.end method

.method private getSingle(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;
    .locals 3
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lorg/simpleframework/xml/core/LabelExtractor;->getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .local v0, "value":Lorg/simpleframework/xml/core/Label;
    if-eqz v0, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/CacheLabel;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/core/CacheLabel;-><init>(Lorg/simpleframework/xml/core/Label;)V

    .end local v0    # "value":Lorg/simpleframework/xml/core/Label;
    .local v1, "value":Lorg/simpleframework/xml/core/Label;
    move-object v0, v1

    .end local v1    # "value":Lorg/simpleframework/xml/core/Label;
    .restart local v0    # "value":Lorg/simpleframework/xml/core/Label;
    :cond_0
    new-instance v2, Lorg/simpleframework/xml/core/LabelGroup;

    invoke-direct {v2, v0}, Lorg/simpleframework/xml/core/LabelGroup;-><init>(Lorg/simpleframework/xml/core/Label;)V

    return-object v2
.end method

.method private getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;
    .locals 9
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getAnnotations(Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .local v6, "list":[Ljava/lang/annotation/Annotation;
    array-length v8, v6

    if-lez v8, :cond_2

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .local v4, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/simpleframework/xml/core/Label;>;"
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v7, v0, v3

    .local v7, "value":Ljava/lang/annotation/Annotation;
    invoke-direct {p0, p1, p2, v7}, Lorg/simpleframework/xml/core/LabelExtractor;->getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .local v1, "entry":Lorg/simpleframework/xml/core/Label;
    if-eqz v1, :cond_0

    new-instance v2, Lorg/simpleframework/xml/core/CacheLabel;

    invoke-direct {v2, v1}, Lorg/simpleframework/xml/core/CacheLabel;-><init>(Lorg/simpleframework/xml/core/Label;)V

    .end local v1    # "entry":Lorg/simpleframework/xml/core/Label;
    .local v2, "entry":Lorg/simpleframework/xml/core/Label;
    move-object v1, v2

    .end local v2    # "entry":Lorg/simpleframework/xml/core/Label;
    .restart local v1    # "entry":Lorg/simpleframework/xml/core/Label;
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "entry":Lorg/simpleframework/xml/core/Label;
    .end local v7    # "value":Ljava/lang/annotation/Annotation;
    :cond_1
    new-instance v8, Lorg/simpleframework/xml/core/LabelGroup;

    invoke-direct {v8, v4}, Lorg/simpleframework/xml/core/LabelGroup;-><init>(Ljava/util/List;)V

    .end local v0    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v3    # "i$":I
    .end local v4    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/simpleframework/xml/core/Label;>;"
    .end local v5    # "len$":I
    :goto_1
    return-object v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .locals 3
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getKey(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "key":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/LabelExtractor;->getGroup(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object v1

    .local v1, "list":Lorg/simpleframework/xml/core/LabelGroup;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/LabelGroup;->getPrimary()Lorg/simpleframework/xml/core/Label;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getList(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/util/List;
    .locals 3
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Contact;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getKey(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "key":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/LabelExtractor;->getGroup(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object v1

    .local v1, "list":Lorg/simpleframework/xml/core/LabelGroup;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/LabelGroup;->getList()Ljava/util/List;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method
