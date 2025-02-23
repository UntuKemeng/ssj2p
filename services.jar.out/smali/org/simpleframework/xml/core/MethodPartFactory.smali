.class Lorg/simpleframework/xml/core/MethodPartFactory;
.super Ljava/lang/Object;
.source "MethodPartFactory.java"


# instance fields
.field private final factory:Lorg/simpleframework/xml/core/AnnotationFactory;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 1
    .param p1, "detail"    # Lorg/simpleframework/xml/core/Detail;
    .param p2, "support"    # Lorg/simpleframework/xml/core/Support;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/AnnotationFactory;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodPartFactory;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    return-void
.end method

.method private getAnnotation(Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v0

    .local v0, "dependents":[Ljava/lang/Class;
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "type":Ljava/lang/Class;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodPartFactory;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-virtual {v2, v1, v0}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getMethodType(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    .local v0, "type":Lorg/simpleframework/xml/core/MethodType;
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/simpleframework/xml/core/Reflector;->getParameterDependents(Ljava/lang/reflect/Method;I)[Ljava/lang/Class;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lorg/simpleframework/xml/core/Reflector;->getReturnDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lorg/simpleframework/xml/core/Reflector;->getReturnDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMethodType(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    goto :goto_0

    :cond_1
    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->NONE:Lorg/simpleframework/xml/core/MethodType;

    goto :goto_0
.end method

.method private getName(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodName;
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getMethodType(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    .local v0, "type":Lorg/simpleframework/xml/core/MethodType;
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->getRead(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->getRead(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->getWrite(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/simpleframework/xml/core/MethodException;

    const-string v2, "Annotation %s must mark a set or get method"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private getParameterType(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "list":[Ljava/lang/Class;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRead(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;
    .locals 7
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "type"    # Lorg/simpleframework/xml/core/MethodType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "list":[Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "real":Ljava/lang/String;
    array-length v3, v0

    if-eqz v3, :cond_0

    new-instance v3, Lorg/simpleframework/xml/core/MethodException;

    const-string v4, "Get method %s is not a valid property"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_0
    invoke-direct {p0, v2, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getTypeName(Ljava/lang/String;Lorg/simpleframework/xml/core/MethodType;)Ljava/lang/String;

    move-result-object v1

    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    new-instance v3, Lorg/simpleframework/xml/core/MethodException;

    const-string v4, "Could not get name for %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_1
    new-instance v3, Lorg/simpleframework/xml/core/MethodName;

    invoke-direct {v3, p1, p2, v1}, Lorg/simpleframework/xml/core/MethodName;-><init>(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;Ljava/lang/String;)V

    return-object v3
.end method

.method private getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "list":[Ljava/lang/Class;
    array-length v1, v0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTypeName(Ljava/lang/String;Lorg/simpleframework/xml/core/MethodType;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/simpleframework/xml/core/MethodType;

    .prologue
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/MethodType;->getPrefix()I

    move-result v0

    .local v0, "prefix":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "size":I
    if-le v1, v0, :cond_0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getWrite(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;
    .locals 7
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "type"    # Lorg/simpleframework/xml/core/MethodType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "list":[Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "real":Ljava/lang/String;
    array-length v3, v0

    if-eq v3, v5, :cond_0

    new-instance v3, Lorg/simpleframework/xml/core/MethodException;

    const-string v4, "Set method %s is not a valid property"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_0
    invoke-direct {p0, v2, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getTypeName(Ljava/lang/String;Lorg/simpleframework/xml/core/MethodType;)Ljava/lang/String;

    move-result-object v1

    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    new-instance v3, Lorg/simpleframework/xml/core/MethodException;

    const-string v4, "Could not get name for %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_1
    new-instance v3, Lorg/simpleframework/xml/core/MethodName;

    invoke-direct {v3, p1, p2, v1}, Lorg/simpleframework/xml/core/MethodName;-><init>(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .param p3, "list"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getName(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object v0

    .local v0, "name":Lorg/simpleframework/xml/core/MethodName;
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/MethodName;->getType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v1

    .local v1, "type":Lorg/simpleframework/xml/core/MethodType;
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_0

    new-instance v2, Lorg/simpleframework/xml/core/SetPart;

    invoke-direct {v2, v0, p2, p3}, Lorg/simpleframework/xml/core/SetPart;-><init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/simpleframework/xml/core/GetPart;

    invoke-direct {v2, v0, p2, p3}, Lorg/simpleframework/xml/core/GetPart;-><init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_0
.end method

.method public getInstance(Ljava/lang/reflect/Method;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "list"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getAnnotation(Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .local v0, "label":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getMethodType(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    .local v0, "type":Lorg/simpleframework/xml/core/MethodType;
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getParameterType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
