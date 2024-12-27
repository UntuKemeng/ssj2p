.class public Lcom/android/server/wifi/p2p/common/DefaultImageRequest;
.super Ljava/lang/Object;
.source "DefaultImageRequest.java"


# static fields
.field public static EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/server/wifi/p2p/common/DefaultImageRequest; = null

.field public static EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/android/server/wifi/p2p/common/DefaultImageRequest; = null

.field public static final OFFSET_DEFAULT:F = 0.0f

.field public static final SCALE_DEFAULT:F = 1.0f


# instance fields
.field public displayName:Ljava/lang/String;

.field public identifier:Ljava/lang/String;

.field public isAvailableNumber:Z

.field public isCircular:Z

.field public letterSize:I

.field public offset:F

.field public scale:F

.field public spamLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;

    invoke-direct {v0}, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;-><init>()V

    sput-object v0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/android/server/wifi/p2p/common/DefaultImageRequest;

    new-instance v0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/server/wifi/p2p/common/DefaultImageRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->scale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->offset:F

    iput-boolean v1, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->isCircular:Z

    iput v1, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->letterSize:I

    iput-boolean v1, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->isAvailableNumber:Z

    iput v1, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->spamLevel:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFZ)V
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "scale"    # F
    .param p4, "offset"    # F
    .param p5, "isCircular"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->scale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->offset:F

    iput-boolean v1, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->isCircular:Z

    iput v1, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->letterSize:I

    iput-boolean v1, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->isAvailableNumber:Z

    iput v1, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->spamLevel:I

    iput-object p1, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->displayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->identifier:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->scale:F

    iput p4, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->offset:F

    iput-boolean p5, p0, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;->isCircular:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "isCircular"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;FFZ)V

    return-void
.end method
