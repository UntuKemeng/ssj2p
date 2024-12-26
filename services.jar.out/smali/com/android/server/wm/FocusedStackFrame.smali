.class Lcom/android/server/wm/FocusedStackFrame;
.super Ljava/lang/Object;
.source "FocusedStackFrame.java"


# static fields
.field private static final ALPHA:F = 0.3f

.field private static final DEBUG:Z = false

.field private static final DEBUG_STACK_FRAME:Z = true

.field private static final MULTIWINDOW_ALPHA:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "FocusedStackFrame"

.field public static final THEME_APPLY:Ljava/lang/String; = "com.samsung.android.theme.themecenter.THEME_APPLY"

.field private static final THICKNESS:I = 0x2


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDeskTopColor:I

.field private mDisplayId:I

.field private mFocusedFrameImage:Landroid/graphics/drawable/NinePatchDrawable;

.field private mFocusedFrameOutShadowSize:I

.field private mForceHide:Z

.field private mForceReDraw:Z

.field private final mInnerPaint:Landroid/graphics/Paint;

.field private mIsVisible:Z

.field private final mLastBounds:Landroid/graphics/Rect;

.field private mLayer:I

.field private final mLineColor:I

.field final mLock:Ljava/lang/Object;

.field private final mOuterPaint:Landroid/graphics/Paint;

.field private final mScreenSize:Landroid/graphics/Rect;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mSurfaceSize:Landroid/graphics/Rect;

.field private mThickness:I


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 11
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v10, -0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    .line 65
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 68
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLock:Ljava/lang/Object;

    .line 69
    iput-boolean v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    .line 70
    iput-boolean v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceHide:Z

    .line 78
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    .line 82
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    .line 83
    iput v10, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    .line 84
    iput-boolean v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mIsVisible:Z

    .line 90
    new-instance v1, Lcom/android/server/wm/FocusedStackFrame$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/FocusedStackFrame$1;-><init>(Lcom/android/server/wm/FocusedStackFrame;)V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    const/4 v7, 0x0

    .line 107
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v1, :cond_0

    .line 108
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    const-string v2, "FocusedStackFrame"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 120
    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 124
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 156
    iput v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    .line 157
    iput v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mLineColor:I

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameImage:Landroid/graphics/drawable/NinePatchDrawable;

    .line 159
    iput v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    .line 161
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 162
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    return-void

    .line 111
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :cond_0
    :try_start_2
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "FocusedStackFrame"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_0

    .line 125
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v1

    move-object v0, v7

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/wm/FocusedStackFrame;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/FocusedStackFrame;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameImage:Landroid/graphics/drawable/NinePatchDrawable;

    return-object v0
.end method

.method private draw()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 171
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 178
    :cond_0
    const/4 v0, 0x0

    .line 216
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 222
    :goto_0
    if-nez v0, :cond_1

    .line 235
    :goto_1
    return-void

    .line 217
    :catch_0
    move-exception v6

    .line 218
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "FocusedStackFrame"

    const-string v3, "Unable to lock canvas"

    invoke-static {v2, v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 219
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 220
    .local v6, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "FocusedStackFrame"

    const-string v3, "Unable to lock canvas"

    invoke-static {v2, v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 227
    .end local v6    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v3, v2

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 228
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v3, v1

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v4, v1

    iget-object v5, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    move v1, v7

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 233
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 234
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method private positionSurface(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 379
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusedStackFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "positionSurface: bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 385
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 390
    return-void

    .line 387
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private setupSurface(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 244
    if-eqz p1, :cond_1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :goto_1
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .line 253
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 256
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method


# virtual methods
.method public adjustBounds(Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "thick"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 323
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-eq v3, v4, :cond_0

    .line 324
    iget v3, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, p2, 0x2

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 326
    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-eq v3, v4, :cond_1

    .line 327
    iget v3, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, p2, 0x2

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 329
    :cond_1
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-eq v3, v4, :cond_2

    .line 330
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, p2

    div-float/2addr v4, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 332
    :cond_2
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v4, :cond_3

    .line 333
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, p2

    div-float/2addr v4, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 338
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mDisplayId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v1

    .line 339
    .local v1, "spec":Landroid/view/MagnificationSpec;
    if-eqz v1, :cond_4

    iget v3, v1, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 341
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 342
    .local v0, "h":I
    iget v3, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 343
    iget v3, v1, Landroid/view/MagnificationSpec;->offsetY:F

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 344
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    int-to-float v4, v2

    iget v5, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 345
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    int-to-float v4, v0

    iget v5, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 350
    .end local v0    # "h":I
    .end local v2    # "w":I
    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 351
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 352
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 353
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 361
    return-void
.end method

.method adjustThicknessForDensityChanged(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameImage:Landroid/graphics/drawable/NinePatchDrawable;

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    .line 411
    return-void
.end method

.method clear()V
    .locals 4

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 313
    :goto_0
    if-nez v0, :cond_0

    .line 314
    :try_start_1
    monitor-exit v2

    .line 320
    :goto_1
    return-void

    .line 316
    :cond_0
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 317
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    .line 318
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 319
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 311
    :catch_0
    move-exception v1

    goto :goto_0

    .line 310
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isForceHide()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceHide:Z

    return v0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 295
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusedStackFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBounds: bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    return-void
.end method

.method public setForceHide(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceHide:Z

    .line 398
    return-void
.end method

.method public setForceReDraw(Z)V
    .locals 1
    .param p1, "isUnFocusedRectResized"    # Z

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    .line 394
    return-void

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setLayer(I)V
    .locals 2
    .param p1, "layer"    # I

    .prologue
    .line 285
    iget v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    if-ne v0, p1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iput p1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    goto :goto_0
.end method

.method public setScreenSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "screenSize"    # Landroid/graphics/Rect;
    .param p2, "surfaceSize"    # Landroid/graphics/Rect;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusedStackFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenSize: mSurfaceSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " surfaceSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->positionSurface(Landroid/graphics/Rect;)V

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 371
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_2

    const-string v0, "FocusedStackFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenSize: mScreenSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/server/wm/FocusedStackFrame;->clear()V

    .line 376
    :cond_3
    return-void
.end method

.method setVisibility(Lcom/android/server/wm/TaskStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 262
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 270
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->setupSurface(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/FocusedStackFrame;->draw()V

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->setupSurface(Z)V

    goto :goto_0
.end method
