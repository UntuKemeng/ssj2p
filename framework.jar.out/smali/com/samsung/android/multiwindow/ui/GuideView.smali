.class public Lcom/samsung/android/multiwindow/ui/GuideView;
.super Landroid/widget/FrameLayout;
.source "GuideView.java"


# static fields
.field private static final ANIMATION_DURATION_FAST:I = 0xfa

.field private static final ANIMATION_DURATION_SLOW:I = 0x14d

.field public static final CONTROLLER_DOCKING:I = 0x6

.field public static final DESKTOP_MOVE:I = 0x5

.field public static final DOCKING:I = 0x2

.field public static final MOVE:I = 0x3

.field public static final NONE:I = -0x1

.field public static final NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GuideView"

.field public static final WARNING:I = 0x1

.field public static final WARNING_NOT_SUPPORT:I = 0x4


# instance fields
.field private mAttached:Z

.field private mBorderView:Landroid/widget/ImageView;

.field private mDimAmount:F

.field private mDimBlueColor:I

.field private mDimRedColor:I

.field private mDismissDeferred:Z

.field mDisplay:Landroid/view/Display;

.field private mDockingHightlightColor:I

.field private mFakeBorderView:Landroid/widget/ImageView;

.field private mFakeHeaderCueView:Landroid/widget/ImageView;

.field private mFakeHeaderView:Landroid/widget/ImageView;

.field private mGuideArrowTintColor:I

.field private mGuideCueTintColor:I

.field private mGuideDrawable:Landroid/graphics/drawable/Drawable;

.field private mGuidePaddingBottom:I

.field private mGuidePaddingLeft:I

.field private mGuidePaddingRight:I

.field private mGuidePaddingTop:I

.field private mGuideState:I

.field private mGuideWidth:I

.field private mHeaderViewVisibility:Z

.field private mIsSupportGuideRectView:Z

.field private mIsSupportWindowController:Z

.field private mLastGuideState:I

.field private mLastRect:Landroid/graphics/Rect;

.field private mMultiWindowFlags:I

.field private mShowing:Z

.field private mToken:Landroid/os/IBinder;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "windowType"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;ILandroid/view/Display;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;ILandroid/view/Display;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "windowType"    # I
    .param p4, "display"    # Landroid/view/Display;

    .prologue
    const v3, 0xffffff

    const/high16 v2, -0x67000000

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    .line 78
    iput v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastGuideState:I

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mHeaderViewVisibility:Z

    .line 85
    const/16 v0, 0x8d4

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowType:I

    .line 88
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimAmount:F

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    .line 97
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    .line 98
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    .line 100
    iput v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    .line 101
    iput v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimBlueColor:I

    .line 102
    iput v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimRedColor:I

    .line 103
    iput v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideCueTintColor:I

    iput v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideArrowTintColor:I

    .line 106
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDismissDeferred:Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDisplay:Landroid/view/Display;

    .line 124
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportGuideRectViewUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    .line 125
    iput-object p2, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mToken:Landroid/os/IBinder;

    .line 126
    iput p3, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowType:I

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowManager:Landroid/view/WindowManager;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    .line 129
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    .line 131
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimBlueColor:I

    .line 132
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimRedColor:I

    .line 134
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105032a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideWidth:I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportOpenTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    .line 139
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimBlueColor:I

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimBlueColor:I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideCueTintColor:I

    .line 144
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideArrowTintColor:I

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "windowType"    # I

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 114
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/multiwindow/ui/GuideView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/multiwindow/ui/GuideView;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDismissDeferred:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/multiwindow/ui/GuideView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/multiwindow/ui/GuideView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/multiwindow/ui/GuideView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/multiwindow/ui/GuideView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/multiwindow/ui/GuideView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/multiwindow/ui/GuideView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 354
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 355
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "MultiWindow GuideView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 356
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 357
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 358
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 359
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 360
    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 361
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 362
    const/16 v1, 0x318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 366
    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 367
    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimAmount:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 368
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 371
    :cond_0
    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mMultiWindowFlags:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 372
    return-object v0
.end method

