.class public Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;
.super Ljava/lang/Object;
.source "ApplicationThumbnail.java"


# static fields
.field private static final DEBUG:Z

.field static final SUPPORT_INNER_SHADOW:Z

.field private static final TAG:Ljava/lang/String; = "ApplicationThumbnail"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsUseDefaultTheme:Z

.field protected mMinimizeBg:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeIcon:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeLineFocus:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeLineNormal:Landroid/graphics/drawable/Drawable;

.field private mMinimizedAppLable:Ljava/lang/CharSequence;

.field private mMinimizedIconSize:I

.field private mThemeBackground:Landroid/graphics/Bitmap;

.field private mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

.field private mThemeType:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 53
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->DEBUG:Z

    .line 56
    sget-boolean v0, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->SUPPORT_INNER_SHADOW:Z

    return-void

    :cond_2
    move v0, v2

    .line 53
    goto :goto_0
.end method

.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 8
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 60
    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 61
    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 62
    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 65
    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeLineNormal:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeLineFocus:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;

    .line 71
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mIsUseDefaultTheme:Z

    .line 73
    iput v6, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    .line 75
    iput v6, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mUserId:I

    .line 145
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    .line 147
    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 148
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 149
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 151
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 152
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 153
    .local v4, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 154
    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 156
    sget-boolean v5, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->SUPPORT_INNER_SHADOW:Z

    if-eqz v5, :cond_1

    .line 157
    const v5, 0x10502e8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    .line 159
    const v5, 0x10805ed

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    iget v7, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getScaledDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 160
    const v5, 0x10805ee

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    iget v7, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getScaledDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeLineFocus:Landroid/graphics/drawable/Drawable;

    .line 161
    const v5, 0x10805ef

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    iget v7, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getScaledDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeLineNormal:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->intializeTheme()V

    .line 172
    return-void

    .line 163
    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_1
    const v5, 0x10805ed

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 164
    const v5, 0x10805ee

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 166
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/content/ComponentName;)V
    .locals 8
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "c"    # Landroid/content/ComponentName;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 60
    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 61
    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 62
    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 65
    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeLineNormal:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeLineFocus:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;

    .line 71
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mIsUseDefaultTheme:Z

    .line 73
    iput v6, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    .line 75
    iput v6, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mUserId:I

    .line 290
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    .line 292
    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 293
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 294
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 296
    if-eqz p2, :cond_1

    .end local p2    # "c":Landroid/content/ComponentName;
    :goto_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p2, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 297
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 298
    .local v4, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 299
    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 301
    sget-boolean v5, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->SUPPORT_INNER_SHADOW:Z

    if-eqz v5, :cond_2

    .line 302
    const v5, 0x10502e8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    .line 304
    const v5, 0x10805ed

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    iget v7, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getScaledDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 305
    const v5, 0x10805ee

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    iget v7, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getScaledDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeLineFocus:Landroid/graphics/drawable/Drawable;

    .line 306
    const v5, 0x10805ef

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    iget v7, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedIconSize:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getScaledDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeLineNormal:Landroid/graphics/drawable/Drawable;

    .line 315
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_1
    return-void

    .line 296
    .restart local p2    # "c":Landroid/content/ComponentName;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_0

    .line 308
    .end local p2    # "c":Landroid/content/ComponentName;
    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_2
    const v5, 0x10805ed

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 309
    const v5, 0x10805ee

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 311
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 312
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paramPath"    # Landroid/graphics/Path;

    .prologue
    .line 461
    if-nez p1, :cond_0

    .line 462
    const/4 v2, 0x0

    .line 499
    :goto_0
    return-object v2

    .line 464
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 465
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 468
    :cond_2
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 469
    .local v8, "rectF":Landroid/graphics/RectF;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 471
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 472
    .local v10, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 473
    .local v4, "height":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 474
    .local v6, "pathBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 475
    .local v7, "pathCanvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 477
    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 478
    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 480
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 481
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 482
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 483
    const/16 v11, 0x32

    const/16 v12, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 484
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 485
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 486
    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 487
    const/high16 v11, 0x40a00000    # 5.0f

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 488
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 490
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 491
    sget-object v11, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 492
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 494
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 495
    .local v2, "finalBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 496
    .local v3, "finalCanvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    iget v12, v8, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    invoke-direct {v9, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 497
    .local v9, "srcRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 498
    .local v1, "dstRect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    invoke-virtual {v3, v6, v9, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static create(Landroid/app/Activity;)Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 83
    new-instance v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static create(Landroid/app/Activity;Landroid/content/ComponentName;)Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "c"    # Landroid/content/ComponentName;

    .prologue
    .line 92
    new-instance v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;-><init>(Landroid/app/Activity;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method private getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 452
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 453
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 454
    .local v0, "height":I
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 455
    .local v1, "path":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 456
    .local v2, "radius":I
    int-to-float v4, v3

    div-float/2addr v4, v6

    int-to-float v5, v0

    div-float/2addr v5, v6

    int-to-float v6, v2

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 457
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private getCircleBitmapDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 367
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 368
    .local v0, "normal":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private getCircleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 357
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 358
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 359
    .local v1, "focus":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 360
    .local v2, "normal":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 361
    .local v3, "pressedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-array v4, v5, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 362
    new-array v4, v6, [I

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 363
    return-object v0
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 448
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v8, 0x1

    .line 392
    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 394
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 396
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 401
    .local v5, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v5, :cond_4

    .line 402
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    .line 403
    .local v2, "iconId":I
    if-eqz v2, :cond_4

    .line 404
    invoke-direct {p0, v5, v2}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_4

    .line 408
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v6}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 409
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->shouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 410
    const-string v6, "ApplicationThumbnail"

    const-string v7, "getFullResIcon() return for knox"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->getDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 431
    .end local v2    # "iconId":I
    :cond_0
    :goto_1
    return-object v3

    .line 397
    .end local v5    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    .restart local v5    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 416
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "iconId":I
    :cond_1
    invoke-virtual {p1, v4, v8, v8}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 418
    .local v3, "liveIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 421
    sget-boolean v6, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ApplicationThumbnail"

    const-string v7, "getFullResIcon() return liveIcon"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 425
    :cond_2
    sget-boolean v6, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "ApplicationThumbnail"

    const-string v7, "getFullResIcon() return lager density icon"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v3, v0

    .line 426
    goto :goto_1

    .line 431
    .end local v2    # "iconId":I
    .end local v3    # "liveIcon":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 436
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 437
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    .line 439
    .local v3, "mIconDpi":I
    :try_start_0
    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 444
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v1, :cond_0

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .line 440
    :catch_0
    move-exception v2

    .line 441
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 444
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method private getScaledDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 175
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v3, p3, :cond_1

    .line 176
    :cond_0
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 177
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    invoke-static {v0, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 179
    .local v1, "bitmapResized":Landroid/graphics/Bitmap;
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p1, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 188
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapResized":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object p1

    .line 181
    .restart local p1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 184
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 185
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 373
    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 374
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x10502fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 375
    .local v3, "originPixelSize":I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    if-ne v5, v3, :cond_0

    instance-of v5, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v5, :cond_1

    .line 376
    :cond_0
    instance-of v5, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_2

    .line 377
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 378
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    invoke-static {v0, v3, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 379
    .local v1, "bitmapResized":Landroid/graphics/Bitmap;
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 388
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapResized":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object p1

    .line 381
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 382
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 383
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 384
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 385
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private intializeTheme()V
    .locals 4

    .prologue
    .line 192
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string/jumbo v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeType:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeType:Ljava/lang/String;

    const-string/jumbo v2, "theme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    new-instance v1, Lcom/samsung/android/theme/SThemeManager;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    .line 197
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_theme_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "themePackageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mIsUseDefaultTheme:Z

    .line 204
    .end local v0    # "themePackageName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 202
    .restart local v0    # "themePackageName":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mIsUseDefaultTheme:Z

    goto :goto_0
.end method


# virtual methods
.method public final getBitmapIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getCircleBitmapDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getCircleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getMinimizedBitmap(Z)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "bFocused"    # Z

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 318
    iget-object v8, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 319
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 320
    .local v2, "bgDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 322
    .local v5, "outLineDrawable":Landroid/graphics/drawable/Drawable;
    sget-boolean v8, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->SUPPORT_INNER_SHADOW:Z

    if-eqz v8, :cond_3

    .line 323
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 324
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeLineFocus:Landroid/graphics/drawable/Drawable;

    .line 329
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 330
    .local v1, "baseWidth":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 331
    .local v0, "baseHeight":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 332
    .local v6, "output":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 333
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 334
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 335
    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 336
    invoke-virtual {v2, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 337
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 338
    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 339
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 340
    if-eqz v3, :cond_0

    .line 341
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int v8, v1, v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v9, v0, v9

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-virtual {v4, v3, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 345
    :cond_0
    sget-boolean v8, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->SUPPORT_INNER_SHADOW:Z

    if-eqz v8, :cond_1

    .line 346
    invoke-virtual {v5, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 347
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 348
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 350
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 351
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 353
    return-object v6

    .line 324
    .end local v0    # "baseHeight":I
    .end local v1    # "baseWidth":I
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "output":Landroid/graphics/Bitmap;
    .end local v7    # "paint":Landroid/graphics/Paint;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeLineNormal:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 326
    :cond_3
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    :goto_1
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public isUsedTheme()Z
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeType:Ljava/lang/String;

    const-string/jumbo v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mIsUseDefaultTheme:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadIconForResolveTheme()Landroid/graphics/drawable/Drawable;
    .locals 23

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 208
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 209
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    const/16 v17, 0x0

    .line 210
    .local v17, "sInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v15, :cond_0

    .line 212
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v17

    .line 218
    :cond_0
    :goto_0
    if-eqz v3, :cond_6

    move-object v7, v3

    .line 222
    .local v7, "cinfo":Landroid/content/pm/ComponentInfo;
    :goto_1
    const/16 v16, 0x0

    .line 223
    .local v16, "resources":Landroid/content/res/Resources;
    if-eqz v15, :cond_1

    .line 225
    :try_start_1
    iget-object v0, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 231
    :cond_1
    :goto_2
    const/4 v8, 0x0

    .line 233
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 235
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    move-object/from16 v19, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/theme/SThemeManager;->getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    .line 241
    :cond_2
    :goto_3
    if-nez v8, :cond_5

    if-eqz v15, :cond_5

    if-eqz v3, :cond_5

    .line 242
    iget v0, v3, Landroid/content/pm/ActivityInfo;->icon:I

    move/from16 v19, v0

    if-eqz v19, :cond_7

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 244
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_3

    if-eqz v16, :cond_3

    .line 245
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v12

    .line 246
    .local v12, "iconId":I
    if-eqz v12, :cond_3

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 251
    .end local v12    # "iconId":I
    :cond_3
    if-eqz v11, :cond_5

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 254
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "theme_app_3rd_party_icon"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 255
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_4

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 261
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 263
    .local v18, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 265
    .local v10, "height":I
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 266
    .local v14, "p":Landroid/graphics/Paint;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 267
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 268
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 270
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 271
    .local v4, "b":Landroid/graphics/Bitmap;
    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 272
    .local v13, "in_bit":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 273
    .local v6, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 274
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 275
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    int-to-float v0, v10

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 276
    const/high16 v19, 0x3f400000    # 0.75f

    const/high16 v20, 0x3f400000    # 0.75f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 277
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v13, v0, v10, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    neg-int v0, v10

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 279
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 281
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 286
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "height":I
    .end local v13    # "in_bit":Landroid/graphics/Bitmap;
    .end local v14    # "p":Landroid/graphics/Paint;
    .end local v18    # "width":I
    .restart local v8    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    return-object v8

    .end local v7    # "cinfo":Landroid/content/pm/ComponentInfo;
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    .end local v16    # "resources":Landroid/content/res/Resources;
    :cond_6
    move-object/from16 v7, v17

    .line 218
    goto/16 :goto_1

    .line 226
    .restart local v7    # "cinfo":Landroid/content/pm/ComponentInfo;
    .restart local v16    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v9

    .line 227
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 236
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "d":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v9

    .line 237
    .local v9, "e":Landroid/content/res/Resources$NotFoundException;
    sget-boolean v19, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->DEBUG:Z

    if-eqz v19, :cond_2

    const-string v19, "ApplicationThumbnail"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "loadAppIconBitmap( "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ) failed! "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 242
    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    goto/16 :goto_4

    .line 256
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v9

    .line 257
    .restart local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    sget-boolean v19, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->DEBUG:Z

    if-eqz v19, :cond_4

    const-string v19, ""

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "3rd_party_icon_menu  failed! "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 214
    .end local v7    # "cinfo":Landroid/content/pm/ComponentInfo;
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "resources":Landroid/content/res/Resources;
    :catch_3
    move-exception v19

    goto/16 :goto_0
.end method

.method public final setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 129
    if-nez p1, :cond_1

    .line 130
    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 131
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 133
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 134
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 135
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
