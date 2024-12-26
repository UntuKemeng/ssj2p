.class public Lmf/org/apache/wml/dom/WMLOptionElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLOptionElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLOptionElement;


# static fields
.field private static final serialVersionUID:J = -0x2fa1f9ff0e879561L


# direct methods
.method public constructor <init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lmf/org/apache/wml/dom/WMLDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lmf/org/apache/wml/dom/WMLElementImpl;-><init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "class"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnPick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "onpick"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "xml:lang"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setOnPick(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "onpick"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, "xml:lang"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method