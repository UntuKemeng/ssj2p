.class Landroid/widget/CalendarViewLegacyDelegate$WeekView;
.super Landroid/view/View;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekView"
.end annotation


# instance fields
.field private mDayNumbers:[Ljava/lang/String;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFirstDay:Ljava/util/Calendar;

.field private mFocusDay:[Z

.field private mHasFocusedDay:Z

.field private mHasSelectedDay:Z

.field private mHasUnfocusedDay:Z

.field private mHeight:I

.field private mLastWeekDayMonth:I

.field private final mMonthNumDrawPaint:Landroid/graphics/Paint;

.field private mMonthOfFirstWeekDay:I

.field private mNumCells:I

.field private mSelectedDay:I

.field private mSelectedLeft:I

.field private mSelectedRight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWeek:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 1253
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 1254
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1201
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 1203
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 1205
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 1223
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    .line 1226
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    .line 1230
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    .line 1239
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    .line 1242
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    .line 1248
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    .line 1251
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    .line 1257
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->initilaizePaints()V

    .line 1258
    return-void
.end method

.method static synthetic access$100(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .prologue
    .line 1199
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .prologue
    .line 1199
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .prologue
    .line 1199
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    return v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 1470
    iget-boolean v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    if-nez v2, :cond_0

    .line 1497
    :goto_0
    return-void

    .line 1473
    :cond_0
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$2700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1475
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1476
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1478
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v0

    .line 1480
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_1

    .line 1481
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 1482
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1487
    :goto_1
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1489
    if-eqz v0, :cond_4

    .line 1490
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1491
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v3, v4

    sub-int/2addr v1, v3

    :goto_2
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 1496
    :goto_3
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1484
    :cond_1
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v1, v3

    :cond_2
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 1485
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1491
    :cond_3
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    goto :goto_2

    .line 1493
    :cond_4
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1494
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_3
.end method

.method private drawBackgroundForSelected(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1506
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_0

    .line 1517
    :goto_0
    return-void

    .line 1509
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1511
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1512
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1513
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1514
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1516
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1635
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_0

    .line 1650
    :goto_0
    return-void

    .line 1638
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$3400(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$3300(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$3300(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1643
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$3400(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1644
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$3400(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$3300(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$3300(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1649
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$3400(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1525
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    .line 1526
    .local v4, "textHeight":F
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    sub-int v6, v7, v8

    .line 1527
    .local v6, "y":I
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 1528
    .local v3, "nDays":I
    mul-int/lit8 v0, v3, 0x2

    .line 1530
    .local v0, "divisor":I
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1531
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$2300(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1533
    const/4 v2, 0x0

    .line 1535
    .local v2, "i":I
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1536
    :goto_0
    if-ge v2, v3, :cond_4

    .line 1537
    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    add-int/lit8 v9, v3, -0x1

    sub-int/2addr v9, v2

    aget-boolean v7, v7, v9

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2600(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    :goto_1
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1539
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v8, "sans-serif"

    invoke-static {v8, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1541
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2400(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v7

    if-eqz v7, :cond_1

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->MOCHA:Z
    invoke-static {}, Landroid/widget/CalendarViewLegacyDelegate;->access$2500()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1542
    const/4 v1, -0x1

    .line 1543
    .local v1, "fixedDayIndex":I
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    if-lez v7, :cond_1

    .line 1544
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    sub-int/2addr v7, v8

    if-ltz v7, :cond_3

    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x1

    .line 1545
    :goto_2
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v7

    if-nez v7, :cond_0

    if-lez v1, :cond_0

    .line 1546
    rsub-int/lit8 v1, v1, 0x7

    .line 1548
    :cond_0
    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v2

    if-ne v7, v1, :cond_1

    .line 1550
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFocusedSingleDateColor:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$3000(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1551
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v8, "sans-serif"

    invoke-static {v8, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1556
    .end local v1    # "fixedDayIndex":I
    :cond_1
    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    mul-int/2addr v7, v8

    div-int v5, v7, v0

    .line 1557
    .local v5, "x":I
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    add-int/lit8 v8, v3, -0x1

    sub-int/2addr v8, v2

    aget-object v7, v7, v8

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1536
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1537
    .end local v5    # "x":I
    :cond_2
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2900(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    goto/16 :goto_1

    .line 1544
    .restart local v1    # "fixedDayIndex":I
    :cond_3
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x8

    goto :goto_2

    .line 1559
    .end local v1    # "fixedDayIndex":I
    :cond_4
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1560
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$3100(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1561
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    div-int/2addr v8, v0

    sub-int v5, v7, v8

    .line 1562
    .restart local v5    # "x":I
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v7, v7, v11

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1595
    .end local v5    # "x":I
    :cond_5
    return-void

    .line 1565
    :cond_6
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1566
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$3100(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1567
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    div-int v5, v7, v0

    .line 1568
    .restart local v5    # "x":I
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v7, v7, v11

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1569
    add-int/lit8 v2, v2, 0x1

    .line 1571
    .end local v5    # "x":I
    :cond_7
    :goto_3
    if-ge v2, v3, :cond_5

    .line 1572
    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    aget-boolean v7, v7, v2

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2600(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    :goto_4
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1574
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v8, "sans-serif"

    invoke-static {v8, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1576
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2400(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v7

    if-eqz v7, :cond_9

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->MOCHA:Z
    invoke-static {}, Landroid/widget/CalendarViewLegacyDelegate;->access$2500()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1577
    const/4 v1, -0x1

    .line 1578
    .restart local v1    # "fixedDayIndex":I
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    if-lez v7, :cond_9

    .line 1579
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    sub-int/2addr v7, v8

    if-ltz v7, :cond_b

    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x1

    .line 1580
    :goto_5
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v7

    if-nez v7, :cond_8

    if-lez v1, :cond_8

    .line 1581
    add-int/lit8 v1, v1, -0x1

    .line 1583
    :cond_8
    if-ne v2, v1, :cond_9

    .line 1585
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFocusedSingleDateColor:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$3000(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1586
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v8, "sans-serif"

    invoke-static {v8, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1591
    .end local v1    # "fixedDayIndex":I
    :cond_9
    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    mul-int/2addr v7, v8

    div-int v5, v7, v0

    .line 1592
    .restart local v5    # "x":I
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v7, v7, v2

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1571
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 1572
    .end local v5    # "x":I
    :cond_a
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2900(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    goto :goto_4

    .line 1579
    .restart local v1    # "fixedDayIndex":I
    :cond_b
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x8

    goto :goto_5
.end method

.method private drawWeekSeparators(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 1604
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    .line 1605
    .local v6, "firstFullyVisiblePosition":I
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_0

    .line 1606
    add-int/lit8 v6, v6, 0x1

    .line 1608
    :cond_0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    if-ne v6, v0, :cond_1

    .line 1610
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2400(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1627
    :goto_0
    return-void

    .line 1615
    :cond_1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$3200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1616
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1619
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1620
    const/4 v1, 0x0

    .line 1621
    .local v1, "startX":F
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v4, v5

    sub-int/2addr v0, v4

    int-to-float v3, v0

    .line 1626
    .local v3, "stopX":F
    :goto_1
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1621
    .end local v3    # "stopX":F
    :cond_2
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    int-to-float v3, v0

    goto :goto_1

    .line 1623
    .end local v1    # "startX":F
    :cond_3
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v0, v4

    int-to-float v1, v0

    .line 1624
    .restart local v1    # "startX":F
    :goto_2
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    int-to-float v3, v0

    .restart local v3    # "stopX":F
    goto :goto_1

    .end local v1    # "startX":F
    .end local v3    # "stopX":F
    :cond_4
    move v1, v2

    .line 1623
    goto :goto_2
.end method

.method private initilaizePaints()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1360
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1361
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1362
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1364
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1365
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1366
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1367
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1368
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2300(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1370
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2400(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->MOCHA:Z
    invoke-static {}, Landroid/widget/CalendarViewLegacyDelegate;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sans-serif-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1372
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sans-serif-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1377
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2400(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1378
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2300(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1379
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2600(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1382
    :cond_1
    return-void
.end method

.method private updateSelectionPositions()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1662
    iget-boolean v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    if-eqz v2, :cond_3

    .line 1663
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v0

    .line 1664
    .local v0, "isLayoutRtl":Z
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1665
    .local v1, "selectedPosition":I
    if-gez v1, :cond_0

    .line 1666
    add-int/lit8 v1, v1, 0x7

    .line 1668
    :cond_0
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 1669
    add-int/lit8 v1, v1, 0x1

    .line 1671
    :cond_1
    if-eqz v0, :cond_4

    .line 1672
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    .line 1677
    :goto_0
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    .line 1678
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    if-nez v2, :cond_2

    .line 1679
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    .line 1681
    :cond_2
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1682
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    .line 1685
    .end local v0    # "isLayoutRtl":Z
    .end local v1    # "selectedPosition":I
    :cond_3
    return-void

    .line 1675
    .restart local v0    # "isLayoutRtl":Z
    .restart local v1    # "selectedPosition":I
    :cond_4
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    mul-int/2addr v2, v1

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    goto :goto_0
.end method


# virtual methods
.method public getDayFromLocation(FLjava/util/Calendar;)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "outCalendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x0

    .line 1419
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v2

    .line 1424
    .local v2, "isLayoutRtl":Z
    if-eqz v2, :cond_2

    .line 1425
    const/4 v3, 0x0

    .line 1426
    .local v3, "start":I
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v6, v7

    sub-int v1, v5, v6

    .line 1432
    .local v1, "end":I
    :goto_0
    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_0

    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_4

    .line 1433
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    .line 1447
    :goto_1
    return v4

    .line 1426
    .end local v1    # "end":I
    :cond_1
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    goto :goto_0

    .line 1428
    .end local v3    # "start":I
    :cond_2
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int v3, v5, v6

    .line 1429
    .restart local v3    # "start":I
    :goto_2
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .restart local v1    # "end":I
    goto :goto_0

    .end local v1    # "end":I
    .end local v3    # "start":I
    :cond_3
    move v3, v4

    .line 1428
    goto :goto_2

    .line 1438
    .restart local v1    # "end":I
    .restart local v3    # "start":I
    :cond_4
    int-to-float v4, v3

    sub-float v4, p1, v4

    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I
    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-int v5, v1, v3

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 1440
    .local v0, "dayPosition":I
    if-eqz v2, :cond_5

    .line 1441
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int v0, v4, v0

    .line 1444
    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1445
    const/4 v4, 0x5

    invoke-virtual {p2, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 1447
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public getFirstDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonthOfFirstWeekDay()I
    .locals 1

    .prologue
    .line 1390
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    return v0
.end method

.method public getMonthOfLastWeekDay()I
    .locals 1

    .prologue
    .line 1399
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    return v0
.end method

.method public init(III)V
    .locals 16
    .param p1, "weekNumber"    # I
    .param p2, "selectedWeekDay"    # I
    .param p3, "focusedMonth"    # I

    .prologue
    .line 1272
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    .line 1273
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    .line 1274
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 1275
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    .line 1278
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 1279
    .local v3, "currentTimezone":Ljava/util/TimeZone;
    const-string v8, "America/Sao_Paulo"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 1280
    .local v2, "brasilia":Ljava/util/TimeZone;
    const-string v8, "America/Santiago"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 1281
    .local v7, "santiago":Ljava/util/TimeZone;
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1282
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/CalendarViewLegacyDelegate;->access$1600(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x36ee80

    sub-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1287
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x3

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v9}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1291
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 1292
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    new-array v8, v8, [Z

    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    .line 1295
    const/4 v5, 0x0

    .line 1296
    .local v5, "i":I
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1297
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v14}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1299
    add-int/lit8 v5, v5, 0x1

    .line 1303
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    sub-int v4, v8, v9

    .line 1305
    .local v4, "diff":I
    if-gtz v4, :cond_6

    .line 1306
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v4}, Ljava/util/Calendar;->add(II)V

    .line 1328
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Ljava/util/Calendar;

    .line 1329
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    .line 1331
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    .line 1332
    :goto_4
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    if-ge v5, v8, :cond_a

    .line 1333
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move/from16 v0, p3

    if-ne v8, v0, :cond_7

    const/4 v6, 0x1

    .line 1334
    .local v6, "isFocusedDay":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    aput-boolean v6, v8, v5

    .line 1335
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    or-int/2addr v8, v6

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    .line 1336
    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    if-nez v6, :cond_8

    const/4 v8, 0x1

    :goto_6
    and-int/2addr v8, v9

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    .line 1338
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/CalendarViewLegacyDelegate;->access$1600(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/CalendarViewLegacyDelegate;->access$1500(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1339
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v8, v5

    .line 1344
    :goto_7
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 1332
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1273
    .end local v2    # "brasilia":Ljava/util/TimeZone;
    .end local v3    # "currentTimezone":Ljava/util/TimeZone;
    .end local v4    # "diff":I
    .end local v5    # "i":I
    .end local v6    # "isFocusedDay":Z
    .end local v7    # "santiago":Ljava/util/TimeZone;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1274
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    goto/16 :goto_1

    .line 1284
    .restart local v2    # "brasilia":Ljava/util/TimeZone;
    .restart local v3    # "currentTimezone":Ljava/util/TimeZone;
    .restart local v7    # "santiago":Ljava/util/TimeZone;
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/CalendarViewLegacyDelegate;->access$1600(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_2

    .line 1308
    .restart local v4    # "diff":I
    .restart local v5    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x5

    add-int/lit8 v10, v4, -0x7

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_3

    .line 1333
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1336
    .restart local v6    # "isFocusedDay":Z
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 1341
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v13}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v13

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    goto :goto_7

    .line 1348
    .end local v6    # "isFocusedDay":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 1349
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x5

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 1351
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    .line 1353
    invoke-direct/range {p0 .. p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->updateSelectionPositions()V

    .line 1354
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1452
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2400(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->MOCHA:Z
    invoke-static {}, Landroid/widget/CalendarViewLegacyDelegate;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawBackgroundForSelected(Landroid/graphics/Canvas;)V

    .line 1454
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    .line 1455
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawWeekSeparators(Landroid/graphics/Canvas;)V

    .line 1462
    :goto_0
    return-void

    .line 1457
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 1458
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    .line 1459
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawWeekSeparators(Landroid/graphics/Canvas;)V

    .line 1460
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1689
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$3500(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    .line 1691
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setMeasuredDimension(II)V

    .line 1692
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1654
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 1655
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->updateSelectionPositions()V

    .line 1656
    return-void
.end method
