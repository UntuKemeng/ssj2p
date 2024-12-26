.class public Landroid/hardware/scontext/SContextActivityCalibrationAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextActivityCalibrationAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextActivityCalibrationAttribute"


# instance fields
.field private mData:I

.field private mStatus:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 14
    iput v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    .line 15
    iput v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    .line 21
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->setAttribute()V

    .line 22
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "data"    # I

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 14
    iput v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    .line 15
    iput v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    .line 37
    iput p1, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    .line 38
    iput p2, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    .line 39
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->setAttribute()V

    .line 40
    return-void
.end method

.method private setAttribute()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v1, "attribute":Landroid/os/Bundle;
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 61
    .local v0, "acData":[B
    iget v2, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    .line 62
    iget v2, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 63
    const-string v2, "activity_calibration"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 64
    const-string v2, "SContextActivityCalibrationAttribute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity Status Data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/16 v2, 0x35

    invoke-super {p0, v2, v1}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 66
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    iget v1, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 47
    :cond_0
    const-string v1, "SContextActivityCalibrationAttribute"

    const-string v2, "Moving Status is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return v0

    .line 50
    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    .line 52
    :cond_2
    const-string v1, "SContextActivityCalibrationAttribute"

    const-string v2, "Data of calibration is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method