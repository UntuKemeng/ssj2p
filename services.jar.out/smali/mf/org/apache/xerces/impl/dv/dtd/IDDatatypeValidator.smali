.class public Lmf/org/apache/xerces/impl/dv/dtd/IDDatatypeValidator;
.super Ljava/lang/Object;
.source "IDDatatypeValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dv/DatatypeValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->useNamespaces()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "IDInvalidWithNamespaces"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "IDInvalid"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-interface {p2, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->isIdDeclared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "IDNotUnique"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-interface {p2, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->addId(Ljava/lang/String;)V

    return-void
.end method
