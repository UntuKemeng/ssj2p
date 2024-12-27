.class final Lcom/android/server/lights/LightsService$SmartGlowImpl;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartGlowImpl"
.end annotation


# instance fields
.field private mColor:[I

.field private mLedno:I

.field private mOffMS:[I

.field private mOnMS:[I

.field private mRepeatCount:I

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mColor:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/LightsService;
    .param p2, "x1"    # Lcom/android/server/lights/LightsService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$SmartGlowImpl;-><init>(Lcom/android/server/lights/LightsService;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$SmartGlowImpl;

    .prologue
    iget v0, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mRepeatCount:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$SmartGlowImpl;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mRepeatCount:I

    return p1
.end method

.method static synthetic access$1210(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$SmartGlowImpl;

    .prologue
    iget v0, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mRepeatCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mRepeatCount:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$SmartGlowImpl;

    .prologue
    iget v0, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mLedno:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$SmartGlowImpl;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mLedno:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$SmartGlowImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mColor:[I

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$SmartGlowImpl;
    .param p1, "x1"    # [I

    .prologue
    iput-object p1, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mColor:[I

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$SmartGlowImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOnMS:[I

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$SmartGlowImpl;
    .param p1, "x1"    # [I

    .prologue
    iput-object p1, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOnMS:[I

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$SmartGlowImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOffMS:[I

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$SmartGlowImpl;
    .param p1, "x1"    # [I

    .prologue
    iput-object p1, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOffMS:[I

    return-object p1
.end method
