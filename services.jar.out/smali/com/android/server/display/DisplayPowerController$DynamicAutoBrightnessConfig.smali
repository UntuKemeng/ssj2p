.class public final Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DynamicAutoBrightnessConfig"
.end annotation


# instance fields
.field protected mAutoBrightnessLevelStepRatio:F

.field protected mAutoBrightnessLevelStepRatioAt0Lux:F

.field protected mAutoBrightnessLevelStepRatioForEbook:F

.field protected mBrightnessLevels:[I

.field protected mBrightnessLevelsForEbookOnly:[I

.field protected mBrightnessValueSlope:[F

.field protected mBrightnessValueSlopeForEbookOnly:[F

.field protected mBrightnessValues:[I

.field protected mBrightnessValuesForEbookOnly:[I

.field protected mHighHysteresisLevels:[I

.field protected mHighHysteresisLevelsForEbookOnly:[I

.field protected mHighHysteresisSlope:[F

.field protected mHighHysteresisSlopeForEbookOnly:[F

.field protected mHighHysteresisValues:[I

.field protected mHighHysteresisValuesForEbookOnly:[I

.field private mIsTablet:Z

.field protected mLowHysteresisLevels:[I

.field protected mLowHysteresisLevelsForEbookOnly:[I

.field protected mLowHysteresisSlope:[F

.field protected mLowHysteresisSlopeForEbookOnly:[F

.field protected mLowHysteresisValues:[I

.field protected mLowHysteresisValuesForEbookOnly:[I

.field protected mLowLimitAtHighestAutoBrightnessLevel:I

.field protected mMinimumBrightnessStepValue:I

.field protected mMinimumExpressiveBrightnessValues:[I

.field protected mValueOfVirtualZeroCandela:I

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method protected constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2992
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2993
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 3021
    iput v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatio:F

    .line 3022
    iput v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioAt0Lux:F

    .line 3023
    iput v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioForEbook:F

    .line 3294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mIsTablet:Z

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 2992
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3433
    :try_start_0
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1900(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3434
    const-string v6, ""

    .line 3435
    .local v6, "mStrLowHysteresisPoints":Ljava/lang/String;
    const-string v2, ""

    .line 3436
    .local v2, "mStrBrightnessValuePoints":Ljava/lang/String;
    const-string v4, ""

    .line 3437
    .local v4, "mStrHighHysteresisPoints":Ljava/lang/String;
    const-string v8, ""

    .line 3439
    .local v8, "mStrMinimumExpressiveBrightnessValues":Ljava/lang/String;
    const-string v9, "[DAB] Dynamic Auto Brightness Tables :"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3440
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mValueOfVirtualZeroCandela = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3441
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mLowLimitAtHighestAutoBrightnessLevel = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3442
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mMinimumBrightnessStepValue = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumBrightnessStepValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3443
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_0

    .line 3444
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3446
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrLowHysteresisPoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3447
    const/4 v1, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_1

    .line 3448
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3447
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3450
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrBrightnessValuePoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3451
    const/4 v1, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_2

    .line 3452
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3451
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3454
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrHighHysteresisPoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3455
    const/4 v1, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    array-length v9, v9

    if-ge v1, v9, :cond_3

    .line 3456
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3455
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3458
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrMinimumExpressiveBrightnessValues = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3462
    const-string v7, ""

    .line 3463
    .local v7, "mStrLowHysteresisPointsForEbookOnly":Ljava/lang/String;
    const-string v3, ""

    .line 3464
    .local v3, "mStrBrightnessValuePointsForEbookOnly":Ljava/lang/String;
    const-string v5, ""

    .line 3466
    .local v5, "mStrHighHysteresisPointsForEbookOnly":Ljava/lang/String;
    const-string v9, "[DAB] "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3467
    const/4 v1, 0x0

    :goto_4
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_4

    .line 3468
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3467
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3470
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrLowHysteresisPointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3471
    const/4 v1, 0x0

    :goto_5
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_5

    .line 3472
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3471
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3474
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrBrightnessValuePointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3475
    const/4 v1, 0x0

    :goto_6
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_6

    .line 3476
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3475
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3478
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrHighHysteresisPointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3485
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAutoBrightnessLevelStepRatio="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatio:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3486
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAutoBrightnessLevelStepRatioAt0Lux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioAt0Lux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3487
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAutoBrightnessLevelStepRatioForEbook="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioForEbook:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3493
    .end local v1    # "i":I
    .end local v2    # "mStrBrightnessValuePoints":Ljava/lang/String;
    .end local v3    # "mStrBrightnessValuePointsForEbookOnly":Ljava/lang/String;
    .end local v4    # "mStrHighHysteresisPoints":Ljava/lang/String;
    .end local v5    # "mStrHighHysteresisPointsForEbookOnly":Ljava/lang/String;
    .end local v6    # "mStrLowHysteresisPoints":Ljava/lang/String;
    .end local v7    # "mStrLowHysteresisPointsForEbookOnly":Ljava/lang/String;
    .end local v8    # "mStrMinimumExpressiveBrightnessValues":Ljava/lang/String;
    :cond_7
    :goto_7
    return-void

    .line 3490
    :catch_0
    move-exception v0

    .line 3491
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "DisplayPowerController"

    const-string v10, "[DAB] dumpAutoBrightnessTables"

    invoke-static {v9, v10, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private getAutoBrightnessTablePacket()[B
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 3135
    const/4 v5, 0x0

    .line 3136
    .local v5, "listSize":I
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v10, v10

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    array-length v11, v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    array-length v11, v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v11, v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v11, v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    array-length v11, v11

    add-int v6, v10, v11

    .line 3140
    .local v6, "nomalTableSize":I
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v10, v10

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    array-length v11, v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    array-length v11, v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    array-length v11, v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v11, v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    array-length v11, v11

    add-int v3, v10, v11

    .line 3143
    .local v3, "ebookSize":I
    add-int v5, v6, v3

    .line 3147
    new-array v1, v5, [I

    .line 3148
    .local v1, "dataArray":[I
    const/4 v8, 0x0

    .line 3149
    .local v8, "pos":I
    const/16 v0, 0xc

    .line 3150
    .local v0, "arraySize":I
    mul-int/lit8 v10, v5, 0x4

    add-int/lit8 v10, v10, 0xd

    new-array v7, v10, [B

    .line 3152
    .local v7, "packet":[B
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v11, v11

    invoke-static {v10, v13, v1, v8, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3153
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v10, v10

    add-int/2addr v8, v10

    .line 3154
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    array-length v11, v11

    invoke-static {v10, v13, v1, v8, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3155
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    array-length v10, v10

    add-int/2addr v8, v10

    .line 3156
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    array-length v11, v11

    invoke-static {v10, v13, v1, v8, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3157
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    array-length v10, v10

    add-int/2addr v8, v10

    .line 3158
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v11, v11

    invoke-static {v10, v13, v1, v8, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3159
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v10, v10

    add-int/2addr v8, v10

    .line 3160
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v11, v11

    invoke-static {v10, v13, v1, v8, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3161
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v10, v10

    add-int/2addr v8, v10

    .line 3162
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    array-length v11, v11

    invoke-static {v10, v13, v1, v8, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3163
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    array-length v10, v10

    add-int/2addr v8, v10

    .line 3165
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v11, v11

    invoke-static {v10, v13, v1, v8, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3166
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v10, v10

    add-int/2addr v8, v10

    .line 3167
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    array-length v11, v11

    invoke-static {v10, v13, v1, v8, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3168
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    array-length v10, v10

    add-int/2addr v8, v10

    .line 3169
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    array-length v11, v11

    invoke-static {v10, v13, v1, v8, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3170
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    array-length v10, v10

    add-int/2addr v8, v10

    .line 3171
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    array-length v11, v11

    invoke-static {v10, v13, v1, v8, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3172
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    array-length v10, v10

    add-int/2addr v8, v10

    .line 3173
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v11, v11

    invoke-static {v10, v13, v1, v8, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3174
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v10, v10

    add-int/2addr v8, v10

    .line 3175
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    array-length v11, v11

    invoke-static {v10, v13, v1, v8, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3176
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    array-length v10, v10

    add-int/2addr v8, v10

    .line 3178
    # getter for: Lcom/android/server/display/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$1500()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3179
    const-string v9, ""

    .line 3180
    .local v9, "strData":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v10, v1

    if-ge v4, v10, :cond_0

    .line 3181
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v1, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3180
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3183
    :cond_0
    const-string v10, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DAB] data : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    .end local v4    # "i":I
    .end local v9    # "strData":Ljava/lang/String;
    :cond_1
    int-to-byte v10, v0

    aput-byte v10, v7, v13

    .line 3187
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3188
    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    array-length v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3189
    const/4 v10, 0x3

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    array-length v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3190
    const/4 v10, 0x4

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3191
    const/4 v10, 0x5

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3192
    const/4 v10, 0x6

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    array-length v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3194
    const/4 v10, 0x7

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3195
    const/16 v10, 0x8

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    array-length v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3196
    const/16 v10, 0x9

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    array-length v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3197
    const/16 v10, 0xa

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    array-length v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3198
    const/16 v10, 0xb

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3199
    const/16 v10, 0xc

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    array-length v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3202
    const/16 v2, 0xd

    .line 3203
    .local v2, "dataArrayStartPos":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v10, v1

    if-ge v4, v10, :cond_2

    .line 3204
    mul-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v2

    add-int/lit8 v10, v10, 0x0

    aget v11, v1, v4

    shr-int/lit8 v11, v11, 0x0

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3205
    mul-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v2

    add-int/lit8 v10, v10, 0x1

    aget v11, v1, v4

    shr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3206
    mul-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v2

    add-int/lit8 v10, v10, 0x2

    aget v11, v1, v4

    shr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3207
    mul-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v2

    add-int/lit8 v10, v10, 0x3

    aget v11, v1, v4

    shr-int/lit8 v11, v11, 0x18

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 3203
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3210
    :cond_2
    return-object v7
.end method

.method private getSlope(IIIIZ)F
    .locals 8
    .param p1, "ax"    # I
    .param p2, "ay"    # I
    .param p3, "bx"    # I
    .param p4, "by"    # I
    .param p5, "bReverse"    # Z

    .prologue
    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    .line 3281
    const/4 v0, 0x0

    .line 3282
    .local v0, "slope":F
    if-eq p1, p3, :cond_0

    if-ne p2, p4, :cond_1

    .line 3283
    :cond_0
    const/4 v0, 0x0

    .line 3291
    :goto_0
    return v0

    .line 3285
    :cond_1
    if-eqz p5, :cond_2

    .line 3286
    int-to-double v2, p3

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    int-to-double v4, p1

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    sub-int v2, p4, p2

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0

    .line 3288
    :cond_2
    sub-int v1, p4, p2

    int-to-float v1, v1

    int-to-double v2, p3

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    int-to-double v4, p1

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 3296
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3297
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendAutoBrightnessTablePacket([B)V
    .locals 6
    .param p1, "packet"    # [B

    .prologue
    .line 3214
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>([B)V

    .line 3215
    .local v0, "attr":Landroid/hardware/scontext/SContextAutoBrightnessAttribute;
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mSContextManager:Landroid/hardware/scontext/SContextManager;
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$1600(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/scontext/SContextManager;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4, v0}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    .line 3218
    const-string v2, ""

    .line 3219
    .local v2, "strPacket":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 3220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3222
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # setter for: Lcom/android/server/display/DisplayPowerController;->mStrAutoBrightnessTablePacket:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/server/display/DisplayPowerController;->access$1702(Lcom/android/server/display/DisplayPowerController;Ljava/lang/String;)Ljava/lang/String;

    .line 3223
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DAB] packet : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    return-void
.end method


# virtual methods
.method protected getDynamicAutoBrightnessHighHysteresis(F)F
    .locals 18
    .param p1, "cd"    # F

    .prologue
    .line 3396
    const/4 v6, 0x0

    .line 3397
    .local v6, "lux":F
    const/4 v3, 0x0

    .line 3398
    .local v3, "i":I
    const/4 v4, 0x1

    .line 3399
    .local v4, "isNormalMode":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3400
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v9, :cond_2

    const/4 v4, 0x1

    .line 3402
    :cond_0
    :goto_0
    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    .line 3403
    .local v5, "levels":[I
    :goto_1
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    .line 3404
    .local v8, "values":[I
    :goto_2
    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlope:[F

    .line 3406
    .local v7, "slopes":[F
    :goto_3
    const/4 v3, 0x1

    :goto_4
    array-length v9, v8

    if-ge v3, v9, :cond_1

    .line 3407
    aget v9, v8, v3

    int-to-float v9, v9

    cmpg-float v9, p1, v9

    if-gez v9, :cond_6

    .line 3411
    :cond_1
    array-length v9, v5

    if-lt v3, v9, :cond_7

    .line 3412
    array-length v9, v5

    add-int/lit8 v3, v9, -0x1

    .line 3413
    aget v9, v5, v3

    int-to-float v6, v9

    .line 3426
    .end local v5    # "levels":[I
    .end local v6    # "lux":F
    .end local v7    # "slopes":[F
    .end local v8    # "values":[I
    :goto_5
    return v6

    .line 3400
    .restart local v6    # "lux":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 3402
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    goto :goto_1

    .line 3403
    .restart local v5    # "levels":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    goto :goto_2

    .line 3404
    .restart local v8    # "values":[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlopeForEbookOnly:[F

    goto :goto_3

    .line 3406
    .restart local v7    # "slopes":[F
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3415
    :cond_7
    add-int/lit8 v9, v3, -0x1

    aget v9, v7, v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 3416
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    add-int/lit8 v9, v3, -0x1

    aget v9, v7, v9

    add-int/lit8 v12, v3, -0x1

    aget v12, v8, v12

    int-to-float v12, v12

    sub-float v12, p1, v12

    mul-float/2addr v9, v12

    float-to-double v12, v9

    add-int/lit8 v9, v3, -0x1

    aget v9, v5, v9

    int-to-double v14, v9

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v9, v10

    int-to-float v6, v9

    goto :goto_5

    .line 3419
    :cond_8
    add-int/lit8 v9, v3, -0x1

    aget v9, v5, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v6, v9

    goto :goto_5

    .line 3423
    .end local v5    # "levels":[I
    .end local v7    # "slopes":[F
    .end local v8    # "values":[I
    :catch_0
    move-exception v2

    .line 3425
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "DisplayPowerController"

    const-string v10, "[DAB] getDynamicAutoBrightnessHighHysteresis"

    invoke-static {v9, v10, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3426
    const v6, 0x459c4000    # 5000.0f

    goto :goto_5
.end method

.method protected getDynamicAutoBrightnessLevelStepRatio(FZ)F
    .locals 22
    .param p1, "lux"    # F
    .param p2, "isNormalMode"    # Z

    .prologue
    .line 3092
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "power"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 3093
    .local v6, "pm":Landroid/os/PowerManager;
    const/4 v4, 0x0

    .line 3094
    .local v4, "i":I
    const/4 v8, 0x0

    .line 3095
    .local v8, "screenBrightnessSettingDefault":F
    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    .line 3096
    .local v5, "levels":[I
    :goto_0
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    .line 3097
    .local v12, "values":[I
    :goto_1
    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[F

    .line 3100
    .local v11, "slopes":[F
    :goto_2
    const/4 v4, 0x0

    :goto_3
    :try_start_0
    array-length v13, v5

    if-ge v4, v13, :cond_0

    .line 3101
    aget v13, v5, v4

    int-to-float v13, v13

    cmpg-float v13, p1, v13

    if-gtz v13, :cond_4

    .line 3105
    :cond_0
    array-length v13, v12

    if-lt v4, v13, :cond_5

    .line 3106
    array-length v13, v12

    add-int/lit8 v13, v13, -0x1

    aget v13, v12, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v8, v13

    .line 3120
    :goto_4
    const/4 v7, 0x0

    .line 3121
    .local v7, "ratio":F
    const/4 v13, 0x0

    cmpl-float v13, p1, v13

    if-nez v13, :cond_7

    .line 3122
    invoke-virtual {v6}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v10

    .line 3123
    .local v10, "screenBrightnessSettingMinimum":I
    int-to-float v13, v10

    div-float/2addr v13, v8

    const v14, 0x3e4ccccd    # 0.2f

    invoke-static {v13, v14}, Landroid/util/FloatMath;->pow(FF)F

    move-result v7

    .line 3128
    .end local v10    # "screenBrightnessSettingMinimum":I
    :goto_5
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v13, v7, v13

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v13, v14

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 3130
    .local v2, "autoBrightnessLevelStepRatio":F
    return v2

    .line 3095
    .end local v2    # "autoBrightnessLevelStepRatio":F
    .end local v5    # "levels":[I
    .end local v7    # "ratio":F
    .end local v11    # "slopes":[F
    .end local v12    # "values":[I
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    goto :goto_0

    .line 3096
    .restart local v5    # "levels":[I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    goto :goto_1

    .line 3097
    .restart local v12    # "values":[I
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlopeForEbookOnly:[F

    goto :goto_2

    .line 3100
    .restart local v11    # "slopes":[F
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3108
    :cond_5
    add-int/lit8 v13, v4, -0x1

    :try_start_1
    aget v13, v11, v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6

    .line 3109
    add-int/lit8 v13, v4, -0x1

    aget v13, v11, v13

    float-to-double v14, v13

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log10(D)D

    move-result-wide v16

    add-int/lit8 v13, v4, -0x1

    aget v13, v5, v13

    int-to-double v0, v13

    move-wide/from16 v18, v0

    const-wide v20, 0x3f847ae147ae147bL    # 0.01

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log10(D)D

    move-result-wide v18

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-int/lit8 v13, v4, -0x1

    aget v13, v12, v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-int v13, v14

    int-to-float v8, v13

    goto :goto_4

    .line 3112
    :cond_6
    aget v13, v12, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v8, v13

    goto :goto_4

    .line 3115
    :catch_0
    move-exception v3

    .line 3116
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "DisplayPowerController"

    const-string v14, "[DAB] Failed to get the Auto Brightness Setting Default value."

    invoke-static {v13, v14, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3117
    invoke-virtual {v6}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v13

    int-to-float v8, v13

    goto/16 :goto_4

    .line 3125
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "ratio":F
    :cond_7
    invoke-virtual {v6}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v9

    .line 3126
    .local v9, "screenBrightnessSettingMaximum":I
    int-to-float v13, v9

    div-float/2addr v13, v8

    const v14, 0x3e4ccccd    # 0.2f

    invoke-static {v13, v14}, Landroid/util/FloatMath;->pow(FF)F

    move-result v7

    goto/16 :goto_5
.end method

.method protected getDynamicAutoBrightnessLowHysteresis(F)F
    .locals 18
    .param p1, "cd"    # F

    .prologue
    .line 3360
    const/4 v6, 0x0

    .line 3361
    .local v6, "lux":F
    const/4 v3, 0x0

    .line 3362
    .local v3, "i":I
    const/4 v4, 0x1

    .line 3363
    .local v4, "isNormalMode":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3364
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v9, :cond_2

    const/4 v4, 0x1

    .line 3366
    :cond_0
    :goto_0
    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    .line 3367
    .local v5, "levels":[I
    :goto_1
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    .line 3368
    .local v8, "values":[I
    :goto_2
    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlope:[F

    .line 3370
    .local v7, "slopes":[F
    :goto_3
    const/4 v3, 0x1

    :goto_4
    array-length v9, v8

    if-ge v3, v9, :cond_1

    .line 3371
    aget v9, v8, v3

    int-to-float v9, v9

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_6

    .line 3375
    :cond_1
    array-length v9, v5

    if-lt v3, v9, :cond_7

    .line 3376
    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    aget v9, v5, v9

    int-to-float v6, v9

    .line 3389
    .end local v5    # "levels":[I
    .end local v6    # "lux":F
    .end local v7    # "slopes":[F
    .end local v8    # "values":[I
    :goto_5
    return v6

    .line 3364
    .restart local v6    # "lux":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 3366
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    goto :goto_1

    .line 3367
    .restart local v5    # "levels":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    goto :goto_2

    .line 3368
    .restart local v8    # "values":[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlopeForEbookOnly:[F

    goto :goto_3

    .line 3370
    .restart local v7    # "slopes":[F
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3378
    :cond_7
    add-int/lit8 v9, v3, -0x1

    aget v9, v7, v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 3379
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    add-int/lit8 v9, v3, -0x1

    aget v9, v7, v9

    add-int/lit8 v12, v3, -0x1

    aget v12, v8, v12

    int-to-float v12, v12

    sub-float v12, p1, v12

    mul-float/2addr v9, v12

    float-to-double v12, v9

    add-int/lit8 v9, v3, -0x1

    aget v9, v5, v9

    int-to-double v14, v9

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v9, v10

    int-to-float v6, v9

    goto :goto_5

    .line 3382
    :cond_8
    add-int/lit8 v9, v3, -0x1

    aget v9, v5, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v6, v9

    goto :goto_5

    .line 3386
    .end local v5    # "levels":[I
    .end local v7    # "slopes":[F
    .end local v8    # "values":[I
    :catch_0
    move-exception v2

    .line 3388
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "DisplayPowerController"

    const-string v10, "[DAB] getDynamicAutoBrightnessLowHysteresis"

    invoke-static {v9, v10, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3389
    const v6, 0x459c4000    # 5000.0f

    goto :goto_5
.end method

.method protected getDynamicAutoBrightnessValue(F)F
    .locals 18
    .param p1, "lux"    # F

    .prologue
    .line 3324
    const/4 v2, 0x0

    .line 3325
    .local v2, "cd":F
    const/4 v4, 0x0

    .line 3326
    .local v4, "i":I
    const/4 v5, 0x1

    .line 3327
    .local v5, "isNormalMode":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3328
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v9, :cond_2

    const/4 v5, 0x1

    .line 3330
    :cond_0
    :goto_0
    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    .line 3331
    .local v6, "levels":[I
    :goto_1
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    .line 3332
    .local v8, "values":[I
    :goto_2
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[F

    .line 3334
    .local v7, "slopes":[F
    :goto_3
    const/4 v4, 0x1

    :goto_4
    array-length v9, v6

    if-ge v4, v9, :cond_1

    .line 3335
    aget v9, v6, v4

    int-to-float v9, v9

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_6

    .line 3339
    :cond_1
    array-length v9, v8

    if-lt v4, v9, :cond_7

    .line 3340
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    aget v9, v8, v9

    int-to-float v2, v9

    .line 3353
    .end local v2    # "cd":F
    .end local v6    # "levels":[I
    .end local v7    # "slopes":[F
    .end local v8    # "values":[I
    :goto_5
    return v2

    .line 3328
    .restart local v2    # "cd":F
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 3330
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    goto :goto_1

    .line 3331
    .restart local v6    # "levels":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    goto :goto_2

    .line 3332
    .restart local v8    # "values":[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlopeForEbookOnly:[F

    goto :goto_3

    .line 3334
    .restart local v7    # "slopes":[F
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3342
    :cond_7
    add-int/lit8 v9, v4, -0x1

    aget v9, v7, v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 3343
    add-int/lit8 v9, v4, -0x1

    aget v9, v7, v9

    float-to-double v10, v9

    move/from16 v0, p1

    float-to-double v12, v0

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    add-int/lit8 v9, v4, -0x1

    aget v9, v6, v9

    int-to-double v14, v9

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    move-result-wide v14

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-int/lit8 v9, v4, -0x1

    aget v9, v8, v9

    int-to-double v12, v9

    add-double/2addr v10, v12

    double-to-float v2, v10

    goto :goto_5

    .line 3346
    :cond_8
    add-int/lit8 v9, v4, -0x1

    aget v9, v8, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v2, v9

    goto :goto_5

    .line 3350
    .end local v6    # "levels":[I
    .end local v7    # "slopes":[F
    .end local v8    # "values":[I
    :catch_0
    move-exception v3

    .line 3352
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "DisplayPowerController"

    const-string v10, "[DAB] getDynamicAutoBrightnessValue"

    invoke-static {v9, v10, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3353
    const/high16 v2, 0x437f0000    # 255.0f

    goto :goto_5
.end method

.method protected getFinalDynamicAutoBrightnessValue(FF)I
    .locals 8
    .param p1, "lux"    # F
    .param p2, "origDynamicBrightness"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 3301
    float-to-int v1, p2

    .line 3303
    .local v1, "finalBrightness":I
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v2

    iget v0, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 3305
    .local v0, "autoBrightnessAdj":F
    const v2, 0x459c4000    # 5000.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    if-ge v1, v2, :cond_0

    .line 3306
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DAB] finalBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 3310
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mIsTablet:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    .line 3311
    float-to-double v2, v0

    const-wide v4, -0x4026666666666666L    # -0.4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v6

    if-le v1, v2, :cond_2

    .line 3312
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v6

    .line 3318
    :cond_1
    :goto_0
    return v1

    .line 3313
    :cond_2
    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v7

    if-ge v1, v2, :cond_1

    .line 3314
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v7

    goto :goto_0
.end method

.method protected initDynamicAutoBrightnessSlopeTables()V
    .locals 15

    .prologue
    .line 3230
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v12, v0, -0x1

    .line 3231
    .local v12, "lengthOfLowHysteresisSlope":I
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    .line 3232
    .local v8, "lengthOfBrightnessValueSlope":I
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v10, v0, -0x1

    .line 3234
    .local v10, "lengthOfHighHysteresisSlope":I
    new-array v0, v12, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlope:[F

    .line 3235
    new-array v0, v8, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[F

    .line 3236
    new-array v0, v10, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlope:[F

    .line 3237
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v12, :cond_0

    .line 3238
    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlope:[F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)F

    move-result v0

    aput v0, v14, v7

    .line 3237
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3241
    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    .line 3242
    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)F

    move-result v0

    aput v0, v14, v7

    .line 3241
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3245
    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_2

    .line 3246
    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlope:[F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)F

    move-result v0

    aput v0, v14, v7

    .line 3245
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3252
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v13, v0, -0x1

    .line 3253
    .local v13, "lengthOfLowHysteresisSlopeForEbookOnly":I
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    .line 3254
    .local v9, "lengthOfBrightnessValueSlopeForEbookOnly":I
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v11, v0, -0x1

    .line 3256
    .local v11, "lengthOfHighHysteresisSlopeForEbookOnly":I
    new-array v0, v13, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlopeForEbookOnly:[F

    .line 3257
    new-array v0, v9, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlopeForEbookOnly:[F

    .line 3258
    new-array v0, v11, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlopeForEbookOnly:[F

    .line 3260
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v13, :cond_3

    .line 3261
    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlopeForEbookOnly:[F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)F

    move-result v0

    aput v0, v14, v7

    .line 3260
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3264
    :cond_3
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_4

    .line 3265
    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlopeForEbookOnly:[F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)F

    move-result v0

    aput v0, v14, v7

    .line 3264
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3268
    :cond_4
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v11, :cond_5

    .line 3269
    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlopeForEbookOnly:[F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)F

    move-result v0

    aput v0, v14, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3268
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 3275
    .end local v7    # "i":I
    .end local v8    # "lengthOfBrightnessValueSlope":I
    .end local v9    # "lengthOfBrightnessValueSlopeForEbookOnly":I
    .end local v10    # "lengthOfHighHysteresisSlope":I
    .end local v11    # "lengthOfHighHysteresisSlopeForEbookOnly":I
    .end local v12    # "lengthOfLowHysteresisSlope":I
    .end local v13    # "lengthOfLowHysteresisSlopeForEbookOnly":I
    :catch_0
    move-exception v6

    .line 3276
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "DisplayPowerController"

    const-string v1, "[DAB] initDynamicAutoBrightnessSlopeTables"

    invoke-static {v0, v1, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3278
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    return-void
.end method

.method protected initializeProperties()V
    .locals 5

    .prologue
    const/high16 v4, 0x43fa0000    # 500.0f

    .line 3026
    const-string v2, "DisplayPowerController"

    const-string v3, "[DAB] Load SEC Auto-brightness setting"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3033
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x10e00e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    .line 3036
    const v2, 0x1070063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    .line 3038
    const v2, 0x1070064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    .line 3040
    const v2, 0x1070065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    .line 3042
    const v2, 0x1070066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    .line 3044
    const v2, 0x1070067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    .line 3046
    const v2, 0x1070068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    .line 3051
    const v2, 0x1070069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    .line 3053
    const v2, 0x107006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    .line 3055
    const v2, 0x107006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    .line 3057
    const v2, 0x107006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    .line 3059
    const v2, 0x107006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    .line 3061
    const v2, 0x107006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    .line 3066
    const v2, 0x1070062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    .line 3068
    const v2, 0x10e00e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumBrightnessStepValue:I

    .line 3070
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->initDynamicAutoBrightnessSlopeTables()V

    .line 3073
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    if-eqz v2, :cond_2

    .line 3074
    const v2, 0x3e6b8520    # 0.23000002f

    iput v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioAt0Lux:F

    .line 3078
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessLevelStepRatio(FZ)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatio:F

    .line 3080
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessLevelStepRatio(FZ)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioForEbook:F

    .line 3084
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mIsSupportedSensorhubAutoBrightness:Z
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3085
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getAutoBrightnessTablePacket()[B

    move-result-object v0

    .line 3086
    .local v0, "packet":[B
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->sendAutoBrightnessTablePacket([B)V

    .line 3089
    .end local v0    # "packet":[B
    :cond_1
    return-void

    .line 3075
    :cond_2
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->AX_PROJECT:Z

    if-eqz v2, :cond_0

    .line 3076
    :cond_3
    const v2, 0x3eda1cac    # 0.426f

    iput v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioAt0Lux:F

    goto :goto_0
.end method
