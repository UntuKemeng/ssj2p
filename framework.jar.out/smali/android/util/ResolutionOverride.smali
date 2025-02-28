.class public Landroid/util/ResolutionOverride;
.super Ljava/lang/Object;
.source "ResolutionOverride.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final RES_OVERRIDE:Ljava/lang/String; = "persist.debug.app_res_override"

.field private static final TAG:Ljava/lang/String; = "ResolutionOverride"


# instance fields
.field private mIsEnabled:Z

.field private mOverrideXres:I

.field private mOverrideYres:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 11
    .param p1, "view"    # Landroid/view/SurfaceView;

    .prologue
    const/16 v10, 0x78

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    iput v0, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    iput v0, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->canOverrideRes()I

    move-result v7

    if-ne v7, v6, :cond_0

    move v0, v6

    .local v0, "enable":Z
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v2, v7, Landroid/content/res/Configuration;->orientation:I

    .local v2, "orientation":I
    if-eqz v0, :cond_4

    if-eq v2, v6, :cond_1

    if-ne v2, v9, :cond_4

    :cond_1
    const-string/jumbo v7, "persist.debug.app_res_override"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "resStr":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .local v3, "pos":I
    if-lez v3, :cond_2

    invoke-virtual {v4, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-ne v7, v3, :cond_2

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "pos":I
    :cond_2
    :goto_0
    if-ne v2, v9, :cond_3

    iget v5, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    .local v5, "tmp":I
    iget v7, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    iput v7, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    iput v5, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    .end local v5    # "tmp":I
    :cond_3
    iget v7, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    if-lez v7, :cond_4

    iget v7, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    if-lez v7, :cond_4

    iput-boolean v6, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    .end local v4    # "resStr":Ljava/lang/String;
    :cond_4
    return-void

    .restart local v3    # "pos":I
    .restart local v4    # "resStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-string v7, "ResolutionOverride"

    const-string v8, "Error in extracting the overriding xres and yres"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleResize(Landroid/view/SurfaceView;)V
    .locals 4
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    iget-boolean v0, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/util/ResolutionOverride$1;

    invoke-direct {v0, p0, p1}, Landroid/util/ResolutionOverride$1;-><init>(Landroid/util/ResolutionOverride;Landroid/view/SurfaceView;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Landroid/util/ResolutionOverride$2;

    invoke-direct {v0, p0, p1}, Landroid/util/ResolutionOverride$2;-><init>(Landroid/util/ResolutionOverride;Landroid/view/SurfaceView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public handleTouch(Landroid/view/SurfaceView;Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "view"    # Landroid/view/SurfaceView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    iget-boolean v3, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .local v1, "xscale":F
    iget v3, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .local v2, "yscale":F
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public setFixedSize(Landroid/view/SurfaceView;)V
    .locals 3
    .param p1, "view"    # Landroid/view/SurfaceView;

    .prologue
    iget-boolean v0, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    iget v2, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0
.end method
