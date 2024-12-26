.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field static final HANDLE_TYPE_END:I = 0x2

.field static final HANDLE_TYPE_INSERT:I = 0x3

.field static final HANDLE_TYPE_NONE:I = 0x0

.field static final HANDLE_TYPE_START:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field static final MAGNIFYING_FACTOR:F = 1.5f

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field public mHandleType:I

.field private mHandlerHasMoved:Z

.field private mHighlightRect:[I

.field protected mHorizontalGravity:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mMinSize:I

.field private mNumberPreviousOffsets:I

.field private mOldDrawable:Landroid/graphics/drawable/Drawable;

.field private mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field protected mPrevLine:I

.field private mPreviousHighlightRect:[I

.field protected mPreviousLineTouched:I

.field protected mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field protected mbSwitchCursor:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 4042
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4043
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4016
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4018
    iput-boolean v8, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4022
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 4026
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 4033
    iput v6, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    .line 4035
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mHandlerHasMoved:Z

    .line 4037
    new-array v2, v4, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    .line 4038
    new-array v2, v4, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    .line 4132
    const/4 v2, 0x5

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 4133
    const/4 v2, 0x5

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 4134
    iput v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4135
    iput v6, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4044
    new-instance v0, Landroid/widget/LinearLayout;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4045
    .local v0, "contentHolder":Landroid/widget/LinearLayout;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 4046
    new-instance v2, Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x10102c8

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 4048
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 4049
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 4050
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 4051
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4052
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4054
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 4055
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 4057
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mOldDrawable:Landroid/graphics/drawable/Drawable;

    .line 4058
    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {p1}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4059
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050276

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 4065
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4067
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4068
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4070
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    .line 4071
    .local v1, "handleHeight":I
    const v2, -0x41666666    # -0.3f

    int-to-float v3, v1

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 4072
    const v2, 0x3f333333    # 0.7f

    int-to-float v3, v1

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 4073
    return-void

    .line 4062
    .end local v1    # "handleHeight":I
    :cond_0
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    goto :goto_0
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 4143
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4144
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 4145
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 4146
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4147
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 10

    .prologue
    .line 4150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4151
    .local v4, "now":J
    const/4 v0, 0x0

    .line 4152
    .local v0, "i":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4153
    .local v2, "index":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4154
    .local v1, "iMax":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 4155
    add-int/lit8 v0, v0, 0x1

    .line 4156
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_0

    .line 4159
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 4161
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v3, v3, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4163
    :cond_1
    return-void
.end method

.method private getPreferredHeight()I
    .locals 2

    .prologue
    .line 4183
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isVisible()Z
    .locals 4

    .prologue
    .line 4221
    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v1, :cond_0

    .line 4222
    const/4 v1, 0x1

    .line 4236
    :goto_0
    return v1

    .line 4225
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4226
    const/4 v1, 0x0

    goto :goto_0

    .line 4231
    :cond_1
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4232
    .local v0, "mCalculatePositionY":I
    iget v1, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 4233
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mInsertActionHandleTopMargin:I
    invoke-static {v1}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 4236
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v0

    # invokes: Landroid/widget/Editor;->isPositionVisible(FF)Z
    invoke-static {v1, v2, v3}, Landroid/widget/Editor;->access$4200(Landroid/widget/Editor;FF)Z

    move-result v1

    goto :goto_0
.end method

.method private magnifyHandleView()V
    .locals 11

    .prologue
    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4507
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->requestLayout()V

    .line 4510
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 4511
    .local v2, "drawableStartWidth":I
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 4512
    .local v1, "drawableStartHeight":I
    int-to-float v6, v2

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 4513
    .local v4, "drawableTargetWidth":I
    int-to-float v6, v1

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 4515
    .local v3, "drawableTargetHeight":I
    new-array v5, v10, [Landroid/animation/PropertyValuesHolder;

    .line 4516
    .local v5, "holders":[Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "width"

    new-array v7, v10, [I

    aput v2, v7, v8

    aput v4, v7, v9

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v8

    .line 4517
    const-string v6, "height"

    new-array v7, v10, [I

    aput v1, v7, v8

    aput v3, v7, v9

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v9

    .line 4519
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4520
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x46

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4521
    new-instance v6, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v6, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4549
    new-instance v6, Landroid/widget/Editor$HandleView$2;

    invoke-direct {v6, p0, v4, v3}, Landroid/widget/Editor$HandleView$2;-><init>(Landroid/widget/Editor$HandleView;II)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4571
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 4572
    return-void
.end method

.method private resetHandleView()V
    .locals 6

    .prologue
    .line 4496
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->requestLayout()V

    .line 4498
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 4499
    .local v1, "drawableStartWidth":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 4501
    .local v0, "drawableStartHeight":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    .line 4502
    .local v2, "left":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    add-int v5, v2, v1

    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4503
    return-void
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 4138
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4139
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4140
    return-void
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 4082
    const/4 v0, 0x1

    return v0
.end method

.method protected dismiss()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4203
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4204
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mHandlerHasMoved:Z

    .line 4205
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4206
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 4207
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected getCursorOffset()I
    .locals 1

    .prologue
    .line 4405
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected getHorizontalOffset()I
    .locals 4

    .prologue
    .line 4386
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v2

    .line 4387
    .local v2, "width":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4389
    .local v0, "drawWidth":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v3, :pswitch_data_0

    .line 4395
    :pswitch_0
    sub-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 4401
    .local v1, "left":I
    :goto_0
    return v1

    .line 4391
    .end local v1    # "left":I
    :pswitch_1
    const/4 v1, 0x0

    .line 4392
    .restart local v1    # "left":I
    goto :goto_0

    .line 4398
    .end local v1    # "left":I
    :pswitch_2
    sub-int v1, v2, v0

    .restart local v1    # "left":I
    goto :goto_0

    .line 4389
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public getIdealVerticalOffset()F
    .locals 1

    .prologue
    .line 4076
    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return v0
.end method

.method protected getPreferredWidth()I
    .locals 2

    .prologue
    .line 4179
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 4210
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4211
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->removeMessage()V

    .line 4212
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 4213
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 4481
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method protected abstract isHandleViewScreenOut()Z
.end method

.method public isMoved()Z
    .locals 1

    .prologue
    .line 4485
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mHandlerHasMoved:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 4216
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4166
    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 4492
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 4375
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4376
    .local v0, "drawWidth":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    .line 4378
    .local v1, "left":I
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_0

    .line 4379
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    add-int v4, v1, v0

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4382
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4383
    return-void
.end method

.method onHandleMoved()V
    .locals 1

    .prologue
    .line 4489
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->removeMessage()V

    .line 4490
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 4171
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 4172
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 4176
    :goto_0
    return-void

    .line 4174
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 4410
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    invoke-static {v8, p1}, Landroid/widget/Editor;->access$4300(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    .line 4412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 4476
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->invalidate()V

    .line 4477
    return v12

    .line 4414
    :pswitch_0
    iput-boolean v12, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4415
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->magnifyHandleView()V

    .line 4416
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 4417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4420
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v8}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v4

    .line 4421
    .local v4, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v8

    iput v8, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4422
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v8

    iput v8, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4423
    const/4 v8, -0x1

    iput v8, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    goto :goto_0

    .line 4428
    .end local v4    # "positionListener":Landroid/widget/Editor$PositionListener;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 4429
    .local v6, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 4432
    .local v7, "rawY":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v9, v9

    sub-float v5, v8, v9

    .line 4433
    .local v5, "previousVerticalOffset":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v8, v8

    sub-float v8, v7, v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v9, v9

    sub-float v0, v8, v9

    .line 4435
    .local v0, "currentVerticalOffset":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v8, v5, v8

    if-gez v8, :cond_1

    .line 4436
    iget v8, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 4437
    .local v3, "newVerticalOffset":F
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 4442
    :goto_1
    iget v8, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    iput v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4444
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v8, v6, v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v9

    int-to-float v9, v9

    add-float v1, v8, v9

    .line 4446
    .local v1, "newPosX":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v8, v7, v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v2, v8, v9

    .line 4448
    .local v2, "newPosY":F
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    .line 4439
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "newVerticalOffset":F
    :cond_1
    iget v8, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 4440
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 4453
    .end local v0    # "currentVerticalOffset":F
    .end local v3    # "newVerticalOffset":F
    .end local v5    # "previousVerticalOffset":F
    .end local v6    # "rawX":F
    .end local v7    # "rawY":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    .line 4454
    iput-boolean v11, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4455
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->resetHandleView()V

    .line 4456
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->refreshForSwitchingCursor()Z

    .line 4457
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    if-le v8, v9, :cond_2

    .line 4458
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4462
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4463
    iput-boolean v11, p0, Landroid/widget/Editor$HandleView;->mHandlerHasMoved:Z

    .line 4464
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v8, :cond_0

    .line 4465
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    # invokes: Landroid/widget/Editor$SelectionModifierCursorController;->setDragAcceleratorActive(Z)V
    invoke-static {v8, v11}, Landroid/widget/Editor$SelectionModifierCursorController;->access$4400(Landroid/widget/Editor$SelectionModifierCursorController;Z)V

    goto/16 :goto_0

    .line 4470
    :pswitch_3
    iput-boolean v11, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4471
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->resetHandleView()V

    .line 4472
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4473
    iput-boolean v11, p0, Landroid/widget/Editor$HandleView;->mHandlerHasMoved:Z

    goto/16 :goto_0

    .line 4412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 9
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    const/4 v8, 0x3

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4247
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4248
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 4250
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4306
    :cond_0
    :goto_0
    return-void

    .line 4253
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;
    invoke-static {v5}, Landroid/widget/Editor;->access$3900(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v0

    .line 4255
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4256
    .local v1, "line":I
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v5, :cond_8

    move v2, v3

    .line 4258
    .local v2, "offsetChanged":Z
    :goto_1
    if-nez v2, :cond_4

    .line 4259
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v4

    .line 4260
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    aput v6, v5, v3

    .line 4262
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v4

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    aget v6, v6, v4

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v3

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    aget v6, v6, v3

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mOldDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v6, :cond_3

    .line 4263
    :cond_2
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v4

    int-to-float v5, v5

    sub-float/2addr v5, v7

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4264
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v3

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4267
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4268
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4270
    iget v5, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    if-ne v5, v8, :cond_3

    .line 4271
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mInsertActionHandleTopMargin:I
    invoke-static {v6}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4274
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v6, v6, v4

    aput v6, v5, v4

    .line 4275
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v3

    aput v5, v4, v3

    .line 4277
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4280
    :cond_4
    if-nez v2, :cond_5

    if-eqz p2, :cond_0

    .line 4282
    :cond_5
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 4284
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    sub-float/2addr v4, v7

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4286
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4289
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4290
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4292
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mOldDrawable:Landroid/graphics/drawable/Drawable;

    .line 4293
    if-eqz v2, :cond_6

    .line 4294
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 4295
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4299
    :cond_6
    iget v4, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    if-ne v4, v8, :cond_7

    .line 4300
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mInsertActionHandleTopMargin:I
    invoke-static {v5}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4303
    :cond_7
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4304
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    goto/16 :goto_0

    .end local v2    # "offsetChanged":Z
    :cond_8
    move v2, v4

    .line 4256
    goto/16 :goto_1
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 4085
    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 4187
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4200
    :goto_0
    return-void

    .line 4189
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 4191
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 4192
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4194
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 4195
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4198
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4199
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    goto :goto_0
.end method

.method public showAtLocation(I)V
    .locals 12
    .param p1, "offset"    # I

    .prologue
    const/4 v11, 0x0

    .line 4352
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 4353
    .local v6, "tmpCords":[I
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 4355
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4356
    .local v0, "layout":Landroid/text/Layout;
    aget v2, v6, v11

    .line 4357
    .local v2, "posX":I
    const/4 v7, 0x1

    aget v3, v6, v7

    .line 4359
    .local v3, "posY":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4361
    .local v1, "line":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    iget v8, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v4, v7

    .line 4363
    .local v4, "startX":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    .line 4366
    .local v5, "startY":I
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    add-int/2addr v4, v7

    .line 4367
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    add-int/2addr v5, v7

    .line 4369
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    add-int v9, v4, v2

    add-int v10, v5, v3

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4371
    return-void
.end method

.method protected updateDrawable()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4090
    iget-boolean v8, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v8, :cond_1

    .line 4122
    :cond_0
    :goto_0
    return-void

    .line 4095
    :cond_1
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4096
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_0

    .line 4097
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    .line 4098
    .local v2, "offset":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 4099
    .local v0, "isRtlCharAtOffset":Z
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4100
    .local v3, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isHandleViewScreenOut()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4101
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    .line 4103
    :cond_2
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 4104
    .local v5, "selStart":I
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 4106
    .local v4, "selEnd":I
    iget-boolean v8, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    if-nez v8, :cond_3

    if-le v5, v4, :cond_4

    .line 4107
    :cond_3
    if-nez v0, :cond_5

    move v0, v6

    .line 4109
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object v8, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4110
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v8

    iput v8, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 4111
    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v8

    iput v8, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 4112
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v3, v8, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4114
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4116
    iget v8, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4117
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4118
    iget v6, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iget v8, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    invoke-virtual {p0, v6, v8, v7, v7}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    .line 4119
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    goto/16 :goto_0

    :cond_5
    move v0, v7

    .line 4107
    goto :goto_1

    .line 4109
    :cond_6
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4310
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v2, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4311
    if-nez p3, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v2, :cond_5

    .line 4312
    :cond_0
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v2, :cond_6

    .line 4314
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v2, :cond_2

    .line 4315
    :cond_1
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4316
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4317
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4318
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4321
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 4322
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mHandlerHasMoved:Z

    .line 4330
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4331
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v0, p1, v2

    .line 4332
    .local v0, "positionX":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v1, p2, v2

    .line 4333
    .local v1, "positionY":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4334
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 4345
    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_4
    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4347
    :cond_5
    return-void

    .line 4324
    :cond_6
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v2, :cond_7

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v2, :cond_3

    .line 4325
    :cond_7
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4326
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    goto :goto_0

    .line 4336
    .restart local v0    # "positionX":I
    .restart local v1    # "positionY":I
    :cond_8
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 4340
    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_9
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4341
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_1
.end method

.method protected abstract updateSelection(I)V
.end method
