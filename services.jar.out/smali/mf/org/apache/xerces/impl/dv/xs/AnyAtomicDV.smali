.class Lmf/org/apache/xerces/impl/dv/xs/AnyAtomicDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "AnyAtomicDV.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    return-object p1
.end method

.method public getAllowedFacets()S
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
