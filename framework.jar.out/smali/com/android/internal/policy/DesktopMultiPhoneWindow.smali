.class public Lcom/android/internal/policy/DesktopMultiPhoneWindow;
.super Lcom/android/internal/policy/MultiPhoneWindow;
.source "DesktopMultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;,
        Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;,
        Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;,
        Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final DEBUG_VIS:Z = false

.field static final TAG:Ljava/lang/String; = "DesktopMultiPhoneWindow"


# instance fields
.field private mDefDesktopSizeRatio:F

.field private mDesktopManager:Lcom/samsung/android/desktop/DesktopManager;

.field mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

.field mDesktopNormalWindowHeaderView:Landroid/view/View;

.field mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

.field mDesktopPopupWindowHeaderView:Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;

.field private mDesktopResizablePadding:Landroid/graphics/Rect;

.field mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

.field mDesktopSplitWindowHeaderView:Landroid/view/View;

.field private mIsDesktopTouchBlocked:Z

.field private mIsDesktopViewBlocked:Z

.field private mIsMultiWindowBlocked:Z

.field private mMaxDesktopSelectiveSizeRatio:F

.field private mMaxDesktopSizeRatio:F

.field private mMinDesktopSizeRatio:F

.field private mScreenContext:Landroid/content/Context;

.field mWindowHeaderFocusedColor:I

.field mWindowHeaderHeight:I

.field mWindowHeaderUnFocusedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 135
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;-><init>(Landroid/content/Context;)V

    .line 113
    iput v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mWindowHeaderHeight:I

    .line 117
    iput v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinDesktopSizeRatio:F

    .line 118
    iput v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDefDesktopSizeRatio:F

    .line 119
    iput v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMaxDesktopSizeRatio:F

    .line 120
    iput v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMaxDesktopSelectiveSizeRatio:F

    .line 122
    iput-boolean v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsDesktopViewBlocked:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsMultiWindowBlocked:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsDesktopTouchBlocked:Z

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopManager:Lcom/samsung/android/desktop/DesktopManager;

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->initResourceDT()V

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->updateDesktopViewBlocked(Landroid/content/Context;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    new-instance v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;-><init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/Docking;->setOnDockingListener(Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "desktop"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktop/DesktopManager;

    iput-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopManager:Lcom/samsung/android/desktop/DesktopManager;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsDesktopTouchBlocked:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getResizalbePaddingRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsDesktopViewBlocked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsMultiWindowBlocked:Z

    return v0
.end method

.method private getResizalbePaddingRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1292
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private installDesktopWindowHeader()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, -0x1

    .line 1358
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1359
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x1090050

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    .line 1361
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .line 1362
    .local v1, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 1363
    invoke-virtual {v1, v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1364
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeView(Landroid/view/View;)V

    .line 1365
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1362
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1367
    .end local v0    # "content":Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    .line 1370
    new-instance v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;-><init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;I)V

    iput-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    .line 1371
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->generateWindowHeaderView()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeaderView:Landroid/view/View;

    .line 1372
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v10, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1374
    .local v6, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .line 1375
    .local v2, "decorView":Lcom/android/internal/policy/PhoneWindow$DecorView;
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeaderView:Landroid/view/View;

    invoke-virtual {v2, v8, v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1376
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->bringToFront()V

    .line 1378
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeaderView:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 1379
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v8, v11}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    .line 1383
    :cond_1
    new-instance v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;-><init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;I)V

    iput-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    .line 1384
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->generateWindowHeaderView()Landroid/view/View;

    move-result-object v7

    .line 1385
    .local v7, "windowHeader":Landroid/view/View;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mWindowHeaderHeight:I

    invoke-direct {v5, v10, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1386
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v7, v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1387
    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    .line 1388
    iput-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeaderView:Landroid/view/View;

    .line 1390
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeaderView:Landroid/view/View;

    if-eqz v8, :cond_2

    .line 1391
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v8, v11}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    .line 1395
    :cond_2
    new-instance v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    const/4 v9, 0x2

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;-><init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;I)V

    iput-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    .line 1396
    new-instance v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;-><init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeaderView:Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;

    .line 1397
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeaderView:Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;

    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->generateWindowHeaderView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->addView(Landroid/view/View;)V

    .line 1398
    return-void
.end method

.method private updateDesktopViewBlocked(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1297
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1298
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1300
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsDesktopViewBlocked:Z

    .line 1301
    sget-boolean v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DesktopMultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DesktopView is blocked, pacakge="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :cond_1
    return-void
.end method


# virtual methods
.method adjustStackBound(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 861
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v0, v3, 0x3

    .line 866
    .local v0, "boundaryX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v1, v3, 0x3

    .line 867
    .local v1, "boundaryY":I
    iget-boolean v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_2

    .line 868
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 869
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050306

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 871
    :cond_2
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 872
    .local v2, "maxSize":Landroid/graphics/Point;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 874
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    if-le v3, v4, :cond_4

    .line 875
    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 880
    :cond_3
    :goto_1
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_5

    .line 881
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 876
    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v3, v0, :cond_3

    .line 877
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v0, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    .line 882
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v3, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v4}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 884
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v4}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderHeight()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method

