.class final enum Lorg/simpleframework/xml/core/MethodType;
.super Ljava/lang/Enum;
.source "MethodType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/simpleframework/xml/core/MethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/simpleframework/xml/core/MethodType;

.field public static final enum GET:Lorg/simpleframework/xml/core/MethodType;

.field public static final enum IS:Lorg/simpleframework/xml/core/MethodType;

.field public static final enum NONE:Lorg/simpleframework/xml/core/MethodType;

.field public static final enum SET:Lorg/simpleframework/xml/core/MethodType;


# instance fields
.field private prefix:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x3

    new-instance v0, Lorg/simpleframework/xml/core/MethodType;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3, v2}, Lorg/simpleframework/xml/core/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    new-instance v0, Lorg/simpleframework/xml/core/MethodType;

    const-string v1, "IS"

    invoke-direct {v0, v1, v5, v4}, Lorg/simpleframework/xml/core/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    new-instance v0, Lorg/simpleframework/xml/core/MethodType;

    const-string v1, "SET"

    invoke-direct {v0, v1, v4, v2}, Lorg/simpleframework/xml/core/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    new-instance v0, Lorg/simpleframework/xml/core/MethodType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/simpleframework/xml/core/MethodType;->NONE:Lorg/simpleframework/xml/core/MethodType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/simpleframework/xml/core/MethodType;

    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->NONE:Lorg/simpleframework/xml/core/MethodType;

    aput-object v1, v0, v2

    sput-object v0, Lorg/simpleframework/xml/core/MethodType;->$VALUES:[Lorg/simpleframework/xml/core/MethodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "prefix"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/simpleframework/xml/core/MethodType;->prefix:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/core/MethodType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lorg/simpleframework/xml/core/MethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/MethodType;

    return-object v0
.end method

.method public static values()[Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    .prologue
    sget-object v0, Lorg/simpleframework/xml/core/MethodType;->$VALUES:[Lorg/simpleframework/xml/core/MethodType;

    invoke-virtual {v0}, [Lorg/simpleframework/xml/core/MethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/xml/core/MethodType;

    return-object v0
.end method


# virtual methods
.method public getPrefix()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/simpleframework/xml/core/MethodType;->prefix:I

    return v0
.end method
