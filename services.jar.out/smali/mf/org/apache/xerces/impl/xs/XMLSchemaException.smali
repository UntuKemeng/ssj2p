.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
.super Ljava/lang/Exception;
.source "XMLSchemaException.java"


# static fields
.field static final serialVersionUID:J = -0x7e3efb57073b7ccaL


# instance fields
.field args:[Ljava/lang/Object;

.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 40
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->key:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->args:[Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->key:Ljava/lang/String;

    return-object v0
.end method
