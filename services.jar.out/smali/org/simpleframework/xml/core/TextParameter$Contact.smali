.class Lorg/simpleframework/xml/core/TextParameter$Contact;
.super Lorg/simpleframework/xml/core/ParameterContact;
.source "TextParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/TextParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Contact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/core/ParameterContact",
        "<",
        "Lorg/simpleframework/xml/Text;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/Text;Ljava/lang/reflect/Constructor;I)V
    .locals 0
    .param p1, "label"    # Lorg/simpleframework/xml/Text;
    .param p2, "factory"    # Ljava/lang/reflect/Constructor;
    .param p3, "index"    # I

    .prologue
    .line 273
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/ParameterContact;-><init>(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Constructor;I)V

    .line 274
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    const-string v0, ""

    return-object v0
.end method
