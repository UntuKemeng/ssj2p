.class Lorg/simpleframework/xml/stream/IdentityStyle;
.super Ljava/lang/Object;
.source "IdentityStyle.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/Style;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    return-object p1
.end method

.method public getElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    return-object p1
.end method
