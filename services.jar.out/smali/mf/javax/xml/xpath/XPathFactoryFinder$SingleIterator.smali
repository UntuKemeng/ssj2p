.class abstract Lmf/javax/xml/xpath/XPathFactoryFinder$SingleIterator;
.super Ljava/lang/Object;
.source "XPathFactoryFinder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/javax/xml/xpath/XPathFactoryFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SingleIterator"
.end annotation


# instance fields
.field private seen:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/javax/xml/xpath/XPathFactoryFinder$SingleIterator;->seen:Z

    return-void
.end method

.method synthetic constructor <init>(Lmf/javax/xml/xpath/XPathFactoryFinder$SingleIterator;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmf/javax/xml/xpath/XPathFactoryFinder$SingleIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/javax/xml/xpath/XPathFactoryFinder$SingleIterator;->seen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/javax/xml/xpath/XPathFactoryFinder$SingleIterator;->seen:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/javax/xml/xpath/XPathFactoryFinder$SingleIterator;->seen:Z

    invoke-virtual {p0}, Lmf/javax/xml/xpath/XPathFactoryFinder$SingleIterator;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract value()Ljava/lang/Object;
.end method
