.class Lorg/simpleframework/xml/core/ElementArrayParameter$Contact;
.super Lorg/simpleframework/xml/core/ParameterContact;
.source "ElementArrayParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/ElementArrayParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Contact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/core/ParameterContact",
        "<",
        "Lorg/simpleframework/xml/ElementArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/ElementArray;Ljava/lang/reflect/Constructor;I)V
    .locals 0
    .param p1, "label"    # Lorg/simpleframework/xml/ElementArray;
    .param p2, "factory"    # Ljava/lang/reflect/Constructor;
    .param p3, "index"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/ParameterContact;-><init>(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Constructor;I)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayParameter$Contact;->label:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/simpleframework/xml/ElementArray;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementArray;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
