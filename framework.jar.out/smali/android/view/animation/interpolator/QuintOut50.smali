.class public Landroid/view/animation/interpolator/QuintOut50;
.super Landroid/view/animation/BaseInterpolator;
.source "QuintOut50.java"


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/animation/interpolator/QuintOut50;->segments:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f008312    # 0.502f
        0x3f3df3b6    # 0.742f
    .end array-data

    :array_1
    .array-data 4
        0x3f3df3b6    # 0.742f
        0x3f8a7efa    # 1.082f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "input"    # F

    .prologue
    .line 79
    sget-object v0, Landroid/view/animation/interpolator/QuintOut50;->segments:[[F

    invoke-static {p1, v0}, Landroid/view/animation/interpolator/SineBase;->getInterpolation(F[[F)F

    move-result v0

    return v0
.end method
