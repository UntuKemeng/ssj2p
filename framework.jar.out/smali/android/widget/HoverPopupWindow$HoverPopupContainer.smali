.class Landroid/widget/HoverPopupWindow$HoverPopupContainer;
.super Landroid/widget/FrameLayout;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverPopupContainer"
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "HoverPopupContainer"


# instance fields
.field private final DEFAULT_BG_OUTLINE_THICKNESS:F

.field private final DEFAULT_BG_PADDING:F

.field private POPUPSTATE_CENTER:I

.field private POPUPSTATE_LEFT:I

.field private POPUPSTATE_RIGHT:I

.field private ani:Landroid/view/animation/Animation;

.field private isFHmoveAnimation:Z

.field private mAnimationAreaOffset:I

.field private mBGPaddingBottomPX:F

.field private mBGPaddingTopPX:F

.field private mFHPopCContext:Landroid/content/Context;

.field private mIsFHEnabled:Z

.field private mIsRingEnabled:Z

.field private mLeftLimit:I

.field private mLineEndX:I

.field private mLineEndY:I

.field private mLineOverlappedHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartX:I

.field private mLineStartY:I

.field private mLineThickness:I

.field private mOldLineEndX:I

.field private mOldLineEndY:I

.field protected mOverTopBoundaryEnabled:Z

.field private mPickerHeightPX:F

.field private mPickerLineColor:I

.field private mPickerLineColorOnBottom:I

.field private mPickerOutlineThicknessPX:I

.field private mPickerSpaceColor:I

.field private mPickerWidthPX:F

.field private mPopupState:I

.field private mRightLimit:I

.field private mRingDrawable:Landroid/graphics/drawable/Drawable;

.field private mRingHeight:I

.field private mRingWidth:I

.field private mTopPickerOffset:I

.field private mTotalLeftLimit:F

.field private mTotalRightLimit:F

.field private misMovetoRight:Z

