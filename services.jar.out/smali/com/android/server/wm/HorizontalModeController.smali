.class public Lcom/android/server/wm/HorizontalModeController;
.super Ljava/lang/Object;
.source "HorizontalModeController.java"


# static fields
.field public static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "HorizontalModeController"

.field static sInstance:Lcom/android/server/wm/HorizontalModeController;


# instance fields
.field private mConfigEnabled:Z

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mEnabled:Z

.field private mHorizontalModeFloats:[F

.field private mHorizontalModeTransformation:Landroid/view/animation/Transformation;

.field private mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/wm/HorizontalModeController;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wm/HorizontalModeController;->mEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/wm/HorizontalModeController;->mConfigEnabled:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeFloats:[F

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransformation:Landroid/view/animation/Transformation;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/wm/HorizontalModeController;
    .locals 2

    .prologue
    const-class v1, Lcom/android/server/wm/HorizontalModeController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/wm/HorizontalModeController;->sInstance:Lcom/android/server/wm/HorizontalModeController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/HorizontalModeController;

    invoke-direct {v0}, Lcom/android/server/wm/HorizontalModeController;-><init>()V

    sput-object v0, Lcom/android/server/wm/HorizontalModeController;->sInstance:Lcom/android/server/wm/HorizontalModeController;

    :cond_0
    sget-object v0, Lcom/android/server/wm/HorizontalModeController;->sInstance:Lcom/android/server/wm/HorizontalModeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getOrientationFromAppToken(Lcom/android/server/wm/AppWindowToken;)I
    .locals 1
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private scaleUp(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/server/wm/HorizontalModeController;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/server/wm/HorizontalModeController;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method


# virtual methods
.method public adjustRectForHorizontalWindow(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;
    .param p7, "sf"    # Landroid/graphics/Rect;
    .param p8, "osf"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    invoke-direct {p0, p2}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    invoke-direct {p0, p3}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    invoke-direct {p0, p4}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    invoke-direct {p0, p5}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    invoke-direct {p0, p6}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    invoke-direct {p0, p7}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    if-eqz p8, :cond_0

    invoke-direct {p0, p8}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/HorizontalModeController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v1, "HorizontalModeController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed frame : pf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " df="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " of="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " vf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dcf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " osf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p8, :cond_2

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Horizontal Mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mConfigEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/HorizontalModeController;->mConfigEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/HorizontalModeController;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mHorizontalModeTransformation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBottomOffset()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeFloats:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getTransX()F
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeFloats:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getTransY()F
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeFloats:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getTransformation(Lcom/android/server/wm/AppWindowToken;)Landroid/view/animation/Transformation;
    .locals 1
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wm/HorizontalModeController;->isHorizontalModeWindow(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransformation:Landroid/view/animation/Transformation;

    goto :goto_0
.end method

.method public initialize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 9
    .param p1, "_service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v8, 0x0

    iput-object p1, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .local v2, "dw":I
    iget v0, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .local v0, "dh":I
    if-le v0, v2, :cond_0

    move v3, v0

    .local v3, "tmp":I
    move v0, v2

    move v2, v3

    .end local v3    # "tmp":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .local v4, "tmpMat":Landroid/graphics/Matrix;
    int-to-float v5, v0

    int-to-float v6, v2

    div-float/2addr v5, v6

    int-to-float v6, v0

    int-to-float v7, v2

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v5, v2

    int-to-float v6, v0

    int-to-float v7, v0

    mul-float/2addr v6, v7

    int-to-float v7, v2

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v5, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeFloats:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v5, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11200de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wm/HorizontalModeController;->mConfigEnabled:Z

    iget-object v5, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v8, v8, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/wm/HorizontalModeController;->mConfigEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/HorizontalModeController;->mEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "debug.horizontalmode.fixed"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalModeWindow(Landroid/view/IApplicationToken;)Z
    .locals 3
    .param p1, "token"    # Landroid/view/IApplicationToken;

    .prologue
    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/HorizontalModeController;->isHorizontalModeWindow(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v1

    goto :goto_0
.end method

.method public isHorizontalModeWindow(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 3
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/HorizontalModeController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/HorizontalModeController;->getOrientationFromAppToken(Lcom/android/server/wm/AppWindowToken;)I

    move-result v0

    .local v0, "requestedOrientation":I
    iget-object v2, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    sget-boolean v0, Lcom/android/server/wm/HorizontalModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "HorizontalModeController"

    if-eqz p1, :cond_1

    const-string v0, "Enabled "

    :goto_0
    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/HorizontalModeController;->mEnabled:Z

    return-void

    :cond_1
    const-string v0, "Disabled "

    goto :goto_0
.end method
