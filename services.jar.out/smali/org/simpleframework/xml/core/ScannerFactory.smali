.class Lorg/simpleframework/xml/core/ScannerFactory;
.super Ljava/lang/Object;
.source "ScannerFactory.java"


# instance fields
.field private final cache:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Lorg/simpleframework/xml/core/Scanner;",
            ">;"
        }
    .end annotation
.end field

.field private final support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Support;)V
    .locals 1
    .param p1, "support"    # Lorg/simpleframework/xml/core/Support;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/util/Cache;

    iput-object p1, p0, Lorg/simpleframework/xml/core/ScannerFactory;->support:Lorg/simpleframework/xml/core/Support;

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Scanner;

    .local v1, "schema":Lorg/simpleframework/xml/core/Scanner;
    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/simpleframework/xml/core/ScannerFactory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/Support;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v0

    .local v0, "detail":Lorg/simpleframework/xml/core/Detail;
    iget-object v2, p0, Lorg/simpleframework/xml/core/ScannerFactory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/Support;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lorg/simpleframework/xml/core/PrimitiveScanner;

    .end local v1    # "schema":Lorg/simpleframework/xml/core/Scanner;
    invoke-direct {v1, v0}, Lorg/simpleframework/xml/core/PrimitiveScanner;-><init>(Lorg/simpleframework/xml/core/Detail;)V

    .restart local v1    # "schema":Lorg/simpleframework/xml/core/Scanner;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v2, p1, v1}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "detail":Lorg/simpleframework/xml/core/Detail;
    :cond_1
    return-object v1

    .restart local v0    # "detail":Lorg/simpleframework/xml/core/Detail;
    :cond_2
    new-instance v1, Lorg/simpleframework/xml/core/ObjectScanner;

    .end local v1    # "schema":Lorg/simpleframework/xml/core/Scanner;
    iget-object v2, p0, Lorg/simpleframework/xml/core/ScannerFactory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v1, v0, v2}, Lorg/simpleframework/xml/core/ObjectScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    .restart local v1    # "schema":Lorg/simpleframework/xml/core/Scanner;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Scanner;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/core/ScannerFactory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/Support;->isContainer(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/DefaultScanner;

    .end local v1    # "schema":Lorg/simpleframework/xml/core/Scanner;
    iget-object v2, p0, Lorg/simpleframework/xml/core/ScannerFactory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v1, v0, v2}, Lorg/simpleframework/xml/core/DefaultScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    .restart local v1    # "schema":Lorg/simpleframework/xml/core/Scanner;
    goto :goto_0
.end method
