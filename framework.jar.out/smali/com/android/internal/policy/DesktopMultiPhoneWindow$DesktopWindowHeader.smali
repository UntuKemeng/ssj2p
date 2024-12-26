.class Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;
.super Ljava/lang/Object;
.source "DesktopMultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DesktopMultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DesktopWindowHeader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;
    }
.end annotation


# instance fields
.field protected mBtnExit:Landroid/view/View;

.field protected mBtnMaximize:Landroid/view/View;

.field protected mBtnMinimize:Landroid/view/View;

.field protected mBtnPopup:Landroid/view/View;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mHeaderType:I

.field private mHeaderWindowHoverImage:Landroid/graphics/drawable/Drawable;

.field private mIsAttached:Z

.field private mIsInputMethodForceHiding:Z

.field private mIsLongPressed:Z

.field private mIsMoving:Z

.field private mIsTouchDown:Z

.field private mLastHandledX:I

.field private mLastHandledY:I

.field protected mMenuContainer:Landroid/view/View;

.field private mMoveInterval:I

.field protected mWindowHeaderContainer:Landroid/widget/LinearLayout;

.field protected mWindowHeaderView:Landroid/view/View;

.field protected mWindowHeaderViewBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field private mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;I)V
    .locals 6
    .param p2, "headerType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1443
    iput-object p1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1416
    iput-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1422
    iput-boolean v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsAttached:Z

    .line 1431
    iput v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mMoveInterval:I

    .line 1433
    iput v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mHeaderType:I

    .line 1444
    invoke-virtual {p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowManager:Landroid/view/WindowManager;

    .line 1445
    iput p2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mHeaderType:I

    .line 1447
    invoke-virtual {p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10601ad

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mWindowHeaderFocusedColor:I

    .line 1448
    invoke-virtual {p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10601ae

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mWindowHeaderUnFocusedColor:I

    .line 1449
    invoke-virtual {p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105032d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mWindowHeaderHeight:I

    .line 1451
    invoke-virtual {p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mMoveInterval:I

    .line 1453
    invoke-virtual {p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802c5

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1454
    .local v0, "windowHeaderViewBackgroundBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    iput-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderViewBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 1456
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;

    invoke-direct {v3, p0, v5}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;-><init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->setHeaderGestureDetector(Landroid/view/GestureDetector;)V

    .line 1457
    const-string v1, "DesktopMultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowHeaderView :: DesktopWindowHeader() constructor, mHeaderType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mHeaderType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;
    .param p1, "x1"    # I

    .prologue
    .line 1401
    iput p1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledX:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;
    .param p1, "x1"    # I

    .prologue
    .line 1401
    iput p1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledY:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    .prologue
    .line 1401
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsTouchDown:Z

    return v0
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 1819
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1820
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1822
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v2, v2, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDssScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1824
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1825
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1826
    const/16 v1, 0x3ef

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1827
    const-string v1, "Desktop Popup Window Header"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1828
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1829
    const v1, 0x40208

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1832
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 1833
    return-object v0
.end method

.method private getViewName(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1842
    if-nez p1, :cond_0

    .line 1843
    const-string v0, ""

    .line 1849
    :goto_0
    return-object v0

    .line 1845
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1849
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 1846
    :pswitch_1
    const-string v0, "mBtnMinimize"

    goto :goto_0

    .line 1847
    :pswitch_2
    const-string v0, "mBtnPoup"

    goto :goto_0

    .line 1848
    :pswitch_3
    const-string v0, "mBtnExit"

    goto :goto_0

    .line 1845
    :pswitch_data_0
    .packed-switch 0x102039f
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setHeaderWindowHoverImage()V
    .locals 3

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mHeaderWindowHoverImage:Landroid/graphics/drawable/Drawable;

    .line 1839
    return-void
.end method


# virtual methods
.method addWindow(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1774
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsAttached:Z

    if-nez v2, :cond_1

    .line 1775
    sget-boolean v2, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DesktopMultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DesktopWindowHeader :: addWindow(), caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1777
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1780
    if-eqz p1, :cond_1

    .line 1781
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1782
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsAttached:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1792
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 1784
    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v0

    .line 1786
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1787
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public drawDesktopWindowHeader(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1462
    sget-boolean v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1463
    const-string v0, "DesktopMultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesktopWindowHeader :: drawDeskTopHedader() hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_0
    if-eqz p1, :cond_2

    .line 1467
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderViewBackground:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1468
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderViewBackground:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v1, v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mWindowHeaderFocusedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 1473
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderViewBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1475
    :cond_1
    return-void

    .line 1470
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderViewBackground:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1471
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderViewBackground:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v1, v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mWindowHeaderUnFocusedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    goto :goto_0
.end method

.method public generateWindowHeaderView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1478
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v2

    const v3, 0x103012b

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1480
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1481
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090051

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    .line 1482
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    const v3, 0x102039d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderContainer:Landroid/widget/LinearLayout;

    .line 1483
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    const v3, 0x102039e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mMenuContainer:Landroid/view/View;

    .line 1485
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1487
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mMenuContainer:Landroid/view/View;

    const v3, 0x102039f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnMinimize:Landroid/view/View;

    .line 1488
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1490
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mMenuContainer:Landroid/view/View;

    const v3, 0x10203a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnPopup:Landroid/view/View;

    .line 1491
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnPopup:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1493
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mMenuContainer:Landroid/view/View;

    const v3, 0x10203a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnMaximize:Landroid/view/View;

    .line 1494
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1496
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mMenuContainer:Landroid/view/View;

    const v3, 0x10203a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnExit:Landroid/view/View;

    .line 1497
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1499
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mWindowHeaderUnFocusedColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1501
    iget v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mHeaderType:I

    packed-switch v2, :pswitch_data_0

    .line 1530
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    return-object v2

    .line 1503
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1504
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1505
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1507
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1508
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnPopup:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1509
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1511
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1512
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsMultiWindowBlocked:Z
    invoke-static {v2}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->access$400(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1513
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1514
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnPopup:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1516
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mWindowHeaderFocusedColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1520
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnPopup:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1521
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsMultiWindowBlocked:Z
    invoke-static {v2}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->access$400(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1522
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnPopup:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getWindowHeaderAlpha()F
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    .line 1548
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getWindowHeaderHeight()I
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mWindowHeaderHeight:I

    return v0
.end method

.method public getWindowHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method isAttached()Z
    .locals 1

    .prologue
    .line 1795
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsAttached:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1554
    sget-boolean v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "DesktopMultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DesktopWindowHeader :: onClick(), v="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getViewName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    .line 1557
    .local v0, "cascadeType":Z
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v4

    .line 1558
    .local v4, "splitType":Z
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v3

    .line 1560
    .local v3, "normalType":Z
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1614
    :cond_1
    :goto_0
    return-void

    .line 1562
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1563
    if-eqz v0, :cond_3

    .line 1564
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mToken:Landroid/os/IBinder;

    const/4 v7, -0x1

    const-string/jumbo v8, "minimize_dt"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->moveAllTasksToBack(Landroid/os/IBinder;ILjava/lang/String;)V

    goto :goto_0

    .line 1566
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 1567
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v8}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 1570
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1571
    if-eqz v0, :cond_5

    .line 1572
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v5, :cond_5

    .line 1573
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v5, v9}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 1576
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->requestState(I)V

    goto :goto_0

    .line 1577
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnPopup:Landroid/view/View;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1578
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->isEnableMakePenWindow()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1580
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->requestState(I)V

    goto :goto_0

    .line 1591
    :cond_7
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnExit:Landroid/view/View;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1592
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 1593
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1594
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1595
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->forceHideInputMethod()Z

    .line 1597
    :cond_8
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnExit:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1598
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mBtnExit:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 1602
    :cond_9
    if-eqz v0, :cond_a

    .line 1603
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->finishAllTasks(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1611
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iput-boolean v8, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsFinishing:Z

    goto/16 :goto_0

    .line 1605
    :cond_a
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1607
    :catch_0
    move-exception v1

    .line 1608
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1618
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 1619
    .local v0, "action":I
    sget-boolean v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "DesktopMultiPhoneWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DesktopWindowHeader :: onTouch() event="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", view="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", caller="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;

    .line 1623
    .local v1, "decor":Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1624
    packed-switch v0, :pswitch_data_0

    .line 1749
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v8, :cond_2

    .line 1750
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1752
    :cond_2
    const/4 v8, 0x1

    :goto_1
    return v8

    .line 1626
    :pswitch_0
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mHasStackFocus:Z

    if-nez v8, :cond_3

    .line 1627
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v9, v9, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackId(Landroid/os/IBinder;)I

    move-result v6

    .line 1628
    .local v6, "stackId":I
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setFocusedStack(IZ)V

    .line 1631
    .end local v6    # "stackId":I
    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsInputMethodForceHiding:Z

    .line 1632
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->forceHideInputMethod()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1633
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsInputMethodForceHiding:Z

    .line 1634
    const/4 v8, 0x1

    goto :goto_1

    .line 1637
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->isPenWindowResizing()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1638
    sget-boolean v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "DesktopMultiPhoneWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DesktopWindowHeader :: onTouch() decor is resizing, event="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", view="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", caller="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_5
    const/4 v8, 0x1

    goto :goto_1

    .line 1642
    :cond_6
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/Docking;->init()V

    .line 1643
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsMoving:Z

    .line 1644
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsLongPressed:Z

    .line 1645
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsTouchDown:Z

    .line 1646
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledX:I

    .line 1647
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledY:I

    .line 1649
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    .line 1651
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_7

    .line 1653
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.sec.android.OUTSIDE_TOUCH"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1654
    .local v5, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1657
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1662
    :pswitch_1
    iget-boolean v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsInputMethodForceHiding:Z

    if-eqz v8, :cond_8

    .line 1663
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1666
    :cond_8
    invoke-virtual {v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->isPenWindowResizing()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1667
    sget-boolean v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "DesktopMultiPhoneWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DesktopWindowHeader :: onTouch() decor is resizing, event="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", view="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", caller="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1671
    :cond_a
    iget-boolean v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsMoving:Z

    iget-boolean v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsLongPressed:Z

    or-int/2addr v8, v9

    if-nez v8, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledX:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mMoveInterval:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v10, v10, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDssScale:F

    div-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledY:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mMoveInterval:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v10, v10, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDssScale:F

    div-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_1

    .line 1680
    :cond_b
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsMoving:Z

    .line 1681
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledX:I

    sub-int v3, v8, v9

    .line 1682
    .local v3, "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledY:I

    sub-int v4, v8, v9

    .line 1683
    .local v4, "dy":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledX:I

    .line 1684
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledY:I

    .line 1686
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledX:I

    iget v10, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledY:I

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/policy/multiwindow/Docking;->updateZone(II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1687
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1691
    :cond_c
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/Docking;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1692
    .local v2, "dockingBound":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1693
    if-eqz v2, :cond_d

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/Docking;->isDockingCanceled()Z

    move-result v8

    if-nez v8, :cond_d

    .line 1694
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    const/4 v9, 0x6

    invoke-virtual {v8, v2, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showGuideDT(Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    .line 1696
    :cond_d
    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1697
    .local v7, "tempBoundForDesktop":Landroid/graphics/Rect;
    iget v8, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderHeight()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 1698
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    const/4 v9, 0x5

    invoke-virtual {v8, v7, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showGuideDT(Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    .line 1705
    .end local v2    # "dockingBound":Landroid/graphics/Rect;
    .end local v3    # "dx":I
    .end local v4    # "dy":I
    .end local v7    # "tempBoundForDesktop":Landroid/graphics/Rect;
    :pswitch_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsTouchDown:Z

    .line 1707
    iget-boolean v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsInputMethodForceHiding:Z

    if-eqz v8, :cond_e

    .line 1708
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1711
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->isPenWindowResizing()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1712
    sget-boolean v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v8, :cond_f

    const-string v8, "DesktopMultiPhoneWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DesktopWindowHeader :: onTouch() decor is resizing, event="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", view="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", caller="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_f
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1716
    :cond_10
    iget-boolean v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsMoving:Z

    if-eqz v8, :cond_11

    .line 1717
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledX:I

    sub-int v3, v8, v9

    .line 1718
    .restart local v3    # "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledY:I

    sub-int v4, v8, v9

    .line 1720
    .restart local v4    # "dy":I
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/Docking;->isDocking()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/Docking;->isDockingCanceled()Z

    move-result v8

    if-nez v8, :cond_13

    .line 1721
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/Docking;->checkCenterBarPoint()V

    .line 1723
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v8, :cond_12

    .line 1725
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v9, v9, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mToken:Landroid/os/IBinder;

    iget-object v10, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v10, v10, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v10}, Lcom/android/internal/policy/multiwindow/Docking;->getZone()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v11}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/policy/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 1741
    .end local v3    # "dx":I
    .end local v4    # "dy":I
    :cond_11
    :goto_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsMoving:Z

    .line 1742
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/Docking;->clear()V

    .line 1743
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->dismissGuide()V

    goto/16 :goto_0

    .line 1729
    .restart local v3    # "dx":I
    .restart local v4    # "dy":I
    :cond_12
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v9, v9, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mToken:Landroid/os/IBinder;

    iget-object v10, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v10, v10, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v10}, Lcom/android/internal/policy/multiwindow/Docking;->getZone()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v11}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/policy/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1732
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v9, "POPW"

    const-string v10, "CHANGE-SPLIT"

    invoke-static {v8, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1737
    :cond_13
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1738
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v9, v9, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 1624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method removeWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1799
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsAttached:Z

    if-eqz v0, :cond_1

    .line 1800
    sget-boolean v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DesktopMultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesktopWindowHeader :: removeWindow(), caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_0
    if-eqz p1, :cond_1

    .line 1802
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsAttached:Z

    .line 1806
    :cond_1
    return-void
.end method

.method protected setHeaderGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "g"    # Landroid/view/GestureDetector;

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1437
    return-void
.end method

.method public setWindowHeaderAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1757
    return-void
.end method

.method updatePosition(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1809
    iget-boolean v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsAttached:Z

    if-eqz v1, :cond_0

    .line 1810
    invoke-direct {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1811
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1812
    if-eqz p1, :cond_0

    .line 1813
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1816
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public updateWindowHeaderViewVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->updateIsFullScreen()V

    .line 1761
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsFullScreen:Z

    if-nez v0, :cond_2

    .line 1762
    sget-boolean v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1763
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1771
    :cond_1
    :goto_0
    return-void

    .line 1767
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1768
    sget-boolean v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1769
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
