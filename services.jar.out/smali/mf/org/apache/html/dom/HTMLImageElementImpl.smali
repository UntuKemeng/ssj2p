.class public Lmf/org/apache/html/dom/HTMLImageElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLImageElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLImageElement;


# static fields
.field private static final serialVersionUID:J = 0x13c4588521d240e3L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAlign()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "align"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "alt"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBorder()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "border"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHspace()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "hspace"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsMap()Z
    .locals 1

    .prologue
    const-string v0, "ismap"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getLongDesc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "longdesc"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLowSrc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "lowsrc"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "src"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseMap()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "useMap"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVspace()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "vspace"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlt(Ljava/lang/String;)V
    .locals 1
    .param p1, "alt"    # Ljava/lang/String;

    .prologue
    const-string v0, "alt"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBorder(Ljava/lang/String;)V
    .locals 1
    .param p1, "border"    # Ljava/lang/String;

    .prologue
    const-string v0, "border"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 1
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    const-string v0, "height"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHspace(Ljava/lang/String;)V
    .locals 1
    .param p1, "hspace"    # Ljava/lang/String;

    .prologue
    const-string v0, "hspace"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIsMap(Z)V
    .locals 1
    .param p1, "isMap"    # Z

    .prologue
    const-string v0, "ismap"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLongDesc(Ljava/lang/String;)V
    .locals 1
    .param p1, "longDesc"    # Ljava/lang/String;

    .prologue
    const-string v0, "longdesc"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLowSrc(Ljava/lang/String;)V
    .locals 1
    .param p1, "lowSrc"    # Ljava/lang/String;

    .prologue
    const-string v0, "lowsrc"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const-string v0, "src"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseMap(Ljava/lang/String;)V
    .locals 1
    .param p1, "useMap"    # Ljava/lang/String;

    .prologue
    const-string v0, "useMap"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVspace(Ljava/lang/String;)V
    .locals 1
    .param p1, "vspace"    # Ljava/lang/String;

    .prologue
    const-string v0, "vspace"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 1
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    const-string v0, "width"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