.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 3292
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    .line 3293
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3221
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOldLineEndX:I

    .line 3223
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOldLineEndY:I

    .line 3225
    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    .line 3227
    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    .line 3229
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    .line 3237
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    .line 3240
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    .line 3243
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->DEFAULT_BG_PADDING:F

    .line 3246
    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->DEFAULT_BG_OUTLINE_THICKNESS:F

    .line 3248
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->isFHmoveAnimation:Z

    .line 3250
    iput-object v5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->ani:Landroid/view/animation/Animation;

    .line 3252
    iput-object v5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mFHPopCContext:Landroid/content/Context;

    .line 3254
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->misMovetoRight:Z

    .line 3256
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    .line 3258
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    .line 3260
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    .line 3262
    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_RIGHT:I

    .line 3264
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_LEFT:I

    .line 3266
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    .line 3268
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColor:I

    .line 3270
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColorOnBottom:I

    .line 3272
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    .line 3274
    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    .line 3276
    iput v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    .line 3278
    iput v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    .line 3280
    iput v6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    .line 3282
    iput v6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    .line 3284
    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTopPickerOffset:I

    .line 3286
    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    .line 3288
    iput v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    .line 3290
    iput v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    .line 3295
    iput-object p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mFHPopCContext:Landroid/content/Context;

    .line 3296
    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    .line 3299
    iget-object v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3300
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x162

    const v2, -0xb88f7e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColor:I

    .line 3301
    const/16 v1, 0x163

    const v2, -0xa57f6f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColorOnBottom:I

    .line 3302
    const/16 v1, 0x164

    const v2, -0xd0a99c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    .line 3304
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3306
    iput v6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    iput v6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    .line 3308
    iget-object v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105035c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    .line 3309
    # getter for: Landroid/widget/HoverPopupWindow;->TW:F
    invoke-static {p1}, Landroid/widget/HoverPopupWindow;->access$2100(Landroid/widget/HoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    .line 3310
    # getter for: Landroid/widget/HoverPopupWindow;->H:F
    invoke-static {p1}, Landroid/widget/HoverPopupWindow;->access$2200(Landroid/widget/HoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    .line 3311
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3408
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3414
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3878
    :cond_0
    :goto_0
    return-void

    .line 3418
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 3419
    const v2, 0x108037f

    const v3, -0x866e57

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 3423
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    if-eqz v2, :cond_6

    .line 3424
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3425
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3427
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    if-nez v2, :cond_3

    .line 3428
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3430
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3432
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    if-nez v2, :cond_4

    .line 3433
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    if-ge v2, v3, :cond_5

    .line 3434
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3448
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2300(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3454
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v2, :cond_7

    .line 3455
    const-string v2, "HoverPopupContainer"

    const-string v3, "HoverPopupContainer.draw(): mContentView is null, return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3436
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    if-le v2, v3, :cond_4

    .line 3437
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    sub-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 3444
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    if-nez v2, :cond_4

    .line 3445
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 3459
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2400(Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3460
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2400(Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getWidth()I

    move-result v3

    int-to-float v3, v3

    # setter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2502(Landroid/widget/HoverPopupWindow;F)F

    .line 3462
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    if-nez v2, :cond_9

    .line 3466
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    new-instance v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2500(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2602(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3467
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    new-instance v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2500(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2702(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3468
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    new-instance v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2500(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2802(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3474
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    .line 3477
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105035a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    .line 3478
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105035b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    .line 3481
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 3482
    const/16 v19, 0x0

    .line 3483
    .local v19, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3484
    .local v17, "child":Landroid/view/View;
    if-eqz v17, :cond_a

    .line 3485
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 3488
    :cond_a
    if-eqz v19, :cond_b

    .line 3489
    new-instance v27, Landroid/graphics/Rect;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Rect;-><init>()V

    .line 3490
    .local v27, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3491
    move-object/from16 v0, v27

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_b

    .line 3492
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    .line 3499
    .end local v17    # "child":Landroid/view/View;
    .end local v19    # "d":Landroid/graphics/drawable/Drawable;
    .end local v27    # "r":Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineEndX()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3500
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_14

    .line 3501
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 3507
    :goto_2
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3510
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3516
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_16

    .line 3517
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 3523
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3524
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 3539
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3543
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v18, v2, 0x2

    .line 3544
    .local v18, "contentViewHalfWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    add-int v2, v2, v18

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    .line 3545
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    sub-int v2, v2, v18

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    .line 3559
    .end local v18    # "contentViewHalfWidth":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v3, v3, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v20, v2, 0x2

    .line 3568
    .local v20, "movelength":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    if-ne v2, v3, :cond_c

    .line 3571
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    .line 3572
    .local v26, "previousRightX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    .line 3573
    .local v25, "previousLeftX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    .line 3581
    .local v24, "previousCenterX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3582
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3583
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3586
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3593
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_19

    if-gtz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3599
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v26

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 3600
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v25

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 3601
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v24

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 3616
    .end local v24    # "previousCenterX":F
    .end local v25    # "previousLeftX":F
    .end local v26    # "previousRightX":F
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    if-ne v2, v3, :cond_d

    .line 3619
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    .line 3620
    .restart local v26    # "previousRightX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    .line 3621
    .restart local v25    # "previousLeftX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    .line 3629
    .restart local v24    # "previousCenterX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3630
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3631
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3634
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3642
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1b

    if-gtz v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3649
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v26

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 3650
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v25

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 3651
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v24

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 3662
    .end local v24    # "previousCenterX":F
    .end local v25    # "previousLeftX":F
    .end local v26    # "previousRightX":F
    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_RIGHT:I

    if-ne v2, v3, :cond_e

    .line 3672
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    .line 3674
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    .line 3676
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3698
    :cond_e
    :goto_a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_LEFT:I

    if-ne v2, v3, :cond_f

    .line 3708
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1e

    .line 3710
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    .line 3711
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3747
    :cond_f
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3200(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 3754
    const/16 v16, 0x0

    .line 3756
    .local v16, "anchorViewCenter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3300(Landroid/widget/HoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 3757
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3300(Landroid/widget/HoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    sub-int v16, v2, v3

    .line 3772
    :cond_10
    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3400(Landroid/widget/HoverPopupWindow;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerXoffset:I
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3500(Landroid/widget/HoverPopupWindow;)I

    move-result v2

    add-int v2, v2, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3400(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 3773
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerXoffset:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3500(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    add-int v3, v3, v16

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3774
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3775
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3786
    .end local v16    # "anchorViewCenter":I
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    add-int/lit8 v2, v2, 0x1

    :goto_c
    div-int/lit8 v11, v2, 0x2

    .line 3787
    .local v11, "adjustPointer":I
    const/4 v12, 0x0

    .local v12, "adjustedLPointX":F
    const/4 v13, 0x0

    .local v13, "adjustedLPointY":F
    const/4 v14, 0x0

    .local v14, "adjustedRPointX":F
    const/4 v15, 0x0

    .line 3788
    .local v15, "adjustedRPointY":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_22

    .line 3789
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    sub-float v12, v2, v3

    .line 3790
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    add-float v14, v2, v3

    .line 3791
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_21

    .line 3792
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    sub-float v13, v2, v3

    .line 3793
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    sub-float v15, v2, v3

    .line 3808
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3200(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3813
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 3814
    .local v9, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3600(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_23

    .line 3815
    const/16 v2, 0x165

    const v3, -0xa29283

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    .line 3819
    :goto_e
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 3822
    new-instance v8, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 3823
    .local v8, "Pnt":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3824
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3825
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3830
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    .line 3831
    .local v21, "path1":Landroid/graphics/Path;
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3832
    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3833
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3834
    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3835
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->close()V

    .line 3836
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3837
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3840
    new-instance v22, Landroid/graphics/Path;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Path;-><init>()V

    .line 3841
    .local v22, "path2":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_24

    .line 3842
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3847
    :goto_f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3848
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3849
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 3850
    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3851
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3852
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3853
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->close()V

    .line 3854
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3861
    new-instance v23, Landroid/graphics/Path;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Path;-><init>()V

    .line 3862
    .local v23, "path3":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    rem-int/lit8 v10, v2, 0x2

    .line 3863
    .local v10, "adjustLineOffset":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_13

    .line 3864
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    sub-float v12, v2, v3

    .line 3865
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    add-float v14, v2, v3

    .line 3867
    :cond_13
    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3868
    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3870
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    add-int/2addr v2, v10

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3871
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3872
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3873
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3874
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Path;->close()V

    .line 3875
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 3503
    .end local v8    # "Pnt":Landroid/graphics/Paint;
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "adjustLineOffset":I
    .end local v11    # "adjustPointer":I
    .end local v12    # "adjustedLPointX":F
    .end local v13    # "adjustedLPointY":F
    .end local v14    # "adjustedRPointX":F
    .end local v15    # "adjustedRPointY":F
    .end local v20    # "movelength":I
    .end local v21    # "path1":Landroid/graphics/Path;
    .end local v22    # "path2":Landroid/graphics/Path;
    .end local v23    # "path3":Landroid/graphics/Path;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_2

    .line 3514
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_3

    .line 3519
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_4

    .line 3550
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    .line 3551
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    goto/16 :goto_5

    .line 3590
    .restart local v20    # "movelength":I
    .restart local v24    # "previousCenterX":F
    .restart local v25    # "previousLeftX":F
    .restart local v26    # "previousRightX":F
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_6

    .line 3607
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_RIGHT:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    .line 3608
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_RIGHT:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 3638
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_8

    .line 3657
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_LEFT:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    .line 3658
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_LEFT:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_9

    .line 3683
    .end local v24    # "previousCenterX":F
    .end local v25    # "previousLeftX":F
    .end local v26    # "previousRightX":F
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3684
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3685
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3688
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_a

    .line 3693
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_a

    .line 3719
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3720
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3721
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3724
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_b

    .line 3729
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_b

    .line 3786
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    goto/16 :goto_c

    .line 3796
    .restart local v11    # "adjustPointer":I
    .restart local v12    # "adjustedLPointX":F
    .restart local v13    # "adjustedLPointY":F
    .restart local v14    # "adjustedRPointX":F
    .restart local v15    # "adjustedRPointY":F
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    add-float v13, v2, v3

    .line 3797
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    add-float v15, v2, v3

    goto/16 :goto_d

    .line 3801
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v12, v2, Landroid/graphics/PointF;->x:F

    .line 3802
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v14, v2, Landroid/graphics/PointF;->x:F

    .line 3803
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v13, v2, Landroid/graphics/PointF;->y:F

    .line 3804
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v15, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_d

    .line 3817
    .restart local v9    # "a":Landroid/content/res/TypedArray;
    :cond_23
    const/16 v2, 0x164

    const v3, -0xa29283

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    goto/16 :goto_e

    .line 3845
    .restart local v8    # "Pnt":Landroid/graphics/Paint;
    .restart local v21    # "path1":Landroid/graphics/Path;
    .restart local v22    # "path2":Landroid/graphics/Path;
    :cond_24
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColorOnBottom:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f
.end method

.method public getLineEndX()I
    .locals 1

    .prologue
    .line 3370
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    return v0
.end method

.method public getLineOverlappedHeight()I
    .locals 1

    .prologue
    .line 3378
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    return v0
.end method

.method public getLineStartY()I
    .locals 1

    .prologue
    .line 3374
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    return v0
.end method

.method protected pointInValidPaddingArea(II)Z
    .locals 3
    .param p1, "localX"    # I
    .param p2, "localY"    # I

    .prologue
    .line 3881
    const/4 v0, 0x0

    .line 3883
    .local v0, "ret":Z
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingBottom()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 3884
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingTop()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 3885
    const/4 v0, 0x1

    .line 3895
    :cond_0
    :goto_0
    return v0

    .line 3887
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingBottom()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3888
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p2, v1, :cond_0

    .line 3889
    const/4 v0, 0x1

    goto :goto_0

    .line 3892
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFHGuideLineForCotainer(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 3314
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    .line 3315
    return-void
.end method

.method public setFHmoveAnimation(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 3318
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->isFHmoveAnimation:Z

    .line 3319
    return-void
.end method

.method public setFHmoveAnimationOffset(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 3401
    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer(): setFHmoveAnimationOffset: offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    .line 3403
    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer(): setFHmoveAnimationOffset: mAnimationAreaOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    return-void
.end method

.method public setGuideLine(II)V
    .locals 4
    .param p1, "drawableId"    # I
    .param p2, "lineColor"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3339
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    .line 3340
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    .line 3342
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 3343
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3344
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    .line 3345
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    .line 3346
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    iget v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3349
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    .line 3350
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3351
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 3352
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3353
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3354
    return-void
.end method

.method public setGuideLine(IIIIZZ)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "ringEnabled"    # Z
    .param p6, "fHEnabled"    # Z

    .prologue
    .line 3383
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    .line 3384
    iput p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    .line 3385
    iput p3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    .line 3386
    iput p4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    .line 3387
    iput-boolean p5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    .line 3388
    iput-boolean p6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    .line 3389
    return-void
.end method

.method public setGuideLineEndPoint(II)V
    .locals 0
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I

    .prologue
    .line 3392
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    .line 3393
    iput p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    .line 3394
    return-void
.end method

.method public setOverTopForCotainer(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 3327
    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer.setOverTopForCotainer: enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    .line 3329
    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer.setOverTopForCotainer: mOverTopBoundaryEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 3333
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTopPickerOffset:I

    .line 3334
    return-void
.end method

.method public setPickerLimit(II)V
    .locals 0
    .param p1, "leftlimit"    # I
    .param p2, "rightlimit"    # I

    .prologue
    .line 3322
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    .line 3323
    iput p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    .line 3324
    return-void
.end method

.method public setPopupState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 3397
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    .line 3398
    return-void
.end method

.method public updateDecoration()V
    .locals 0

    .prologue
    .line 3359
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->invalidate()V

    .line 3367
    return-void
.end method