.method protected generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;
    .locals 3

    .prologue
    .line 823
    new-instance v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;-><init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "decor"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 828
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 855
    .local v0, "ret":Landroid/view/ViewGroup;
    return-object v0
.end method

.method generatePenWindowLayout()V
    .locals 0

    .prologue
    .line 894
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->generatePenWindowLayout()V

    .line 895
    return-void
.end method

.method public getProperContextDT()Landroid/content/Context;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getStackBoundForDesktopMode()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 1027
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1028
    .local v0, "tempRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v2}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1031
    :cond_0
    return-object v0
.end method

.method initResourceDT()V
    .locals 0

    .prologue
    .line 910
    return-void
.end method

.method isDesktopMode()Z
    .locals 1

    .prologue
    .line 930
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .locals 13
    .param p1, "configDiff"    # I

    .prologue
    .line 1163
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->updateMinMaxSize()V

    .line 1165
    and-int/lit16 v9, p1, 0x200

    if-eqz v9, :cond_1

    .line 1167
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1168
    .local v8, "tmpBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    .line 1169
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1170
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1173
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    .line 1174
    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-eqz v9, :cond_1

    .line 1175
    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/multiwindow/Border;->setDesktopMode(Z)V

    .line 1176
    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    iget-boolean v10, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mHasStackFocus:Z

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/multiwindow/Border;->setFocus(ZZ)V

    .line 1177
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 1178
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 1185
    .end local v8    # "tmpBounds":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1186
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->onMultiWindowConfigurationChanged(I)V

    .line 1286
    :cond_2
    :goto_1
    return-void

    .line 1180
    .restart local v8    # "tmpBounds":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getState()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 1181
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showMinimizedIconWindow()V

    goto :goto_0

    .line 1190
    .end local v8    # "tmpBounds":Landroid/graphics/Rect;
    :cond_4
    and-int/lit16 v9, p1, 0x80

    if-eqz v9, :cond_2

    .line 1194
    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v9, :cond_2

    .line 1198
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getState()I

    move-result v2

    .line 1199
    .local v2, "mwState":I
    sget-boolean v9, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v9, :cond_5

    .line 1200
    const/4 v9, 0x3

    if-ne v2, v9, :cond_5

    .line 1201
    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v5

    .line 1202
    .local v5, "preferredOrientation":I
    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFixedOrientation(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1203
    iget-boolean v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v9, :cond_2

    .line 1204
    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    goto :goto_1

    .line 1211
    .end local v5    # "preferredOrientation":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    .line 1212
    .local v4, "oldRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1213
    .local v3, "newRect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mLastOrientation:I

    .line 1215
    sget-boolean v9, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG_ORIENTATION:Z

    if-eqz v9, :cond_6

    const-string v10, "DesktopMultiPhoneWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onMultiWindowConfigurationChanged "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "oldRect="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isRotated(I)Z

    move-result v6

    .line 1219
    .local v6, "rotated":Z
    iget-boolean v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mLastRotated:Z

    if-ne v9, v6, :cond_7

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x4

    if-ne v2, v9, :cond_2

    .line 1222
    :cond_7
    iput-boolean v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mLastRotated:Z

    .line 1224
    const/4 v9, 0x3

    if-eq v2, v9, :cond_8

    const/4 v9, 0x4

    if-ne v2, v9, :cond_b

    .line 1225
    :cond_8
    iget-boolean v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v9, :cond_9

    .line 1226
    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 1227
    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v9, :cond_9

    .line 1228
    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v9}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowConfigurationChanged()V

    .line 1231
    :cond_9
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    goto/16 :goto_1

    .line 1215
    .end local v6    # "rotated":Z
    :cond_a
    const-string v9, ""

    goto :goto_2

    .line 1235
    .restart local v6    # "rotated":Z
    :cond_b
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 1237
    :pswitch_0
    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v10, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1242
    :pswitch_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    .line 1243
    const/4 v9, 0x3

    if-ne v2, v9, :cond_c

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-boolean v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v9, :cond_c

    .line 1244
    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 1247
    :cond_c
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "newRect":Landroid/graphics/Rect;
    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    iget v12, v4, Landroid/graphics/Rect;->right:I

    invoke-direct {v3, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1248
    .restart local v3    # "newRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1251
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    .line 1252
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1253
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->adjustScaleFactor()V

    .line 1255
    const/4 v9, 0x3

    if-ne v2, v9, :cond_2

    iget-boolean v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v9, :cond_2

    .line 1256
    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    goto/16 :goto_1

    .line 1261
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->initStackBound()V

    .line 1262
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    .line 1264
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 1265
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 1266
    const/4 v0, 0x0

    .line 1267
    .local v0, "dx":I
    const/4 v1, 0x0

    .line 1268
    .local v1, "dy":I
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1270
    iget v9, v4, Landroid/graphics/Rect;->left:I

    if-gez v9, :cond_11

    .line 1271
    iget v9, v4, Landroid/graphics/Rect;->left:I

    neg-int v0, v9

    .line 1275
    :cond_d
    :goto_3
    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v10, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mStatusBarHeight:I

    if-ge v9, v10, :cond_12

    .line 1276
    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mStatusBarHeight:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v9, v10

    .line 1280
    :cond_e
    :goto_4
    if-nez v0, :cond_f

    if-eqz v1, :cond_10

    .line 1281
    :cond_f
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1283
    :cond_10
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1272
    :cond_11
    iget v9, v4, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Point;->x:I

    if-le v9, v10, :cond_d

    .line 1273
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v4, Landroid/graphics/Rect;->right:I

    sub-int v0, v9, v10

    goto :goto_3

    .line 1277
    :cond_12
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    if-le v9, v10, :cond_e

    .line 1278
    iget v9, v7, Landroid/graphics/Point;->y:I

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v9, v10

    goto :goto_4

    .line 1235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 12
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v4, 0x0

    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v9, 0x4

    .line 1054
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1055
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/MultiPhoneWindow;->onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    sget-boolean v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v6, :cond_2

    const-string v6, "DesktopMultiPhoneWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onMultiWindowStyleChanged, reason=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newStyle"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", oldStyle="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mActivity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_2
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_3

    .line 1063
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1064
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    .line 1068
    :cond_3
    and-int/lit8 v6, p2, 0x20

    if-eqz v6, :cond_4

    .line 1069
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->requestState(I)V

    .line 1070
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->refreshUI(I)V

    goto :goto_0

    .line 1075
    :cond_4
    and-int/lit8 v6, p2, 0x4

    if-eqz v6, :cond_a

    .line 1076
    const/high16 v4, 0x20000

    invoke-virtual {p1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1077
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1078
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->refreshUI(I)V

    goto :goto_0

    .line 1079
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-ne v4, v11, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 1083
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1084
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getState()I

    move-result v1

    .line 1085
    .local v1, "state":I
    if-eq v1, v9, :cond_0

    .line 1086
    if-eq v1, v11, :cond_8

    const/4 v4, 0x3

    if-ne v1, v4, :cond_9

    .line 1087
    :cond_8
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->refreshUI(I)V

    goto/16 :goto_0

    .line 1088
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne v1, v5, :cond_0

    .line 1089
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->refreshUI(I)V

    goto/16 :goto_0

    .line 1097
    .end local v1    # "state":I
    .end local v2    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_a
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_c

    .line 1098
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeaderView:Landroid/view/View;

    if-eqz v6, :cond_b

    .line 1099
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v6

    if-eqz v6, :cond_11

    move v3, v4

    .line 1100
    .local v3, "visible":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v6, v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    .line 1103
    .end local v3    # "visible":I
    :cond_b
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p1, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_c

    .line 1105
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V

    .line 1110
    :cond_c
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v6, :cond_e

    .line 1111
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-eq v6, v7, :cond_12

    .line 1112
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-eqz v7, :cond_d

    move v4, v5

    :cond_d
    invoke-interface {v6, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    .line 1119
    :cond_e
    :goto_2
    const/4 v0, 0x0

    .line 1120
    .local v0, "currStackBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1121
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getState()I

    move-result v1

    .line 1122
    .restart local v1    # "state":I
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1125
    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1126
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1128
    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v4, :cond_f

    and-int/lit16 v4, p2, 0x100

    if-eqz v4, :cond_f

    .line 1130
    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V

    .line 1133
    :cond_f
    if-ne v1, v5, :cond_10

    .line 1134
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->refreshUI(I)V

    .line 1136
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->dismissGuide()V

    goto/16 :goto_0

    .line 1099
    .end local v0    # "currStackBounds":Landroid/graphics/Rect;
    .end local v1    # "state":I
    :cond_11
    const/16 v3, 0x8

    goto :goto_1

    .line 1113
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-eq v4, v6, :cond_e

    .line 1114
    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_2

    .line 1141
    .restart local v0    # "currStackBounds":Landroid/graphics/Rect;
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->dismissGuide()V

    .line 1147
    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1148
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1151
    iget-boolean v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v4, :cond_0

    .line 1152
    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->invalidate()V

    .line 1153
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->refreshUI(I)V

    goto/16 :goto_0
.end method

.method refreshBorder()V
    .locals 4

    .prologue
    .line 956
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-eqz v1, :cond_1

    .line 957
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v0

    .line 958
    .local v0, "isDesktop":Z
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    invoke-virtual {v1}, Lcom/android/internal/policy/multiwindow/Border;->getDesktopMode()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 959
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 960
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/multiwindow/Border;->setDesktopMode(Z)V

    .line 961
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    iget-boolean v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mHasStackFocus:Z

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/multiwindow/Border;->setFocus(ZZ)V

    .line 962
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 963
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 967
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/multiwindow/Border;->setDesktopMode(Z)V

    .line 969
    .end local v0    # "isDesktop":Z
    :cond_1
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshBorder()V

    .line 970
    return-void
.end method

.method public setMultiWindowBlocked(Z)V
    .locals 3
    .param p1, "blocked"    # Z

    .prologue
    .line 1037
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsMultiWindowBlocked:Z

    if-eq v0, p1, :cond_1

    .line 1038
    sget-boolean v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "DesktopMultiPhoneWindow"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiWindow, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string v0, "Not-Support"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsMultiWindowBlocked:Z

    .line 1041
    :cond_1
    return-void

    .line 1038
    :cond_2
    const-string v0, "Support"

    goto :goto_0
.end method

.method public shouldMultiWindowBlocked()Z
    .locals 2

    .prologue
    .line 1046
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1047
    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method showGuideDT(Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .prologue
    .line 174
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mHasStackFocus:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsAttachedToWindow:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v2, p2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 192
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 193
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/ui/GuideView;->setMultiWindowFlags(I)V

    .line 195
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 197
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 198
    .local v1, "scaledRect":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDssScale:F

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 225
    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    .line 228
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "scaledRect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method showMinimizedIconWindow()V
    .locals 3

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 976
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v0, :cond_1

    .line 977
    sget-boolean v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DesktopMultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showMinimizedIconWindow(), remove minimize icon because of desktop mode, caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 983
    :cond_1
    :goto_0
    return-void

    .line 981
    :cond_2
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->showMinimizedIconWindow()V

    goto :goto_0
.end method

.method protected updateIsFullScreen()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 937
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 938
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateIsFullScreen()V

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 943
    const/4 v0, 0x0

    .line 944
    .local v0, "isFullScreen":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 947
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsFullScreen:Z

    if-eq v1, v0, :cond_0

    .line 948
    sget-boolean v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "DesktopMultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh mIsFullScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsFullScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_2
    iput-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsFullScreen:Z

    goto :goto_0

    .line 944
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method updateMinMaxSize()V
    .locals 11

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v9

    if-nez v9, :cond_0

    .line 989
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMinMaxSize()V

    .line 1024
    :goto_0
    return-void

    .line 993
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 994
    .local v2, "displaySize":Landroid/graphics/Point;
    const/4 v9, 0x1

    invoke-virtual {p0, v2, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 996
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 997
    .local v3, "displayWidth":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 999
    .local v1, "displayHeight":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v0, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    move-object v9, v0

    .line 1001
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v3, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    move-object v9, v0

    .line 1002
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v1, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    .line 1004
    const/4 v4, 0x0

    .line 1005
    .local v4, "isSelective":Z
    sget-boolean v9, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v9, :cond_1

    .line 1006
    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1008
    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 1009
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 1010
    const/4 v4, 0x1

    .line 1015
    :cond_1
    int-to-float v9, v3

    iget v10, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinDesktopSizeRatio:F

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 1016
    .local v8, "minWidth":I
    int-to-float v9, v1

    iget v10, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinDesktopSizeRatio:F

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 1017
    .local v7, "minHeight":I
    int-to-float v10, v3

    if-eqz v4, :cond_2

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMaxDesktopSelectiveSizeRatio:F

    :goto_1
    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 1018
    .local v6, "maxWidth":I
    int-to-float v10, v1

    if-eqz v4, :cond_3

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMaxDesktopSelectiveSizeRatio:F

    :goto_2
    mul-float/2addr v9, v10

    float-to-int v5, v9

    .local v5, "maxHeight":I
    move-object v9, v0

    .line 1020
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v8, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    move-object v9, v0

    .line 1021
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v7, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    move-object v9, v0

    .line 1022
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v6, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    .line 1023
    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .end local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    iput v5, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    goto :goto_0

    .line 1017
    .end local v5    # "maxHeight":I
    .end local v6    # "maxWidth":I
    .restart local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    :cond_2
    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMaxDesktopSizeRatio:F

    goto :goto_1

    .line 1018
    .restart local v6    # "maxWidth":I
    :cond_3
    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMaxDesktopSizeRatio:F

    goto :goto_2
.end method
