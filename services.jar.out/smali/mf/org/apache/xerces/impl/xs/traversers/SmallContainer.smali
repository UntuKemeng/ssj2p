.class Lmf/org/apache/xerces/impl/xs/traversers/SmallContainer;
.super Lmf/org/apache/xerces/impl/xs/traversers/Container;
.source "XSAttributeChecker.java"


# instance fields
.field keys:[Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/Container;-><init>()V

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SmallContainer;->keys:[Ljava/lang/String;

    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SmallContainer;->values:[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SmallContainer;->pos:I

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SmallContainer;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SmallContainer;->values:[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SmallContainer;->keys:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SmallContainer;->pos:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SmallContainer;->values:[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SmallContainer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SmallContainer;->pos:I

    aput-object p2, v0, v1

    return-void
.end method
