.class public Lmf/org/apache/html/dom/HTMLParagraphElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLParagraphElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLParagraphElement;


# static fields
.field private static final serialVersionUID:J = 0x70112ee0fbc9c4afL


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

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLParagraphElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLParagraphElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
