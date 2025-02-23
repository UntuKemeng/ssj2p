.class Lorg/simpleframework/xml/convert/ConverterScanner;
.super Ljava/lang/Object;
.source "ConverterScanner.java"


# instance fields
.field private final builder:Lorg/simpleframework/xml/convert/ScannerBuilder;

.field private final factory:Lorg/simpleframework/xml/convert/ConverterFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/convert/ConverterFactory;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ConverterFactory;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/ConverterScanner;->factory:Lorg/simpleframework/xml/convert/ConverterFactory;

    new-instance v0, Lorg/simpleframework/xml/convert/ScannerBuilder;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ScannerBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/ConverterScanner;->builder:Lorg/simpleframework/xml/convert/ScannerBuilder;

    return-void
.end method

.method private getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "label":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/xml/convert/ConverterScanner;->builder:Lorg/simpleframework/xml/convert/ScannerBuilder;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder;->build(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Scanner;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/convert/Scanner;->scan(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method private getConvert(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Convert;
    .locals 6
    .param p1, "real"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-class v2, Lorg/simpleframework/xml/convert/Convert;

    invoke-direct {p0, p1, v2}, Lorg/simpleframework/xml/convert/ConverterScanner;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Convert;

    .local v0, "convert":Lorg/simpleframework/xml/convert/Convert;
    if-eqz v0, :cond_0

    const-class v2, Lorg/simpleframework/xml/Root;

    invoke-direct {p0, p1, v2}, Lorg/simpleframework/xml/convert/ConverterScanner;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/Root;

    .local v1, "root":Lorg/simpleframework/xml/Root;
    if-nez v1, :cond_0

    new-instance v2, Lorg/simpleframework/xml/convert/ConvertException;

    const-string v3, "Root annotation required for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .end local v1    # "root":Lorg/simpleframework/xml/Root;
    :cond_0
    return-object v0
.end method

.method private getConvert(Lorg/simpleframework/xml/strategy/Type;)Lorg/simpleframework/xml/convert/Convert;
    .locals 6
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-class v2, Lorg/simpleframework/xml/convert/Convert;

    invoke-interface {p1, v2}, Lorg/simpleframework/xml/strategy/Type;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Convert;

    .local v0, "convert":Lorg/simpleframework/xml/convert/Convert;
    if-eqz v0, :cond_0

    const-class v2, Lorg/simpleframework/xml/Element;

    invoke-interface {p1, v2}, Lorg/simpleframework/xml/strategy/Type;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/Element;

    .local v1, "element":Lorg/simpleframework/xml/Element;
    if-nez v1, :cond_0

    new-instance v2, Lorg/simpleframework/xml/convert/ConvertException;

    const-string v3, "Element annotation required for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .end local v1    # "element":Lorg/simpleframework/xml/Element;
    :cond_0
    return-object v0
.end method

.method private getConvert(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Convert;
    .locals 1
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "real"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/convert/ConverterScanner;->getConvert(Lorg/simpleframework/xml/strategy/Type;)Lorg/simpleframework/xml/convert/Convert;

    move-result-object v0

    .local v0, "convert":Lorg/simpleframework/xml/convert/Convert;
    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lorg/simpleframework/xml/convert/ConverterScanner;->getConvert(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Convert;

    move-result-object v0

    .end local v0    # "convert":Lorg/simpleframework/xml/convert/Convert;
    :cond_0
    return-object v0
.end method

.method private getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .local v0, "real":Ljava/lang/Class;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .end local v0    # "real":Ljava/lang/Class;
    :cond_0
    return-object v0
.end method

.method private getType(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Ljava/lang/Class;
    .locals 1
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "value"    # Lorg/simpleframework/xml/strategy/Value;

    .prologue
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .local v0, "real":Ljava/lang/Class;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    .end local v0    # "real":Ljava/lang/Class;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getConverter(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Lorg/simpleframework/xml/convert/Converter;
    .locals 3
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/convert/ConverterScanner;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "real":Ljava/lang/Class;
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/convert/ConverterScanner;->getConvert(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Convert;

    move-result-object v0

    .local v0, "convert":Lorg/simpleframework/xml/convert/Convert;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/convert/ConverterScanner;->factory:Lorg/simpleframework/xml/convert/ConverterFactory;

    invoke-virtual {v2, v0}, Lorg/simpleframework/xml/convert/ConverterFactory;->getInstance(Lorg/simpleframework/xml/convert/Convert;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getConverter(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/convert/Converter;
    .locals 3
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "value"    # Lorg/simpleframework/xml/strategy/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/convert/ConverterScanner;->getType(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "real":Ljava/lang/Class;
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/convert/ConverterScanner;->getConvert(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Convert;

    move-result-object v0

    .local v0, "convert":Lorg/simpleframework/xml/convert/Convert;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/convert/ConverterScanner;->factory:Lorg/simpleframework/xml/convert/ConverterFactory;

    invoke-virtual {v2, v0}, Lorg/simpleframework/xml/convert/ConverterFactory;->getInstance(Lorg/simpleframework/xml/convert/Convert;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
