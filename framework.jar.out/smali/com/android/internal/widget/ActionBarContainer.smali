.class public Lcom/android/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarContainer$1;,
        Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;
    }
.end annotation


# static fields
.field protected static mIsThemeDeviceDefaultFamily:Z


# instance fields
.field private mActionBarView:Landroid/view/View;

.field private mActionContextView:Landroid/view/View;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mIgnoreConfigurationUpdate:Z

.field private mIsSetOpenTheme:Z

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTabOnTop:Z

.field private mIsTransitioning:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;

.field private mWasChangedTheme:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-boolean v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTabOnTop:Z

    .line 76
    new-instance v4, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v7}, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/android/internal/widget/ActionBarContainer;Lcom/android/internal/widget/ActionBarContainer$1;)V

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 79
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v7, 0x11600bd

    invoke-virtual {v4, v7, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 80
    iget v4, v2, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    sput-boolean v4, Lcom/android/internal/widget/ActionBarContainer;->mIsThemeDeviceDefaultFamily:Z

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "current_sec_active_themepackage"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "current_sec_theme_package_festival"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "festivalPackageName":Ljava/lang/String;
    sget-boolean v4, Lcom/android/internal/widget/ActionBarContainer;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSetOpenTheme:Z

    .line 86
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSetOpenTheme:Z

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v7, 0x230

    if-ne v4, v7, :cond_4

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mWasChangedTheme:Z

    .line 87
    sget-object v4, Lcom/android/internal/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSetOpenTheme:Z

    if-eqz v4, :cond_6

    .line 91
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const v7, 0x108072b

    if-ne v4, v7, :cond_5

    .line 92
    const v4, 0x10808c4

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 100
    :goto_3
    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 102
    const/4 v4, 0x4

    const/4 v7, -0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getId()I

    move-result v4

    const v7, 0x1020481

    if-ne v4, v7, :cond_0

    .line 105
    iput-boolean v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    .line 106
    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 109
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_7

    :cond_1
    :goto_4
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 114
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "festivalPackageName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    move v4, v6

    .line 80
    goto/16 :goto_0

    .restart local v1    # "festivalPackageName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 85
    goto :goto_1

    :cond_4
    move v4, v6

    .line 86
    goto :goto_2

    .line 94
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :cond_5
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 97
    :cond_6
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_7
    move v5, v6

    .line 111
    goto :goto_4

    :cond_8
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    :cond_9
    move v5, v6

    goto :goto_4
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ActionBarContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ActionBarContainer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 362
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private static isCollapsed(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 357
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 252
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 261
    :cond_2
    return-void
.end method

.method public getContainerHeight()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    return v0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 266
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 275
    :cond_2
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 118
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-boolean v2, Lcom/android/internal/widget/ActionBarContainer;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIgnoreConfigurationUpdate:Z

    if-nez v2, :cond_2

    .line 124
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSetOpenTheme:Z

    if-eqz v2, :cond_4

    .line 125
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const v3, 0x108072b

    if-ne v2, v3, :cond_3

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10808c4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 137
    .local v1, "height":I
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mWasChangedTheme:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 138
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 139
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    .end local v1    # "height":I
    :cond_1
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 150
    :cond_2
    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    .line 151
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    return-void

    .line 128
    :cond_3
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 131
    :cond_4
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 158
    const v0, 0x102047f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 159
    const v0, 0x1020480

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    .line 160
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 398
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 400
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 401
    .local v10, "tabContainer":Landroid/view/View;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_1

    const/4 v5, 0x1

    .line 403
    .local v5, "hasTabs":Z
    :goto_0
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_4

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v3

    .line 405
    .local v3, "containerHeight":I
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 406
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 408
    .local v11, "tabHeight":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mIsTabOnTop:Z

    if-eqz v12, :cond_7

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v4

    .line 411
    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_3

    .line 412
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 414
    .local v2, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-ne v2, v12, :cond_2

    .line 411
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 401
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "containerHeight":I
    .end local v4    # "count":I
    .end local v5    # "hasTabs":Z
    .end local v7    # "i":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "tabHeight":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 416
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "containerHeight":I
    .restart local v4    # "count":I
    .restart local v5    # "hasTabs":Z
    .restart local v7    # "i":I
    .restart local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "tabHeight":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-static {v12}, Lcom/android/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 417
    invoke-virtual {v2, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    .line 420
    .end local v2    # "child":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/4 v13, 0x0

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v12, v0, v13, v1, v11}, Landroid/view/View;->layout(IIII)V

    .line 428
    .end local v3    # "containerHeight":I
    .end local v4    # "count":I
    .end local v7    # "i":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "tabHeight":I
    :cond_4
    :goto_3
    const/4 v9, 0x0

    .line 429
    .local v9, "needsInvalidate":Z
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v12, :cond_8

    .line 430
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_5

    .line 431
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 432
    const/4 v9, 0x1

    .line 467
    :cond_5
    :goto_4
    if-eqz v9, :cond_6

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 470
    :cond_6
    return-void

    .line 422
    .end local v9    # "needsInvalidate":Z
    .restart local v3    # "containerHeight":I
    .restart local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "tabHeight":I
    :cond_7
    sub-int v12, v3, v11

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v13, v3, v13

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v10, v0, v12, v1, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 435
    .end local v3    # "containerHeight":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "tabHeight":I
    .restart local v9    # "needsInvalidate":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_a

    .line 436
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_b

    .line 438
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 439
    .local v6, "height":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mWasChangedTheme:Z

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v12, v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    if-ge v12, v13, :cond_9

    .line 440
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v6, v12

    .line 443
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-virtual {v12, v13, v14, v15, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 457
    .end local v6    # "height":I
    :goto_5
    const/4 v9, 0x1

    .line 459
    :cond_a
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    .line 460
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_5

    .line 461
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 463
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 450
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_c

    .line 452
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5

    .line 455
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5
.end method

.method public onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, -0x80000000

    .line 367
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-ne v6, v8, :cond_0

    iget v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    if-ltz v6, :cond_0

    .line 369
    iget v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 372
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 374
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v6, :cond_2

    .line 394
    :cond_1
    :goto_0
    return-void

    .line 376
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 377
    const/4 v5, 0x0

    .line 378
    .local v5, "nonTabMaxHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v1

    .line 379
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 380
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-ne v0, v6, :cond_3

    .line 379
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 384
    :cond_3
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v6

    goto :goto_3

    .line 387
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 388
    .local v4, "mode":I
    if-ne v4, v8, :cond_6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 390
    .local v3, "maxHeight":I
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 388
    .end local v3    # "maxHeight":I
    :cond_6
    const v3, 0x7fffffff

    goto :goto_4
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onResolveDrawables(I)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 292
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 164
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIgnoreConfigurationUpdate:Z

    .line 167
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 169
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 172
    if-eqz p1, :cond_2

    .line 173
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 174
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 176
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 177
    .local v0, "height":I
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mWasChangedTheme:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 178
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 179
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 190
    .end local v0    # "height":I
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidateOutline()V

    .line 197
    return-void

    :cond_4
    move v1, v2

    .line 190
    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 218
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 220
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 223
    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 225
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 229
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 232
    return-void

    :cond_3
    move v0, v1

    .line 229
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 202
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 205
    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 207
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 212
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 215
    return-void

    :cond_3
    move v0, v1

    .line 212
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 2
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 333
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 334
    if-eqz p1, :cond_1

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 336
    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 337
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 338
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 339
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 341
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .param p1, "isTransitioning"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 304
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 306
    return-void

    .line 304
    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 237
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 238
    .local v0, "isVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 241
    :cond_2
    return-void

    .end local v0    # "isVisible":Z
    :cond_3
    move v0, v1

    .line 237
    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 350
    if-eqz p3, :cond_0

    .line 351
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public twPutTabsOnTop(Z)V
    .locals 0
    .param p1, "isTabOnTop"    # Z

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTabOnTop:Z

    .line 549
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
