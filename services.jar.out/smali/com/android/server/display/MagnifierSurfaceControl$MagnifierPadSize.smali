.class public Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MagnifierPadSize"
.end annotation


# instance fields
.field public isTablet:Z

.field x:[I

.field y:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    .line 1260
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    iput-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    .line 1263
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1264
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1265
    .local v3, "widthPixels":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1266
    .local v1, "heightPixels":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1267
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1268
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1271
    :cond_0
    const-string/jumbo v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1272
    .local v2, "mDeviceType":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v4, "tablet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->isTablet:Z

    .line 1273
    iget-boolean v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->isTablet:Z

    if-eqz v4, :cond_2

    .line 1274
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    const/4 v5, 0x0

    int-to-double v6, v3

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 1275
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    const/4 v5, 0x1

    int-to-double v6, v3

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 1276
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    const/4 v5, 0x2

    int-to-double v6, v3

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 1277
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    const/4 v5, 0x3

    int-to-double v6, v3

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 1278
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    const/4 v5, 0x4

    aput v3, v4, v5

    .line 1280
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    const/4 v5, 0x0

    int-to-double v6, v1

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 1281
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    const/4 v5, 0x1

    int-to-double v6, v1

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 1282
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    const/4 v5, 0x2

    int-to-double v6, v1

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 1283
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    const/4 v5, 0x3

    int-to-double v6, v1

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 1284
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    const/4 v5, 0x4

    int-to-double v6, v1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 1294
    :goto_1
    return-void

    .line 1272
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1286
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    const/4 v5, 0x0

    int-to-double v6, v3

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 1287
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    const/4 v5, 0x1

    int-to-double v6, v3

    const-wide v8, 0x3feb333333333333L    # 0.85

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 1288
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    const/4 v5, 0x2

    aput v3, v4, v5

    .line 1290
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    const/4 v5, 0x0

    int-to-double v6, v1

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 1291
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    const/4 v5, 0x1

    int-to-double v6, v1

    const-wide v8, 0x3fd3d70a3d70a3d7L    # 0.31

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 1292
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    const/4 v5, 0x2

    int-to-double v6, v1

    const-wide v8, 0x3fd70a3d70a3d70aL    # 0.36

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    goto :goto_1

    .line 1259
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 1260
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
