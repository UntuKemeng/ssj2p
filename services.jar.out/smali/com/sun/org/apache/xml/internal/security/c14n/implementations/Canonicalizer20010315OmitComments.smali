.class public Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315OmitComments;
.super Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final engineGetIncludeComments()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final engineGetURI()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    return-object v0
.end method
