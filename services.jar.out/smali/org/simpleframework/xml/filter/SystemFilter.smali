.class public Lorg/simpleframework/xml/filter/SystemFilter;
.super Ljava/lang/Object;
.source "SystemFilter.java"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private filter:Lorg/simpleframework/xml/filter/Filter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/filter/SystemFilter;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .locals 0
    .param p1, "filter"    # Lorg/simpleframework/xml/filter/Filter;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/filter/SystemFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    return-void
.end method


# virtual methods
.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/filter/SystemFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/simpleframework/xml/filter/SystemFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
