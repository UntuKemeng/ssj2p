.class Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;
.super Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;
.source "XMLSchemaFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XMLGrammarPoolImplExtension"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    .line 469
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;-><init>(I)V

    .line 474
    return-void
.end method


# virtual methods
.method getGrammarCount()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;->fGrammarCount:I

    return v0
.end method
