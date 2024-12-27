.class Lorg/simpleframework/xml/core/DetailExtractor;
.super Ljava/lang/Object;
.source "DetailExtractor.java"


# instance fields
.field private final details:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Lorg/simpleframework/xml/core/Detail;",
            ">;"
        }
    .end annotation
.end field

.field private final fields:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Lorg/simpleframework/xml/core/ContactList;",
            ">;"
        }
    .end annotation
.end field

.field private final methods:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Lorg/simpleframework/xml/core/ContactList;",
            ">;"
        }
    .end annotation
.end field

.field private final override:Lorg/simpleframework/xml/DefaultType;

.field private final support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Support;)V
    .locals 1
    .param p1, "support"    # Lorg/simpleframework/xml/core/Support;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/DetailExtractor;-><init>(Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/DefaultType;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/DefaultType;)V
    .locals 1
    .param p1, "support"    # Lorg/simpleframework/xml/core/Support;
    .param p2, "override"    # Lorg/simpleframework/xml/DefaultType;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->methods:Lorg/simpleframework/xml/util/Cache;

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->fields:Lorg/simpleframework/xml/util/Cache;

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->details:Lorg/simpleframework/xml/util/Cache;

    iput-object p2, p0, Lorg/simpleframework/xml/core/DetailExtractor;->override:Lorg/simpleframework/xml/DefaultType;

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->support:Lorg/simpleframework/xml/core/Support;

    return-void
.end method

.method private getFields(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "detail"    # Lorg/simpleframework/xml/core/Detail;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v0, Lorg/simpleframework/xml/core/FieldScanner;

    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, p2, v1}, Lorg/simpleframework/xml/core/FieldScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    .local v0, "list":Lorg/simpleframework/xml/core/ContactList;
    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->fields:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getMethods(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "detail"    # Lorg/simpleframework/xml/core/Detail;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v0, Lorg/simpleframework/xml/core/MethodScanner;

    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, p2, v1}, Lorg/simpleframework/xml/core/MethodScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    .local v0, "list":Lorg/simpleframework/xml/core/ContactList;
    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->methods:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->details:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Detail;

    .local v0, "detail":Lorg/simpleframework/xml/core/Detail;
    if-nez v0, :cond_0

    new-instance v0, Lorg/simpleframework/xml/core/DetailScanner;

    .end local v0    # "detail":Lorg/simpleframework/xml/core/Detail;
    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->override:Lorg/simpleframework/xml/DefaultType;

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/xml/core/DetailScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    .restart local v0    # "detail":Lorg/simpleframework/xml/core/Detail;
    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->details:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getFields(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lorg/simpleframework/xml/core/DetailExtractor;->fields:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/ContactList;

    .local v1, "list":Lorg/simpleframework/xml/core/ContactList;
    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v0

    .local v0, "detail":Lorg/simpleframework/xml/core/Detail;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/DetailExtractor;->getFields(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v1

    .end local v0    # "detail":Lorg/simpleframework/xml/core/Detail;
    :cond_0
    return-object v1
.end method

.method public getMethods(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lorg/simpleframework/xml/core/DetailExtractor;->methods:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/ContactList;

    .local v1, "list":Lorg/simpleframework/xml/core/ContactList;
    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v0

    .local v0, "detail":Lorg/simpleframework/xml/core/Detail;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/DetailExtractor;->getMethods(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v1

    .end local v0    # "detail":Lorg/simpleframework/xml/core/Detail;
    :cond_0
    return-object v1
.end method
