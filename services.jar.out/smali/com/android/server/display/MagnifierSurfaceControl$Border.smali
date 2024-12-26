.class Lcom/android/server/display/MagnifierSurfaceControl$Border;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Border"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierTouchGestureListener;,
        Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;
    }
.end annotation


# static fields
.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x1b58

.field private static final TAG:Ljava/lang/String; = "Magnifier.Border"

.field private static final TIMEOUT:I = 0x5

.field private static isPadVisible:Z = false

.field private static layoutParamsClose:Landroid/view/WindowManager$LayoutParams; = null

.field private static layoutParamsHandle:Landroid/view/WindowManager$LayoutParams; = null

.field private static layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams; = null

.field private static layoutParamsScreenChange:Landroid/view/WindowManager$LayoutParams; = null

.field private static mImageViewClose:Landroid/widget/ImageView; = null

.field private static mImageViewHandle:Landroid/widget/ImageView; = null

.field private static mImageViewMagnifierPad:Landroid/widget/ImageView; = null

.field private static mImageViewScreenChange:Landroid/widget/ImageView; = null

.field private static final windowType:I = 0x830


# instance fields
.field private final DEBUG:Z

.field private fingerMagnifierState:I

.field initialTouchX:F

.field initialTouchY:F

.field private mBorderFxSession:Landroid/view/SurfaceSession;

.field final mBorderLock:Ljava/lang/Object;

.field private mBorderSurface:Landroid/view/Surface;

.field private mBorderSurfaceControl:Landroid/view/SurfaceControl;

.field private mContext:Landroid/content/Context;

.field mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableClose:Landroid/graphics/drawable/Drawable;

.field private mDrawableCloseMarginRight:I

.field private mDrawableCloseMarginTop:I

.field private mDrawableCloseSize:I

.field private mDrawableHandler:Landroid/graphics/drawable/Drawable;

.field private mDrawableHandlerSize:I

.field private mDrawableHandlerSize_h:I

.field private mDrawableHandlerSize_w:I

.field private mDrawableScreenChange:Landroid/graphics/drawable/Drawable;

.field private mDrawableScreenChangeMarginRight:I

.field private mDrawableScreenChangeMarginTop:I

.field private mDrawableScreenChangeSize:I

.field mHandler:Landroid/os/Handler;

.field private mMagnifierDisplayPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mPM:Landroid/os/PowerManager;

.field private mPadding:Landroid/graphics/Rect;

.field private mShowing:Z

.field mTouchDownX:F

.field mTouchDownY:F

.field private mTouchGestureDetector:Landroid/view/GestureDetector;

.field mTouchUpX:F

.field mTouchUpY:F

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/WindowManager;

.field onClick:Landroid/view/View$OnClickListener;

.field onTouch:Landroid/view/View$OnTouchListener;

.field xPosition:F

