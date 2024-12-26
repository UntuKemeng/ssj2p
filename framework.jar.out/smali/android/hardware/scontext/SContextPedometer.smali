.class public Landroid/hardware/scontext/SContextPedometer;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextPedometer.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextPedometer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 776
    new-instance v0, Landroid/hardware/scontext/SContextPedometer$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometer$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextPedometer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    .line 166
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 172
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextPedometer;->readFromParcel(Landroid/os/Parcel;)V

    .line 173
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    .line 769
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getArraySize()I
    .locals 3

    .prologue
    .line 727
    const/4 v0, 0x0

    .line 728
    .local v0, "res":I
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 729
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "LoggingCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 731
    :cond_1
    return v0
.end method

.method public getCalorie()D
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeCalorie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCalorieDiff()D
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CalorieDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCalorieDiffArray()[D
    .locals 3

    .prologue
    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 591
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "CalorieDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 593
    :cond_1
    return-object v0
.end method

.method public getCumulativeCalorie()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeCalorie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeDistance()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeDistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeRunDownStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeRunStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeRunUpStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeTotalStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeTotalStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeWalkDownStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeWalkStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeWalkUpStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeDistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDistanceDiff()D
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "DistanceDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDistanceDiffArray()[D
    .locals 3

    .prologue
    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 605
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "DistanceDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 607
    :cond_1
    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    return v0
.end method

.method public getRunDownStepCount()J
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunDownStepCountDiff()J
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunDownStepCountDiffArray()[J
    .locals 3

    .prologue
    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 703
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "RunDownStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 705
    :cond_1
    return-object v0
.end method

.method public getRunStepCount()J
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunStepCountDiff()J
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunStepCountDiffArray()[J
    .locals 3

    .prologue
    .line 673
    const/4 v0, 0x0

    .line 674
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 675
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "RunStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 677
    :cond_1
    return-object v0
.end method

.method public getRunUpStepCount()J
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunUpStepCountDiff()J
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunUpStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunUpStepCountDiffArray()[J
    .locals 3

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 689
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "RunUpStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 691
    :cond_1
    return-object v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "Speed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSpeedArray()[D
    .locals 3

    .prologue
    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 577
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "SpeedArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 579
    :cond_1
    return-object v0
.end method

.method public getStepStatus()I
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "StepStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStampArray()[J
    .locals 3

    .prologue
    .line 714
    const/4 v0, 0x0

    .line 715
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 716
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "TimeStampArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 718
    :cond_1
    return-object v0
.end method

.method public getTotalStepCount()J
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeTotalStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalStepCountDiff()J
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "TotalStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalStepCountDiffArray()[J
    .locals 3

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 619
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "TotalStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 621
    :cond_1
    return-object v0
.end method

.method public getUpDownStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "UpDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpDownStepCountDiff()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "UpDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkDownStepCount()J
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkDownStepCountDiff()J
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkDownStepCountDiffArray()[J
    .locals 3

    .prologue
    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 661
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "WalkDownStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 663
    :cond_1
    return-object v0
.end method

.method public getWalkStepCount()J
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkStepCountDiff()J
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkStepCountDiffArray()[J
    .locals 3

    .prologue
    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 633
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "WalkStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 635
    :cond_1
    return-object v0
.end method

.method public getWalkUpStepCount()J
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkUpStepCountDiff()J
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkUpStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkUpStepCountDiffArray()[J
    .locals 3

    .prologue
    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 647
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "WalkUpStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 649
    :cond_1
    return-object v0
.end method

.method public getWalkingFrequency()D
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkingFrequency"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method setValues(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 741
    iput-object p1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    .line 742
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    .line 743
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 756
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 757
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    return-void
.end method