.method private refreshBackground()V
    .locals 7

    .prologue
    const v6, 0x10805c5

    const v5, 0x10805ad

    const/4 v4, 0x0

    const v3, 0x10805f5

    const/4 v2, 0x4

    .line 413
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 422
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 432
    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    if-eqz v0, :cond_5

    .line 433
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 434
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimBlueColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 435
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastGuideState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 436
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->animateBorderDrag()V

    goto :goto_0

    .line 437
    :cond_4
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastGuideState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->animateBorderUndocking()V

    goto :goto_0

    .line 442
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 443
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 449
    :pswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    if-eqz v0, :cond_6

    .line 450
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    const v1, 0x10805f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimRedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 454
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    const v1, 0x10805f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 455
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const v1, 0x10805ac

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 457
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 461
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    const v1, 0x10805ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 462
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 471
    :pswitch_3
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    if-eqz v0, :cond_9

    .line 472
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 473
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimBlueColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 474
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastGuideState:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastGuideState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 475
    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_8

    .line 476
    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 477
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 478
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 480
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->animateBorderDocking()V

    goto/16 :goto_0

    .line 484
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 485
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 492
    :pswitch_4
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    if-eqz v0, :cond_a

    .line 493
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimBlueColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 495
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->animateHeaderDrag()V

    goto/16 :goto_0

    .line 498
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 499
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 503
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private varargs startAnimationSet(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;[Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "duration"    # J
    .param p4, "listener"    # Landroid/view/animation/Animation$AnimationListener;
    .param p5, "animations"    # [Landroid/view/animation/Animation;

    .prologue
    .line 681
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 682
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 683
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 684
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 685
    :cond_0
    if-eqz p5, :cond_1

    .line 686
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p5

    if-ge v1, v2, :cond_1

    .line 687
    aget-object v2, p5, v1

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 690
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 691
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 692
    return-void
.end method


# virtual methods
.method public animateBorderDocking()V
    .locals 14

    .prologue
    const-wide/16 v2, 0xfa

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 609
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 610
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 611
    .local v6, "alphaAnim":Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 612
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    new-array v5, v13, [Landroid/view/animation/Animation;

    aput-object v6, v5, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->startAnimationSet(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;[Landroid/view/animation/Animation;)V

    .line 614
    .end local v6    # "alphaAnim":Landroid/view/animation/Animation;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 615
    new-instance v4, Lcom/samsung/android/multiwindow/ui/GuideView$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/multiwindow/ui/GuideView$5;-><init>(Lcom/samsung/android/multiwindow/ui/GuideView;)V

    .line 627
    .local v4, "listener":Landroid/view/animation/Animation$AnimationListener;
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v11, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 628
    .restart local v6    # "alphaAnim":Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 629
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 630
    .local v9, "vlp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v9, :cond_1

    .line 631
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingRight:I

    add-int v8, v0, v1

    .line 632
    .local v8, "totalWidth":I
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingBottom:I

    add-int v7, v0, v1

    .line 633
    .local v7, "totalHeight":I
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingLeft:I

    sub-int/2addr v0, v1

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 634
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingTop:I

    sub-int/2addr v0, v1

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 635
    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 636
    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 637
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 638
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 640
    .end local v7    # "totalHeight":I
    .end local v8    # "totalWidth":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    new-array v5, v13, [Landroid/view/animation/Animation;

    aput-object v6, v5, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->startAnimationSet(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;[Landroid/view/animation/Animation;)V

    .line 642
    .end local v4    # "listener":Landroid/view/animation/Animation$AnimationListener;
    .end local v6    # "alphaAnim":Landroid/view/animation/Animation;
    .end local v9    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method public animateBorderDrag()V
    .locals 7

    .prologue
    .line 590
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 591
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 592
    .local v6, "alphaAnim":Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 593
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    const-wide/16 v2, 0xfa

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [Landroid/view/animation/Animation;

    const/4 v0, 0x0

    aput-object v6, v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->startAnimationSet(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;[Landroid/view/animation/Animation;)V

    .line 595
    .end local v6    # "alphaAnim":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public animateBorderDragRelease(Landroid/view/animation/Animation$AnimationListener;)Z
    .locals 8
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 598
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 599
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 600
    .local v6, "alphaAnim":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v6, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 601
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    const-wide/16 v2, 0xfa

    new-array v5, v7, [Landroid/view/animation/Animation;

    aput-object v6, v5, v0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->startAnimationSet(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;[Landroid/view/animation/Animation;)V

    move v0, v7

    .line 605
    .end local v6    # "alphaAnim":Landroid/view/animation/Animation;
    :cond_0
    return v0
.end method

.method public animateBorderUndocking()V
    .locals 14

    .prologue
    const-wide/16 v2, 0xfa

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 645
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 646
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 647
    .local v6, "alphaAnim":Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 648
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    new-array v5, v13, [Landroid/view/animation/Animation;

    aput-object v6, v5, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->startAnimationSet(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;[Landroid/view/animation/Animation;)V

    .line 650
    .end local v6    # "alphaAnim":Landroid/view/animation/Animation;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 651
    new-instance v4, Lcom/samsung/android/multiwindow/ui/GuideView$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/multiwindow/ui/GuideView$6;-><init>(Lcom/samsung/android/multiwindow/ui/GuideView;)V

    .line 663
    .local v4, "listener":Landroid/view/animation/Animation$AnimationListener;
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v11, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 664
    .restart local v6    # "alphaAnim":Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 665
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 666
    .local v9, "vlp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v9, :cond_1

    .line 667
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingRight:I

    add-int v8, v0, v1

    .line 668
    .local v8, "totalWidth":I
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingBottom:I

    add-int v7, v0, v1

    .line 669
    .local v7, "totalHeight":I
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingLeft:I

    sub-int/2addr v0, v1

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 670
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingTop:I

    sub-int/2addr v0, v1

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 671
    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 672
    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 673
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 674
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 676
    .end local v7    # "totalHeight":I
    .end local v8    # "totalWidth":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    new-array v5, v13, [Landroid/view/animation/Animation;

    aput-object v6, v5, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->startAnimationSet(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;[Landroid/view/animation/Animation;)V

    .line 678
    .end local v4    # "listener":Landroid/view/animation/Animation$AnimationListener;
    .end local v6    # "alphaAnim":Landroid/view/animation/Animation;
    .end local v9    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method public animateHeaderDrag()V
    .locals 10

    .prologue
    .line 512
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 513
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 515
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 516
    .local v0, "scaleAnim":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 517
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 518
    .local v9, "alphaAnim":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 519
    iget-object v3, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    const-wide/16 v4, 0x14d

    const/4 v6, 0x0

    const/4 v1, 0x2

    new-array v7, v1, [Landroid/view/animation/Animation;

    const/4 v1, 0x0

    aput-object v9, v7, v1

    const/4 v1, 0x1

    aput-object v0, v7, v1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/multiwindow/ui/GuideView;->startAnimationSet(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;[Landroid/view/animation/Animation;)V

    .line 521
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const v2, 0x10805c2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 522
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideArrowTintColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 523
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alphaAnim":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 524
    .restart local v9    # "alphaAnim":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 525
    iget-object v3, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const-wide/16 v4, 0x14d

    const/4 v6, 0x0

    const/4 v1, 0x1

    new-array v7, v1, [Landroid/view/animation/Animation;

    const/4 v1, 0x0

    aput-object v9, v7, v1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/multiwindow/ui/GuideView;->startAnimationSet(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;[Landroid/view/animation/Animation;)V

    .line 527
    .end local v0    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v9    # "alphaAnim":Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 528
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 529
    .restart local v9    # "alphaAnim":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 530
    iget-object v3, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    const-wide/16 v4, 0x14d

    const/4 v6, 0x0

    const/4 v1, 0x1

    new-array v7, v1, [Landroid/view/animation/Animation;

    const/4 v1, 0x0

    aput-object v9, v7, v1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/multiwindow/ui/GuideView;->startAnimationSet(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;[Landroid/view/animation/Animation;)V

    .line 532
    .end local v9    # "alphaAnim":Landroid/view/animation/Animation;
    :cond_1
    return-void
.end method

.method public animateHeaderRelease(Landroid/view/animation/Animation$AnimationListener;)Z
    .locals 24
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 535
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 536
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 537
    new-instance v22, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 538
    .local v22, "alphaAnim":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 539
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 540
    .local v2, "scaleAnim":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 541
    new-instance v8, Lcom/samsung/android/multiwindow/ui/GuideView$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/samsung/android/multiwindow/ui/GuideView$2;-><init>(Lcom/samsung/android/multiwindow/ui/GuideView;)V

    .line 551
    .local v8, "ll":Landroid/view/animation/Animation$AnimationListener;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    const-wide/16 v6, 0x14d

    const/4 v3, 0x2

    new-array v9, v3, [Landroid/view/animation/Animation;

    const/4 v3, 0x0

    aput-object v22, v9, v3

    const/4 v3, 0x1

    aput-object v2, v9, v3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/multiwindow/ui/GuideView;->startAnimationSet(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;[Landroid/view/animation/Animation;)V

    .line 552
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideCueTintColor:I

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v23

    .line 553
    .local v23, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 554
    new-instance v3, Lcom/samsung/android/multiwindow/ui/GuideView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/multiwindow/ui/GuideView$3;-><init>(Lcom/samsung/android/multiwindow/ui/GuideView;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 560
    const-wide/16 v4, 0x14d

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 561
    invoke-virtual/range {v23 .. v23}, Landroid/animation/ValueAnimator;->start()V

    .line 563
    new-instance v14, Lcom/samsung/android/multiwindow/ui/GuideView$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/multiwindow/ui/GuideView$4;-><init>(Lcom/samsung/android/multiwindow/ui/GuideView;)V

    .line 573
    .local v14, "l":Landroid/view/animation/Animation$AnimationListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const v4, 0x10805c2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideArrowTintColor:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 575
    new-instance v22, Landroid/view/animation/AlphaAnimation;

    .end local v22    # "alphaAnim":Landroid/view/animation/Animation;
    const v3, 0x3f333333    # 0.7f

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 576
    .restart local v22    # "alphaAnim":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const-wide/16 v12, 0xfa

    const/4 v3, 0x1

    new-array v15, v3, [Landroid/view/animation/Animation;

    const/4 v3, 0x0

    aput-object v22, v15, v3

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/samsung/android/multiwindow/ui/GuideView;->startAnimationSet(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;[Landroid/view/animation/Animation;)V

    .line 579
    .end local v2    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v8    # "ll":Landroid/view/animation/Animation$AnimationListener;
    .end local v14    # "l":Landroid/view/animation/Animation$AnimationListener;
    .end local v22    # "alphaAnim":Landroid/view/animation/Animation;
    .end local v23    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 580
    new-instance v22, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 581
    .restart local v22    # "alphaAnim":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x14d

    const/4 v3, 0x1

    new-array v0, v3, [Landroid/view/animation/Animation;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v22, v21, v3

    move-object/from16 v16, p0

    move-object/from16 v20, p1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/multiwindow/ui/GuideView;->startAnimationSet(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;[Landroid/view/animation/Animation;)V

    .line 586
    const/4 v3, 0x1

    .end local v22    # "alphaAnim":Landroid/view/animation/Animation;
    :goto_0
    return v3

    .line 584
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    if-eqz v0, :cond_1

    .line 159
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDismissDeferred:Z

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "GuideView"

    const-string/jumbo v1, "skip dismiss, mDismissDeferred=true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-exit p0

    .line 171
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->removeAllViews()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastGuideState:I

    .line 170
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dismissAfterAnim()V
    .locals 4

    .prologue
    .line 175
    iget-boolean v2, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    if-eqz v2, :cond_2

    .line 176
    const-string v2, "GuideView"

    const-string v3, "dismissAfterAnim()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDismissDeferred:Z

    if-nez v2, :cond_0

    .line 178
    new-instance v1, Lcom/samsung/android/multiwindow/ui/GuideView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/ui/GuideView$1;-><init>(Lcom/samsung/android/multiwindow/ui/GuideView;)V

    .line 194
    .local v1, "listener":Landroid/view/animation/Animation$AnimationListener;
    const/4 v0, 0x0

    .line 195
    .local v0, "isSuccessful":Z
    iget v2, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastGuideState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 196
    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->animateHeaderRelease(Landroid/view/animation/Animation$AnimationListener;)Z

    move-result v0

    .line 200
    :goto_0
    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->hide()V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 209
    .end local v0    # "isSuccessful":Z
    .end local v1    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :cond_0
    :goto_1
    return-void

    .line 198
    .restart local v0    # "isSuccessful":Z
    .restart local v1    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->animateBorderDragRelease(Landroid/view/animation/Animation$AnimationListener;)Z

    move-result v0

    goto :goto_0

    .line 206
    .end local v0    # "isSuccessful":Z
    .end local v1    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->hide()V

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    goto :goto_1
.end method

.method public getGuideState()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    return v0
.end method

.method public getGuideViewAttached()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    return v0
.end method

.method public getLastBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 331
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    if-eqz v0, :cond_1

    .line 332
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    .line 333
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 343
    :cond_1
    return-void
.end method

.method public init()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 216
    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    if-nez v6, :cond_5

    .line 217
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    if-nez v6, :cond_0

    .line 218
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    .line 219
    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    if-eqz v6, :cond_0

    .line 220
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    .line 224
    :cond_0
    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    if-nez v6, :cond_1

    .line 225
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    .line 226
    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    if-nez v6, :cond_1

    .line 227
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    .line 228
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    const v7, 0x10805c4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 229
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    iget v7, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideCueTintColor:I

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 230
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->refreshBackground()V

    .line 235
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 236
    .local v1, "bd":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 237
    .local v5, "vlp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 241
    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    if-eqz v6, :cond_2

    .line 242
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 243
    .local v2, "blp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v2}, Lcom/samsung/android/multiwindow/ui/GuideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeBorderView:Landroid/widget/ImageView;

    iget v7, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimBlueColor:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 248
    .end local v2    # "blp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v6, :cond_4

    .line 249
    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    .line 250
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideWidth:I

    iget v7, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideWidth:I

    invoke-direct {v0, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 251
    .local v0, "alp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    .end local v0    # "alp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideWidth:I

    iget v7, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideWidth:I

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 254
    .local v3, "flp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v3}, Lcom/samsung/android/multiwindow/ui/GuideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    invoke-virtual {p0, v8}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 258
    .end local v3    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->resetResolvedLayoutDirection()V

    .line 259
    invoke-virtual {p0, v8}, Lcom/samsung/android/multiwindow/ui/GuideView;->setLayoutDirection(I)V

    .line 261
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 262
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6, p0, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iput-boolean v8, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    .line 264
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    .line 266
    .end local v1    # "bd":Landroid/graphics/drawable/Drawable;
    .end local v4    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 705
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 706
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 707
    return-void
.end method

.method public setDimAmount(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 700
    iput p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimAmount:F

    .line 701
    return-void
.end method

.method public setFakeHeaderVisibility(Z)V
    .locals 3
    .param p1, "vis"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 388
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mHeaderViewVisibility:Z

    .line 392
    if-eqz p1, :cond_2

    .line 393
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 398
    if-eqz p1, :cond_3

    .line 399
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideCueTintColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 400
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setGuideBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 408
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideDrawable:Landroid/graphics/drawable/Drawable;

    .line 409
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->refreshBackground()V

    .line 410
    return-void
.end method

.method public setGuidePadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 710
    monitor-enter p0

    .line 711
    :try_start_0
    iput p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingLeft:I

    .line 712
    iput p2, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingTop:I

    .line 713
    iput p3, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingRight:I

    .line 714
    iput p4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingBottom:I

    .line 715
    monitor-exit p0

    .line 716
    return-void

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGuideState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 376
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    if-ne v0, p1, :cond_0

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    iput p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    .line 380
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->refreshBackground()V

    goto :goto_0
.end method

.method public setMultiWindowFlags(I)V
    .locals 0
    .param p1, "multiWindowFlags"    # I

    .prologue
    .line 350
    iput p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mMultiWindowFlags:I

    .line 351
    return-void
.end method

.method public show(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 269
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIIIZ)V

    .line 270
    return-void
.end method

.method public show(IIIIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "bDocking"    # Z

    .prologue
    const/4 v7, 0x1

    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    if-nez v5, :cond_1

    .line 275
    :cond_0
    const-string v5, "GuideView"

    const-string v6, "mBorder or mFakeHeaderView is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    monitor-exit p0

    .line 328
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    if-nez v5, :cond_2

    .line 279
    const-string v5, "GuideView"

    const-string/jumbo v6, "mFakeArrowView is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_2
    iget v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingLeft:I

    add-int/2addr v5, p3

    iget v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingRight:I

    add-int v3, v5, v6

    .line 283
    .local v3, "totalWidth":I
    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 284
    .local v4, "vlp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingTop:I

    add-int/2addr v5, p4

    iget v6, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingBottom:I

    add-int v2, v5, v6

    .line 285
    .local v2, "totalHeight":I
    iget v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingLeft:I

    sub-int v5, p1, v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 286
    iget v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingTop:I

    sub-int v5, p2, v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 287
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 288
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 289
    if-eqz p5, :cond_3

    .line 290
    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_7

    .line 291
    const/4 v5, -0x1

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 297
    :cond_3
    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v5, :cond_4

    .line 298
    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 299
    .local v1, "flp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int v5, p3, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p1

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 300
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, p2, v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 301
    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportGuideRectView:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    .line 303
    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 304
    .local v0, "alp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int v5, p3, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p1

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 305
    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, p2, v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 306
    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    .end local v0    # "alp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    if-nez v5, :cond_6

    .line 311
    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v5, :cond_5

    .line 313
    iget v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_8

    .line 314
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 319
    :cond_5
    :goto_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    .line 322
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    .line 323
    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 325
    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    add-int v6, p1, p3

    add-int v7, p2, p4

    invoke-virtual {v5, p1, p2, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 326
    iget v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    iput v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastGuideState:I

    .line 327
    monitor-exit p0

    goto/16 :goto_0

    .end local v2    # "totalHeight":I
    .end local v3    # "totalWidth":I
    .end local v4    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 293
    .restart local v2    # "totalHeight":I
    .restart local v3    # "totalWidth":I
    .restart local v4    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const/4 v5, -0x1

    :try_start_1
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 316
    :cond_8
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method