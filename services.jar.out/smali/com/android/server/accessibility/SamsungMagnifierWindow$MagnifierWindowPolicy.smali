.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MagnifierWindowPolicy"
.end annotation


# static fields
.field private static BORDER_SIZE_DP:F

.field public static mDeviceType:Ljava/lang/String;


# instance fields
.field private WINDOW_SIZE_TABLE_HEIGHT:[I

.field private WINDOW_SIZE_TABLE_WIDTH:[I

.field private mBorderSize:I

.field private mCloseBoundOnScreen:Landroid/graphics/Rect;

.field private mCloseSize:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplaySizeValue:Ljava/lang/String;

.field private mFrameWidthHeight:I

.field private mHandleBoundOnScreen:Landroid/graphics/Rect;

.field private mHandleSize:Landroid/graphics/Rect;

.field private mIsCloseMode:Z

.field private mIsMovingMode:Z

.field private mLowerSideTouchOnFrame:Landroid/graphics/Rect;

.field private mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mMovingStarted_X:F

.field private mMovingStarted_Y:F

.field private mOrientation:I

.field private mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

.field private mScale:I

.field private mUpperSideTouchOnFrame:Landroid/graphics/Rect;

.field private mWindowBoundOnScreen:Landroid/graphics/Rect;

.field private mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

.field private mWindowSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 354
    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->BORDER_SIZE_DP:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x5

    const/4 v9, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v10, 0x0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-array v7, v11, [I

    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    .line 367
    new-array v7, v11, [I

    fill-array-data v7, :array_1

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    .line 368
    iput v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    .line 369
    iput v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:I

    .line 370
    iput-boolean v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    .line 371
    iput v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    .line 372
    iput v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    .line 373
    iput-boolean v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsCloseMode:Z

    .line 374
    iput v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    .line 375
    iput v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    .line 376
    iput v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mFrameWidthHeight:I

    .line 377
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    .line 381
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    .line 382
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 383
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    .line 384
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    .line 385
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    .line 386
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 387
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v8, v7, Landroid/view/MagnificationSpec;->offsetX:F

    .line 388
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v8, v7, Landroid/view/MagnificationSpec;->offsetY:F

    .line 389
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    .line 390
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    .line 391
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    .line 392
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    .line 394
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050340

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 395
    .local v1, "closeMarginTop":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105033e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 396
    .local v0, "closeMarginRight":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105033f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 398
    .local v2, "closeSize":I
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v0, v2

    add-int v9, v1, v2

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseSize:Landroid/graphics/Rect;

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "display_size_forced"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    .line 402
    const-string/jumbo v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 403
    .local v6, "windowmanager":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 405
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 406
    .local v5, "screenWidth":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050345

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 407
    .local v4, "handleWidth":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050344

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 408
    .local v3, "handleHeight":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050346

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mFrameWidthHeight:I

    .line 412
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->init(Landroid/content/Context;)Z

    .line 413
    return-void

    .line 366
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 367
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 742
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v1, 0xc0

    .line 743
    .local v0, "layout_dir":I
    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 733
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 734
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 738
    :goto_0
    return v0

    .line 737
    :cond_0
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    .line 738
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBorderSize()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    return v0
.end method

.method public getMagnificationSpec()Landroid/view/MagnificationSpec;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getMovingStartedX()F
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    return v0
.end method

.method public getMovingStartedY()F
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    return v0
.end method

.method public getOriginalScreenBoundOnScreen()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:I

    return v0
.end method

.method public getWindowBoundOnScreen()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getWindowSizeHeight()I
    .locals 4

    .prologue
    .line 521
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 522
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WINDOW_SIZE_TABLE_HEIGHT[mWindowSize] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    iget v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    iget v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    aget v0, v0, v1

    .line 525
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowSizeWidth()I
    .locals 4

    .prologue
    .line 513
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 514
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WINDOW_SIZE_TABLE_WIDTH[mWindowSize] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    iget v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    iget v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    aget v0, v0, v1

    .line 517
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 419
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v3, 0x0

    .line 420
    .local v3, "isChangedResolution":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "display_size_forced"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "currentDisplaySizeValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 422
    const/4 v3, 0x1

    .line 424
    :cond_0
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "init : screen resolution is changed = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    .line 427
    iget v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v9, :cond_1

    if-nez v3, :cond_1

    .line 429
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "init : But orientation or screen size are not changed"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v8, 0x0

    .line 486
    :goto_0
    return v8

    .line 432
    :cond_1
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "init orientation : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    .line 436
    const-string/jumbo v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 437
    .local v7, "windowmanager":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 438
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mDisplayMetrics : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v10}, Landroid/util/DisplayMetrics;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    sget v9, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->BORDER_SIZE_DP:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    .line 441
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v8

    .line 442
    .local v6, "widthPixels":F
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v8

    .line 444
    .local v2, "heightPixels":F
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "mobile_keyboard"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    const/4 v4, 0x1

    .line 445
    .local v4, "isMobileKeyboardOn":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10502ba

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 447
    .local v5, "mobileKeyboardHeight":I
    int-to-float v8, v5

    add-float/2addr v2, v8

    .line 450
    .end local v5    # "mobileKeyboardHeight":I
    :cond_2
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 451
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v9, 0x0

    float-to-double v10, v6

    const-wide v12, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 452
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v9, 0x1

    float-to-double v10, v6

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 453
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v9, 0x2

    float-to-double v10, v6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 454
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v9, 0x3

    float-to-double v10, v6

    const-wide v12, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 455
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v9, 0x4

    float-to-int v10, v6

    aput v10, v8, v9

    .line 457
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v9, 0x0

    float-to-double v10, v2

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 458
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v9, 0x1

    float-to-double v10, v2

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 459
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v9, 0x2

    float-to-double v10, v2

    const-wide v12, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 460
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v9, 0x3

    float-to-double v10, v2

    const-wide v12, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 461
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v9, 0x4

    float-to-double v10, v2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 480
    :goto_2
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v8, v8, Landroid/view/MagnificationSpec;->offsetX:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v8, v8, Landroid/view/MagnificationSpec;->offsetY:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_7

    .line 481
    :cond_3
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    .line 486
    :goto_3
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 444
    .end local v4    # "isMobileKeyboardOn":Z
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 462
    .restart local v4    # "isMobileKeyboardOn":Z
    :cond_5
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isTablet()Z

    move-result v8

    if-nez v8, :cond_6

    iget v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 463
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v9, 0x0

    float-to-double v10, v6

    const-wide v12, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 464
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v9, 0x1

    float-to-double v10, v6

    const-wide v12, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 465
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v9, 0x2

    float-to-double v10, v6

    const-wide v12, 0x3fee666666666666L    # 0.95

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 467
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v9, 0x0

    float-to-double v10, v2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 468
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v9, 0x1

    float-to-double v10, v2

    const-wide v12, 0x3fe199999999999aL    # 0.55

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 469
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v9, 0x2

    float-to-double v10, v2

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    goto/16 :goto_2

    .line 471
    :cond_6
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v9, 0x0

    float-to-double v10, v6

    const-wide v12, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 472
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v9, 0x1

    float-to-double v10, v6

    const-wide v12, 0x3feb333333333333L    # 0.85

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 473
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v9, 0x2

    float-to-int v10, v6

    aput v10, v8, v9

    .line 475
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v9, 0x0

    float-to-double v10, v2

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 476
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v9, 0x1

    float-to-double v10, v2

    const-wide v12, 0x3fd3d70a3d70a3d7L    # 0.31

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    .line 477
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v9, 0x2

    float-to-double v10, v2

    const-wide v12, 0x3fd70a3d70a3d70aL    # 0.36

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, v8, v9

    goto/16 :goto_2

    .line 483
    :cond_7
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v8, v8, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v9, v9, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p0, v8, v9}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    goto/16 :goto_3
.end method

.method public isCloseMode()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsCloseMode:Z

    return v0
.end method

.method public isMovingMode()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    return v0
.end method

.method public isOnCloseBtn(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnHandle(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnLowerSide(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnMagnifierWindow(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnUpperSide(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public setCloseMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 597
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsCloseMode:Z

    .line 598
    return-void
.end method

.method public setMovingMode(ZFF)V
    .locals 0
    .param p1, "mode"    # Z
    .param p2, "start_x"    # F
    .param p3, "start_y"    # F

    .prologue
    .line 579
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    .line 580
    iput p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    .line 581
    iput p3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    .line 582
    return-void
.end method

.method public setScale(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 543
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:I

    if-eq p1, v0, :cond_0

    .line 544
    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:I

    .line 545
    const/4 v0, 0x1

    .line 547
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWindowSize(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 530
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    if-eq p1, v0, :cond_0

    .line 531
    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    .line 532
    const/4 v0, 0x1

    .line 534
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBoundOnScreen()V
    .locals 20

    .prologue
    .line 605
    const/4 v10, 0x0

    .line 606
    .local v10, "left":I
    const/4 v14, 0x0

    .line 607
    .local v14, "top":I
    const/4 v12, 0x0

    .line 608
    .local v12, "right":I
    const/4 v3, 0x0

    .line 610
    .local v3, "bottom":I
    sget v17, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->BORDER_SIZE_DP:F

    move/from16 v0, v17

    float-to-int v2, v0

    .line 611
    .local v2, "borderFrameSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    move/from16 v17, v0

    mul-int/lit8 v16, v17, 0x5

    .line 613
    .local v16, "touchArea_out_of_border":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 614
    .local v6, "display_width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 617
    .local v5, "display_height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeWidth()I

    move-result v17

    div-int/lit8 v8, v17, 0x2

    .line 618
    .local v8, "half_width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v17

    div-int/lit8 v7, v17, 0x2

    .line 620
    .local v7, "half_height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v11, v17, v8

    .line 621
    .local v11, "left_via_spec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v13, v17, v8

    .line 622
    .local v13, "right_via_spec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v15, v17, v7

    .line 623
    .local v15, "top_via_spec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v4, v17, v7

    .line 626
    .local v4, "bottom_via_spec":I
    if-gez v11, :cond_0

    .line 627
    const/4 v10, 0x0

    .line 628
    sub-int v12, v13, v11

    .line 637
    :goto_0
    if-gez v15, :cond_2

    .line 638
    const/4 v14, 0x0

    .line 639
    sub-int v3, v4, v15

    .line 648
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    sub-int v18, v10, v16

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    sub-int v18, v14, v16

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    add-int v18, v12, v16

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    add-int v18, v3, v16

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    add-int v18, v10, v2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    add-int v18, v14, v2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    sub-int v18, v12, v2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    sub-int v18, v3, v2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isRTL(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v14, v0, Landroid/graphics/Rect;->top:I

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseSize:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v18, v18, v10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseSize:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 671
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    sub-int v18, v14, v16

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mFrameWidthHeight:I

    move/from16 v18, v0

    add-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mFrameWidthHeight:I

    move/from16 v18, v0

    sub-int v18, v3, v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    add-int v18, v3, v16

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 681
    add-int v17, v10, v12

    div-int/lit8 v9, v17, 0x2

    .line 682
    .local v9, "horizental_center":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v18, v9, v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    div-int/lit8 v18, v2, 0x2

    sub-int v18, v3, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    div-int/lit8 v18, v2, 0x2

    add-int v18, v18, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:I

    move/from16 v18, v0

    div-int v8, v17, v18

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:I

    move/from16 v18, v0

    div-int v7, v17, v18

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v11, v17, v8

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v13, v17, v8

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v15, v17, v7

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v4, v17, v7

    .line 696
    if-gez v11, :cond_5

    .line 697
    const/4 v10, 0x0

    .line 698
    sub-int v12, v13, v11

    .line 707
    :goto_3
    if-gez v15, :cond_7

    .line 708
    const/4 v14, 0x0

    .line 709
    sub-int v3, v4, v15

    .line 718
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v14, v0, Landroid/graphics/Rect;->top:I

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 723
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "updateBoundOnScreen mWindowBoundOnScreen ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "updateBoundOnScreen mWindowBoundOnScreenWithoutBorder="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "updateBoundOnScreen mCloseBoundOnScreen="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "updateBoundOnScreen mUpperSideTouchOnFrame="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "updateBoundOnScreen mUpperSideTouchOnFrame="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "updateBoundOnScreen mHandleBoundOnScreen="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "updateBoundOnScreen mOriginalScreenBoundOnScreen="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return-void

    .line 629
    .end local v9    # "horizental_center":I
    :cond_0
    if-le v13, v6, :cond_1

    .line 630
    move v12, v6

    .line 631
    sub-int v17, v13, v6

    sub-int v10, v11, v17

    goto/16 :goto_0

    .line 633
    :cond_1
    move v10, v11

    .line 634
    move v12, v13

    goto/16 :goto_0

    .line 640
    :cond_2
    if-le v4, v5, :cond_3

    .line 641
    move v3, v5

    .line 642
    sub-int v17, v4, v5

    sub-int v14, v15, v17

    goto/16 :goto_1

    .line 644
    :cond_3
    move v14, v15

    .line 645
    move v3, v4

    goto/16 :goto_1

    .line 665
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseSize:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v18, v12, v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v14, v0, Landroid/graphics/Rect;->top:I

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseSize:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 699
    .restart local v9    # "horizental_center":I
    :cond_5
    if-le v13, v6, :cond_6

    .line 700
    move v12, v6

    .line 701
    sub-int v17, v13, v6

    sub-int v10, v11, v17

    goto/16 :goto_3

    .line 703
    :cond_6
    move v10, v11

    .line 704
    move v12, v13

    goto/16 :goto_3

    .line 710
    :cond_7
    if-le v4, v5, :cond_8

    .line 711
    move v3, v5

    .line 712
    sub-int v17, v4, v5

    sub-int v14, v15, v17

    goto/16 :goto_4

    .line 714
    :cond_8
    move v14, v15

    .line 715
    move v3, v4

    goto/16 :goto_4
.end method

.method public updateMagnificationSpec(FF)V
    .locals 2
    .param p1, "offset_x"    # F
    .param p2, "offset_y"    # F

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 509
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateBoundOnScreen()V

    .line 510
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    goto :goto_0

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    goto :goto_1
.end method
