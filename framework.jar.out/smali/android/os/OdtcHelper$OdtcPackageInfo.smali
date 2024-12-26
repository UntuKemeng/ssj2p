.class Landroid/os/OdtcHelper$OdtcPackageInfo;
.super Ljava/lang/Object;
.source "OdtcHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OdtcHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OdtcPackageInfo"
.end annotation


# instance fields
.field private appType:C

.field private healthFactor:S

.field private memConsumed:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/16 v0, 0x45

    iput-char v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->appType:C

    .line 227
    iput-short v1, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->healthFactor:S

    .line 228
    iput v1, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->memConsumed:I

    .line 229
    return-void
.end method

.method constructor <init>(CII)V
    .locals 1
    .param p1, "appType"    # C
    .param p2, "healthFactor"    # I
    .param p3, "memConsumed"    # I

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-char p1, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->appType:C

    .line 233
    int-to-short v0, p2

    iput-short v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->healthFactor:S

    .line 234
    iput p3, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->memConsumed:I

    .line 235
    return-void
.end method

.method static synthetic access$000(Landroid/os/OdtcHelper$OdtcPackageInfo;)C
    .locals 1
    .param p0, "x0"    # Landroid/os/OdtcHelper$OdtcPackageInfo;

    .prologue
    .line 220
    iget-char v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->appType:C

    return v0
.end method

.method static synthetic access$100(Landroid/os/OdtcHelper$OdtcPackageInfo;)S
    .locals 1
    .param p0, "x0"    # Landroid/os/OdtcHelper$OdtcPackageInfo;

    .prologue
    .line 220
    iget-short v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->healthFactor:S

    return v0
.end method

.method static synthetic access$200(Landroid/os/OdtcHelper$OdtcPackageInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/os/OdtcHelper$OdtcPackageInfo;

    .prologue
    .line 220
    iget v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->memConsumed:I

    return v0
.end method


# virtual methods
.method getAppType()C
    .locals 1

    .prologue
    .line 238
    iget-char v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->appType:C

    return v0
.end method

.method getHealthFactor()S
    .locals 1

    .prologue
    .line 242
    iget-short v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->healthFactor:S

    return v0
.end method

.method getMemConsumed()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->memConsumed:I

    return v0
.end method
