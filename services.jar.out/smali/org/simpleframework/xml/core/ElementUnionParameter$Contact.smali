.class Lorg/simpleframework/xml/core/ElementUnionParameter$Contact;
.super Lorg/simpleframework/xml/core/ParameterContact;
.source "ElementUnionParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/ElementUnionParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Contact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/core/ParameterContact",
        "<",
        "Lorg/simpleframework/xml/Element;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/Element;Ljava/lang/reflect/Constructor;I)V
    .locals 0
    .param p1, "element"    # Lorg/simpleframework/xml/Element;
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
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionParameter$Contact;->label:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/simpleframework/xml/Element;

    invoke-interface {v0}, Lorg/simpleframework/xml/Element;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
