.class Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;
.super Ljava/util/ArrayList;
.source "SignatureBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/SignatureBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParameterList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/simpleframework/xml/core/Parameter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;)V
    .locals 0
    .param p1, "list"    # Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method
