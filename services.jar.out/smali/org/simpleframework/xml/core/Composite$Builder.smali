.class Lorg/simpleframework/xml/core/Composite$Builder;
.super Ljava/lang/Object;
.source "Composite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/Composite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field protected final composite:Lorg/simpleframework/xml/core/Composite;

.field protected final criteria:Lorg/simpleframework/xml/core/Criteria;

.field protected final schema:Lorg/simpleframework/xml/core/Schema;

.field protected final value:Lorg/simpleframework/xml/core/Instance;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Criteria;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)V
    .locals 0
    .param p1, "composite"    # Lorg/simpleframework/xml/core/Composite;
    .param p2, "criteria"    # Lorg/simpleframework/xml/core/Criteria;
    .param p3, "schema"    # Lorg/simpleframework/xml/core/Schema;
    .param p4, "value"    # Lorg/simpleframework/xml/core/Instance;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/Composite$Builder;->composite:Lorg/simpleframework/xml/core/Composite;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Composite$Builder;->criteria:Lorg/simpleframework/xml/core/Criteria;

    iput-object p3, p0, Lorg/simpleframework/xml/core/Composite$Builder;->schema:Lorg/simpleframework/xml/core/Schema;

    iput-object p4, p0, Lorg/simpleframework/xml/core/Composite$Builder;->value:Lorg/simpleframework/xml/core/Instance;

    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 4
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite$Builder;->value:Lorg/simpleframework/xml/core/Instance;

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v1

    .local v1, "source":Ljava/lang/Object;
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite$Builder;->schema:Lorg/simpleframework/xml/core/Schema;

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Schema;->getSection()Lorg/simpleframework/xml/core/Section;

    move-result-object v0

    .local v0, "section":Lorg/simpleframework/xml/core/Section;
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite$Builder;->value:Lorg/simpleframework/xml/core/Instance;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite$Builder;->composite:Lorg/simpleframework/xml/core/Composite;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite$Builder;->schema:Lorg/simpleframework/xml/core/Schema;

    # invokes: Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    invoke-static {v2, p1, v1, v3}, Lorg/simpleframework/xml/core/Composite;->access$100(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite$Builder;->composite:Lorg/simpleframework/xml/core/Composite;

    # invokes: Lorg/simpleframework/xml/core/Composite;->readText(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    invoke-static {v2, p1, v1, v0}, Lorg/simpleframework/xml/core/Composite;->access$200(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite$Builder;->composite:Lorg/simpleframework/xml/core/Composite;

    # invokes: Lorg/simpleframework/xml/core/Composite;->readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    invoke-static {v2, p1, v1, v0}, Lorg/simpleframework/xml/core/Composite;->access$300(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite$Builder;->composite:Lorg/simpleframework/xml/core/Composite;

    # invokes: Lorg/simpleframework/xml/core/Composite;->readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    invoke-static {v2, p1, v1, v0}, Lorg/simpleframework/xml/core/Composite;->access$400(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite$Builder;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Criteria;->commit(Ljava/lang/Object;)V

    return-object v1
.end method