.field yPosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/android/server/display/MagnifierDisplayPolicy;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layerStack"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "policy"    # Lcom/android/server/display/MagnifierDisplayPolicy;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-boolean v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->DEBUG:Z

    .line 580
    iput-boolean v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    .line 584
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    .line 585
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    .line 600
    iput v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->fingerMagnifierState:I

    .line 611
    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchGestureDetector:Landroid/view/GestureDetector;

    .line 614
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->initialTouchX:F

    .line 615
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->initialTouchY:F

    .line 616
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchDownX:F

    .line 617
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchDownY:F

    .line 618
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchUpX:F

    .line 619
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchUpY:F

    .line 620
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->xPosition:F

    .line 621
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->yPosition:F

    .line 625
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 626
    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;

    .line 632
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    .line 633
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderFxSession:Landroid/view/SurfaceSession;

    .line 634
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 636
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050340

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    .line 637
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105033e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    .line 638
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105033f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    .line 641
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050342

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize_h:I

    .line 642
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050343

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize_w:I

    .line 644
    const-string v0, "com.sec.feature.overlaymagnifier"

    invoke-static {p1, v0}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->fingerMagnifierState:I

    .line 649
    :cond_0
    if-lt p3, v3, :cond_1

    if-ge p4, v3, :cond_3

    .line 650
    :cond_1
    :try_start_0
    const-string v0, "Magnifier.Border"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    if-ge p3, v3, :cond_2

    const/4 p3, 0x1

    .line 652
    :cond_2
    if-ge p4, v3, :cond_3

    const/4 p4, 0x1

    .line 654
    :cond_3
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderFxSession:Landroid/view/SurfaceSession;

    const-string v2, "OverlayMagnifierBorder"

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->isOldMagnifier:Z
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_5

    move v4, p4

    :goto_0
    const/4 v5, -0x2

    const v6, -0x7ffffffc

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    .line 657
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 658
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 659
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 660
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x1e847f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 668
    :goto_1
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->isOldMagnifier:Z
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 669
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080588

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 670
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    .line 676
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 677
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8, v8, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 679
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandler:Landroid/graphics/drawable/Drawable;

    .line 680
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandler:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 681
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandler:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v1, p3, 0x2

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize_w:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize_h:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p4, v2

    div-int/lit8 v3, p3, 0x2

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize_w:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int v3, p3, v3

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize_h:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 683
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 684
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    .line 685
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 686
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 696
    :goto_3
    iput-object p5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mMagnifierDisplayPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    .line 697
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->fingerMagnifierState:I

    if-lez v0, :cond_4

    .line 698
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandler:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandler:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v1, p0

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;-><init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;IIIII)V

    invoke-direct {p0, v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->initMagnifierWindow(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)V

    .line 700
    :cond_4
    return-void

    .line 654
    :cond_5
    :try_start_1
    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize_h:I

    div-int/lit8 v3, v3, 0x2
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int v4, p4, v3

    goto/16 :goto_0

    .line 661
    :catch_0
    move-exception v7

    .line 662
    .local v7, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_2
    invoke-virtual {v7}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 664
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_1

    .end local v7    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 673
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080589

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 674
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 688
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    add-int/2addr v1, v2

    sub-int v1, p3, v1

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 577
    sget-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->isPadVisible:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->addMagnifierView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->setEventListener()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->updateViewLayout()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$2600()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$2800()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$3000()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewHandle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3100()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsHandle:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$3200()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewScreenChange:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/display/MagnifierSurfaceControl$Border;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .param p1, "x1"    # Landroid/view/GestureDetector;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchGestureDetector:Landroid/view/GestureDetector;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->handleTimeout()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierDisplayPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mMagnifierDisplayPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->saveInSharedPreference()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/display/MagnifierSurfaceControl$Border;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 577
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->injectAccessibilityMotionEvent(IZ)V

    return-void
.end method

.method private addMagnifierView()V
    .locals 2

    .prologue
    .line 1061
    const-string v0, "Magnifier.Border"

    const-string v1, "addMagnifierView"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1066
    :goto_0
    return-void

    .line 1064
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->isPadVisible:Z

    .line 1065
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private handleTimeout()V
    .locals 1

    .prologue
    .line 1110
    monitor-enter p0

    .line 1111
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1113
    :cond_0
    monitor-exit p0

    .line 1114
    return-void

    .line 1113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 901
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;-><init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    .line 953
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;-><init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->onTouch:Landroid/view/View$OnTouchListener;

    .line 1031
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border$3;-><init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->onClick:Landroid/view/View$OnClickListener;

    .line 1059
    return-void
.end method

.method private initMagnifierUIParams(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)V
    .locals 7
    .param p1, "mWindow"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    const/16 v3, 0x830

    const/16 v6, 0x33

    const/16 v4, 0x8

    const/4 v5, -0x3

    .line 837
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 838
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadWidth:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$1900(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadHeight:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2000(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    .line 845
    :goto_0
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 847
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 848
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseWidth:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2100(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseHeight:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2200(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    .line 855
    :goto_1
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 857
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsHandle:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_2

    .line 858
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleWidth:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2300(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleHeight:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2400(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsHandle:Landroid/view/WindowManager$LayoutParams;

    .line 865
    :goto_2
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsHandle:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 878
    return-void

    .line 842
    :cond_0
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadWidth:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$1900(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 843
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadHeight:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2000(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 852
    :cond_1
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseWidth:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2100(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 853
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseHeight:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2200(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 862
    :cond_2
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsHandle:Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleWidth:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2300(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 863
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsHandle:Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleHeight:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2400(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_2
.end method

.method private initMagnifierWindow(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)V
    .locals 3
    .param p1, "mWindow"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;

    .line 811
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 812
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    .line 813
    :cond_0
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 814
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;

    .line 815
    :cond_1
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewHandle:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    .line 816
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewHandle:Landroid/widget/ImageView;

    .line 817
    :cond_2
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewScreenChange:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    .line 818
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewScreenChange:Landroid/widget/ImageView;

    .line 828
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->initMagnifierUIParams(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)V

    .line 829
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->updateMagnifierLayoutParams()V

    .line 830
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->initEvent()V

    .line 831
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 832
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPM:Landroid/os/PowerManager;

    .line 833
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "Magnifier Window"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 835
    return-void
.end method

.method private injectAccessibilityMotionEvent(IZ)V
    .locals 2
    .param p1, "eventAction"    # I
    .param p2, "isDouble"    # Z

    .prologue
    .line 1152
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/display/MagnifierSurfaceControl$Border$4;

    invoke-direct {v1, p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border$4;-><init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1210
    return-void
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 806
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v1, 0xc0

    .line 807
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

.method private saveInSharedPreference()V
    .locals 3

    .prologue
    .line 713
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1800()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pos_x"

    sget v2, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorX:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 714
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1800()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pos_y"

    sget v2, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorY:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 722
    return-void
.end method

.method private setEventListener()V
    .locals 2

    .prologue
    .line 1081
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "setEventListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1085
    :goto_0
    return-void

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateViewLayout()V
    .locals 2

    .prologue
    .line 1075
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "updateViewLayout"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 781
    const-string v0, "Magnifier.Border"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 784
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 786
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 797
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    .line 798
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 800
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 802
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPM:Landroid/os/PowerManager;

    .line 803
    monitor-exit v1

    .line 804
    return-void

    .line 795
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 803
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 759
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 762
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    .line 763
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 765
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 766
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 770
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 773
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 775
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPM:Landroid/os/PowerManager;

    .line 776
    monitor-exit v1

    .line 777
    return-void

    .line 768
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 776
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public pokeWakelock()V
    .locals 2

    .prologue
    .line 1094
    monitor-enter p0

    .line 1095
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1101
    :cond_1
    monitor-exit p0

    .line 1102
    return-void

    .line 1101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeMagnifierView()V
    .locals 2

    .prologue
    .line 1068
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "removeMagnifierView"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1073
    :goto_0
    return-void

    .line 1071
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->isPadVisible:Z

    .line 1072
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    .line 707
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 709
    monitor-exit v1

    .line 710
    return-void

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 726
    const-string v1, "Magnifier.Border"

    const-string/jumbo v2, "show"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 729
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    .line 730
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 731
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 732
    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->fingerMagnifierState:I

    if-ne v1, v4, :cond_0

    .line 733
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 734
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->isOldMagnifier:Z
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1700()Z

    move-result v1

    if-nez v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandler:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 742
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 744
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 745
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 749
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPM:Landroid/os/PowerManager;

    if-nez v1, :cond_1

    .line 750
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPM:Landroid/os/PowerManager;

    .line 751
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPM:Landroid/os/PowerManager;

    const v3, 0x1000001a

    const-string v4, "Magnifier Window"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 754
    :cond_1
    monitor-exit v2

    .line 755
    return-void

    .line 747
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    .line 754
    .end local v0    # "c":Landroid/graphics/Canvas;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public updateMagnifierLayoutParams()V
    .locals 6

    .prologue
    .line 880
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mMagnifierDisplayPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getAbsOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Point;->x:I

    .line 881
    .local v0, "left":I
    sget-object v3, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v1, v0, v3

    .line 882
    .local v1, "right":I
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mMagnifierDisplayPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getAbsOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 884
    .local v2, "top":I
    sget-object v3, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 885
    sget-object v3, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 886
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 887
    sget-object v3, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 890
    :goto_0
    sget-object v3, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 898
    return-void

    .line 889
    :cond_0
    sget-object v3, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    add-int/2addr v4, v5

    sub-int v4, v1, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0
.end method
