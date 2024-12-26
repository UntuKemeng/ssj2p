.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$1;,
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_LIVE_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

.field public static final ACTION_CROP_AND_SET_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

.field public static final ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field private static ANDROID_RES_PREFIX:Ljava/lang/String; = null

.field public static final COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field private static final CUSTOM_WALLPAPER:I = 0x0

.field private static DEBUG:Z = false

.field private static DEFAULT_THUMB_NAME:Ljava/lang/String; = null

.field private static DEFAULT_WALLPAPER_NAME:Ljava/lang/String; = null

.field public static final EXTRA_LIVE_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

.field private static FILE_PREFIX:Ljava/lang/String; = null

.field private static final PRELOAD_WALLPAPER:I = 0x1

.field public static final PROPERTY_OMC_RESOURCE_PATH:Ljava/lang/String; = "persist.sys.omc_respath"

.field private static final PROP_WALLPAPER:Ljava/lang/String; = "ro.config.wallpaper"

.field private static final PROP_WALLPAPER_COMPONENT:Ljava/lang/String; = "ro.config.wallpaper_component"

.field private static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static TAG:Ljava/lang/String; = null

.field private static final THEME_WALLPAPER:I = 0x2

.field public static final WALLPAPER_PREVIEW_META_DATA:Ljava/lang/String; = "android.wallpaper.preview"

.field static mCSCDefaultWallpaperlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobals:Landroid/app/WallpaperManager$Globals;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWallpaperXStep:F

.field private mWallpaperYStep:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/WallpaperManager;->DEBUG:Z

    .line 115
    const-string v0, "android.resource://android/drawable/"

    sput-object v0, Landroid/app/WallpaperManager;->ANDROID_RES_PREFIX:Ljava/lang/String;

    .line 116
    const-string v0, "file:/"

    sput-object v0, Landroid/app/WallpaperManager;->FILE_PREFIX:Ljava/lang/String;

    .line 117
    const-string v0, "default_wallpaper"

    sput-object v0, Landroid/app/WallpaperManager;->DEFAULT_WALLPAPER_NAME:Ljava/lang/String;

    .line 118
    const-string v0, "default_thumb"

    sput-object v0, Landroid/app/WallpaperManager;->DEFAULT_THUMB_NAME:Ljava/lang/String;

    .line 689
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    .line 1986
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/WallpaperManager;->mCSCDefaultWallpaperlist:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 103
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 701
    iput-object p1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 702
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/os/Looper;)V

    .line 703
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-static {p0}, Landroid/app/WallpaperManager;->getDefaultWallpaperID(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Landroid/app/WallpaperManager;->FILE_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method private checkForSamsungLaucher(Ljava/lang/String;)Z
    .locals 6
    .param p1, "mPackageName"    # Ljava/lang/String;

    .prologue
    .line 719
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.sec.android.app.launcher"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "com.sec.android.app.easylauncher"

    aput-object v4, v0, v3

    .line 720
    .local v0, "approvedLaunchers":[Ljava/lang/String;
    const-string v3, "SamsungCompression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WallpaperManager getting PackageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v2, 0x0

    .line 722
    .local v2, "isValid":Z
    if-eqz p1, :cond_0

    .line 723
    const/4 v1, 0x0

    .local v1, "iLaunchers":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 724
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 725
    const/4 v2, 0x1

    .line 738
    .end local v1    # "iLaunchers":I
    :cond_0
    return v2

    .line 723
    .restart local v1    # "iLaunchers":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1813
    if-nez p1, :cond_1

    .line 1814
    sget-object v22, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v23, "generateBitmap is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    const/16 v18, 0x0

    .line 1942
    :cond_0
    :goto_0
    return-object v18

    .line 1818
    :cond_1
    const-string/jumbo v22, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/WindowManager;

    .line 1819
    .local v21, "wm":Landroid/view/WindowManager;
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1820
    .local v14, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 1821
    .local v7, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v7, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1822
    iget v0, v14, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1823
    new-instance v12, Landroid/view/DisplayInfo;

    invoke-direct {v12}, Landroid/view/DisplayInfo;-><init>()V

    .line 1824
    .local v12, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v7, v12}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1825
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1826
    .local v4, "bitmapHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1827
    .local v5, "bitmapWidth":I
    iget v10, v12, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1828
    .local v10, "deviceHeight":I
    iget v11, v12, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1830
    .local v11, "deviceWidth":I
    sget-boolean v22, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v22, :cond_2

    sget-object v22, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "generateBitmap :: width:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", height:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " :: bitmap:: width:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", height:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " displayInfo.logicalWidth:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  displayInfo.logicalHeight:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_2
    if-lez p2, :cond_3

    if-lez p3, :cond_3

    move/from16 v0, p2

    if-ne v5, v0, :cond_4

    move/from16 v0, p3

    if-ne v4, v0, :cond_4

    :cond_3
    move-object/from16 v18, p1

    .line 1833
    goto/16 :goto_0

    .line 1836
    :cond_4
    const/16 v18, 0x0

    .line 1840
    .local v18, "resizedBmp":Landroid/graphics/Bitmap;
    if-ne v4, v5, :cond_6

    .line 1841
    move/from16 v0, p3

    if-le v0, v10, :cond_5

    move v15, v10

    .line 1843
    .local v15, "minHeight":I
    :goto_1
    if-le v4, v15, :cond_6

    .line 1845
    int-to-float v0, v15

    move/from16 v22, v0

    int-to-float v0, v4

    move/from16 v23, v0

    div-float v19, v22, v23

    .line 1846
    .local v19, "scale":F
    sget-object v22, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Preload/Theme wallpaper downsize.:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/app/WallpaperManager;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 1848
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .end local v15    # "minHeight":I
    .end local v19    # "scale":F
    :cond_5
    move/from16 v15, p3

    .line 1841
    goto :goto_1

    .line 1854
    :cond_6
    if-ge v11, v5, :cond_7

    if-ge v10, v4, :cond_7

    .line 1855
    int-to-float v0, v11

    move/from16 v22, v0

    int-to-float v0, v5

    move/from16 v23, v0

    div-float v22, v22, v23

    int-to-float v0, v10

    move/from16 v23, v0

    int-to-float v0, v4

    move/from16 v24, v0

    div-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 1857
    .restart local v19    # "scale":F
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/app/WallpaperManager;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 1858
    sget-object v22, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "resize scale down.:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1870
    .end local v19    # "scale":F
    :goto_2
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    const/16 v23, 0x1000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    const/16 v23, 0x1000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 1871
    sget-boolean v22, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v22, :cond_0

    sget-object v22, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v23, "generateBitmap :: returning early "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1862
    :cond_7
    sget-object v22, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "original bitmp"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    move-object/from16 v18, p1

    goto :goto_2

    .line 1880
    :cond_8
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v22

    if-nez v22, :cond_9

    .line 1881
    sget-object v22, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v23, "Assuming Texture compressed bitmap."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1886
    :cond_9
    const/16 v16, 0x0

    .line 1889
    .local v16, "newbm":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 1890
    if-eqz v16, :cond_a

    .line 1891
    iget v0, v14, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1893
    :cond_a
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1894
    .local v6, "c":Landroid/graphics/Canvas;
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 1895
    .local v20, "targetRect":Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1896
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1898
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v9, p2, v22

    .line 1899
    .local v9, "deltaw":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v8, p3, v22

    .line 1901
    .local v8, "deltah":I
    if-gtz v9, :cond_b

    if-lez v8, :cond_d

    .line 1903
    :cond_b
    if-le v9, v8, :cond_c

    .line 1904
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v19, v22, v23

    .line 1908
    .restart local v19    # "scale":F
    :goto_3
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v19

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1909
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v19

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1925
    .end local v19    # "scale":F
    :goto_4
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v9, p2, v22

    .line 1926
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v8, p3, v22

    .line 1927
    div-int/lit8 v22, v9, 0x2

    div-int/lit8 v23, v8, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1928
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 1929
    .local v17, "paint":Landroid/graphics/Paint;
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1930
    new-instance v22, Landroid/graphics/PorterDuffXfermode;

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v22 .. v23}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1931
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1933
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 1934
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v18, v16

    .line 1935
    goto/16 :goto_0

    .line 1906
    .end local v17    # "paint":Landroid/graphics/Paint;
    :cond_c
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v19, v22, v23

    .restart local v19    # "scale":F
    goto/16 :goto_3

    .line 1913
    .end local v19    # "scale":F
    :cond_d
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_f

    .line 1915
    move/from16 v0, p2

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1916
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    mul-int v22, v22, p2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    div-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 1936
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v8    # "deltah":I
    .end local v9    # "deltaw":I
    .end local v20    # "targetRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v13

    .line 1937
    .local v13, "e":Ljava/lang/OutOfMemoryError;
    sget-object v22, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v23, "Can\'t generate default bitmap"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1938
    if-eqz v16, :cond_e

    .line 1939
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 1941
    :cond_e
    sget-object v22, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "return original bitmap:"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1920
    .end local v13    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v6    # "c":Landroid/graphics/Canvas;
    .restart local v8    # "deltah":I
    .restart local v9    # "deltaw":I
    .restart local v20    # "targetRect":Landroid/graphics/Rect;
    :cond_f
    :try_start_1
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    mul-int v22, v22, p3

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    div-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1921
    move/from16 v0, p3

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public static getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2066
    const-string/jumbo v2, "ro.config.wallpaper_component"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2067
    .local v1, "flat":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2068
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2069
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 2082
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-object v0

    .line 2074
    :cond_1
    const v2, 0x1040023

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2075
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2076
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2077
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 2082
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDefaultWallpaperID(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1960
    const-string v1, ""

    .line 1962
    .local v1, "device_color":Ljava/lang/String;
    :try_start_0
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IWallpaperManager;->getDeviceColor()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1967
    :goto_0
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "device color:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const-string v0, "default_wallpaper"

    .line 1969
    .local v0, "default_name":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1970
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1972
    :cond_0
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "default wallpaper name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "drawable"

    const-string v7, "android"

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1974
    .local v3, "resId":I
    if-lez v3, :cond_1

    .line 1975
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultWallpaperID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1980
    .end local v3    # "resId":I
    .local v4, "resId":I
    :goto_1
    return v4

    .line 1963
    .end local v0    # "default_name":Ljava/lang/String;
    .end local v4    # "resId":I
    :catch_0
    move-exception v2

    .line 1965
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultWallpaperID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1978
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "default_name":Ljava/lang/String;
    .restart local v3    # "resId":I
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "default_wallpaper"

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1979
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no color wallpaper get default wallpaper id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1980
    .end local v3    # "resId":I
    .restart local v4    # "resId":I
    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 709
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private static getMaxCropRect(IIIIFF)Landroid/graphics/RectF;
    .locals 7
    .param p0, "inWidth"    # I
    .param p1, "inHeight"    # I
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .prologue
    const/4 v6, 0x0

    .line 921
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 923
    .local v1, "cropRect":Landroid/graphics/RectF;
    int-to-float v3, p0

    int-to-float v4, p1

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, p3

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 924
    iput v6, v1, Landroid/graphics/RectF;->top:F

    .line 925
    int-to-float v3, p1

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 926
    int-to-float v3, p2

    int-to-float v4, p1

    int-to-float v5, p3

    div-float/2addr v4, v5

    mul-float v2, v3, v4

    .line 927
    .local v2, "cropWidth":F
    int-to-float v3, p0

    sub-float/2addr v3, v2

    mul-float/2addr v3, p4

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 928
    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 936
    .end local v2    # "cropWidth":F
    :goto_0
    return-object v1

    .line 930
    :cond_0
    iput v6, v1, Landroid/graphics/RectF;->left:F

    .line 931
    int-to-float v3, p0

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 932
    int-to-float v3, p3

    int-to-float v4, p0

    int-to-float v5, p2

    div-float/2addr v4, v5

    mul-float v0, v3, v4

    .line 933
    .local v0, "cropHeight":F
    int-to-float v3, p1

    sub-float/2addr v3, v0

    mul-float/2addr v3, p5

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 934
    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method static initGlobals(Landroid/os/Looper;)V
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;

    .prologue
    .line 693
    sget-object v1, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 694
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v0, :cond_0

    .line 695
    new-instance v0, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 697
    :cond_0
    monitor-exit v1

    .line 698
    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2047
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # invokes: Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperFile()Ljava/io/File;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Ljava/io/File;

    move-result-object v0

    .line 2048
    .local v0, "wpFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 2050
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2056
    :goto_0
    return-object v1

    .line 2051
    :catch_0
    move-exception v1

    .line 2056
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Landroid/app/WallpaperManager;->getDefaultWallpaperID(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method static resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F

    .prologue
    .line 1947
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v2, v3

    .line 1948
    .local v2, "bitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v1, v3

    .line 1949
    .local v1, "bitmapHeight":I
    const/4 v3, 0x1

    invoke-static {p0, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1950
    .local v0, "b":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 4
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1392
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setWallpaper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const v2, 0x8000

    new-array v1, v2, [B

    .line 1396
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 1397
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1399
    :cond_0
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 1400
    return-void
.end method

.method public static startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pathValue"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 2091
    new-instance v0, Landroid/app/wallpaperbackup/Controller;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/Controller;-><init>()V

    .line 2092
    .local v0, "control":Landroid/app/wallpaperbackup/Controller;
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/wallpaperbackup/Controller;->startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    return-void
.end method

.method public static startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pathValue"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "sessionKey"    # Ljava/lang/String;
    .param p4, "sessiontime"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I

    .prologue
    .line 2099
    new-instance v0, Landroid/app/wallpaperbackup/Controller;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/Controller;-><init>()V

    .local v0, "control":Landroid/app/wallpaperbackup/Controller;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 2100
    invoke-virtual/range {v0 .. v6}, Landroid/app/wallpaperbackup/Controller;->startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2101
    return-void
.end method

.method public static startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pathValue"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 2109
    new-instance v0, Landroid/app/wallpaperbackup/Controller;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/Controller;-><init>()V

    .line 2110
    .local v0, "control":Landroid/app/wallpaperbackup/Controller;
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/wallpaperbackup/Controller;->startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    return-void
.end method

.method public static startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pathValue"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "sessionKey"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I

    .prologue
    .line 2117
    new-instance v0, Landroid/app/wallpaperbackup/Controller;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/Controller;-><init>()V

    .local v0, "control":Landroid/app/wallpaperbackup/Controller;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 2118
    invoke-virtual/range {v0 .. v5}, Landroid/app/wallpaperbackup/Controller;->startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2119
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1733
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "clear wallpaper"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const/4 v3, 0x0

    .line 1735
    .local v3, "setCscWallpaper":Z
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # invokes: Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperFile()Ljava/io/File;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Ljava/io/File;

    move-result-object v0

    .line 1736
    .local v0, "defaultWallpaper":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1737
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1739
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1740
    const/4 v3, 0x1

    .line 1747
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1754
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 1755
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getDefaultWallpaperID(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 1759
    :cond_1
    :try_start_2
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android.wallpaper.settings_systemui_transparency"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1763
    :goto_2
    return-void

    .line 1741
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 1743
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot get csc wallpaper(setStream):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    const/4 v3, 0x0

    goto :goto_0

    .line 1748
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1750
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot get csc wallpaper(close inputstream):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1760
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 1761
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t put value of SETTINGS_SYSTEMUI_TRANSPARENCY"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public clear(I)V
    .locals 7
    .param p1, "simSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1779
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clear wallpaper:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const/4 v3, 0x0

    .line 1781
    .local v3, "setCscWallpaper":Z
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # invokes: Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperFile()Ljava/io/File;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Ljava/io/File;

    move-result-object v0

    .line 1782
    .local v0, "defaultWallpaper":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1783
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1786
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0, v2, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1787
    const/4 v3, 0x1

    .line 1794
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1800
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 1801
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getDefaultWallpaperID(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0, v4, p1}, Landroid/app/WallpaperManager;->setResource(II)V

    .line 1805
    :cond_1
    :try_start_2
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android.wallpaper.settings_systemui_transparency"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1809
    :goto_2
    return-void

    .line 1788
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 1790
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot get csc wallpaper(setStream):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    const/4 v3, 0x0

    goto :goto_0

    .line 1795
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1797
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot get csc wallpaper(close inputstream):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1806
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 1807
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t put value of SETTINGS_SYSTEMUI_TRANSPARENCY"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public clearAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2125
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "clearAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isMultiSIMSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->clear(I)V

    .line 2128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->clear(I)V

    .line 2132
    :goto_0
    return-void

    .line 2130
    :cond_0
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->clear()V

    goto :goto_0
.end method

.method public clearWallpaper()V
    .locals 2

    .prologue
    .line 1587
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1588
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :goto_0
    return-void

    .line 1592
    :cond_0
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1593
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearWallpaperOffsets(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 1712
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1717
    :goto_0
    return-void

    .line 1714
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 1022
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 1025
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1000
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapForMultiSim(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "simSlot"    # I

    .prologue
    .line 1006
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/app/WallpaperManager$Globals;->getWallpaperLockedForMultiSim(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1007
    .local v0, "wallpaper":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1008
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1010
    .end local v0    # "wallpaper":Landroid/graphics/Bitmap;
    :cond_0
    return-object v0
.end method

.method public getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 771
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .locals 29
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .prologue
    .line 789
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    if-nez v5, :cond_0

    .line 790
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v5, 0x0

    .line 914
    :goto_0
    return-object v5

    .line 793
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 794
    .local v22, "resources":Landroid/content/res/Resources;
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, p4

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 795
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, p5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p5

    .line 797
    new-instance v17, Ljava/io/BufferedInputStream;

    const v5, 0x10802c3

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 800
    .local v17, "is":Ljava/io/InputStream;
    if-nez v17, :cond_1

    .line 801
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "default wallpaper input stream is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v5, 0x0

    goto :goto_0

    .line 804
    :cond_1
    if-lez p1, :cond_2

    if-gtz p2, :cond_3

    .line 805
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 806
    .local v16, "fullSize":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 811
    .end local v16    # "fullSize":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 812
    .local v20, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 813
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 814
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v5, :cond_5

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v5, :cond_5

    .line 815
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 816
    .local v3, "inWidth":I
    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 825
    .local v4, "inHeight":I
    move/from16 v0, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 826
    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 827
    if-eqz p3, :cond_6

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    .line 828
    invoke-static/range {v3 .. v8}, Landroid/app/WallpaperManager;->getMaxCropRect(IIIIFF)Landroid/graphics/RectF;

    move-result-object v13

    .line 837
    .local v13, "cropRectF":Landroid/graphics/RectF;
    :goto_1
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 838
    .local v25, "roundedTrueCrop":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 840
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gtz v5, :cond_7

    .line 841
    :cond_4
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "crop has bad values for full size image"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 818
    .end local v3    # "inWidth":I
    .end local v4    # "inHeight":I
    .end local v13    # "cropRectF":Landroid/graphics/RectF;
    .end local v25    # "roundedTrueCrop":Landroid/graphics/Rect;
    :cond_5
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "default wallpaper dimensions are 0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 831
    .restart local v3    # "inWidth":I
    .restart local v4    # "inHeight":I
    :cond_6
    sub-int v5, v3, p1

    int-to-float v5, v5

    mul-float v18, v5, p4

    .line 832
    .local v18, "left":F
    move/from16 v0, p1

    int-to-float v5, v0

    add-float v24, v18, v5

    .line 833
    .local v24, "right":F
    sub-int v5, v4, p2

    int-to-float v5, v5

    mul-float v28, v5, p5

    .line 834
    .local v28, "top":F
    move/from16 v0, p2

    int-to-float v5, v0

    add-float v9, v28, v5

    .line 835
    .local v9, "bottom":F
    new-instance v13, Landroid/graphics/RectF;

    move/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v13, v0, v1, v2, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v13    # "cropRectF":Landroid/graphics/RectF;
    goto :goto_1

    .line 845
    .end local v9    # "bottom":F
    .end local v18    # "left":F
    .end local v24    # "right":F
    .end local v28    # "top":F
    .restart local v25    # "roundedTrueCrop":Landroid/graphics/Rect;
    :cond_7
    new-instance v17, Ljava/io/BufferedInputStream;

    .end local v17    # "is":Ljava/io/InputStream;
    const v5, 0x10802c3

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 850
    .restart local v17    # "is":Ljava/io/InputStream;
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int v5, v5, p1

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int v6, v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 854
    .local v26, "scaleDownSampleSize":I
    const/4 v14, 0x0

    .line 856
    .local v14, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 861
    :goto_2
    const/4 v11, 0x0

    .line 862
    .local v11, "crop":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_9

    .line 864
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 865
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move/from16 v0, v26

    if-le v0, v5, :cond_8

    .line 866
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 868
    :cond_8
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 869
    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 872
    :cond_9
    if-nez v11, :cond_c

    .line 874
    new-instance v17, Ljava/io/BufferedInputStream;

    .end local v17    # "is":Ljava/io/InputStream;
    const v5, 0x10802c3

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 876
    .restart local v17    # "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 877
    .restart local v16    # "fullSize":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_b

    .line 878
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 879
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move/from16 v0, v26

    if-le v0, v5, :cond_a

    .line 880
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 882
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 884
    :cond_b
    if-eqz v16, :cond_c

    .line 885
    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v0, v16

    invoke-static {v0, v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 891
    .end local v16    # "fullSize":Landroid/graphics/Bitmap;
    :cond_c
    if-nez v11, :cond_d

    .line 892
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "cannot decode default wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 857
    .end local v11    # "crop":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v15

    .line 858
    .local v15, "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "cannot open region decoder for default wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 897
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v11    # "crop":Landroid/graphics/Bitmap;
    :cond_d
    if-lez p1, :cond_f

    if-lez p2, :cond_f

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move/from16 v0, p1

    if-ne v5, v0, :cond_e

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move/from16 v0, p2

    if-eq v5, v0, :cond_f

    .line 899
    :cond_e
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 900
    .local v19, "m":Landroid/graphics/Matrix;
    new-instance v12, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v12, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 901
    .local v12, "cropRect":Landroid/graphics/RectF;
    new-instance v23, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p1

    int-to-float v7, v0

    move/from16 v0, p2

    int-to-float v8, v0

    move-object/from16 v0, v23

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 902
    .local v23, "returnRect":Landroid/graphics/RectF;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 903
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 905
    .local v27, "tmp":Landroid/graphics/Bitmap;
    if-eqz v27, :cond_f

    .line 906
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 907
    .local v10, "c":Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 908
    .local v21, "p":Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 909
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v10, v11, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 910
    move-object/from16 v11, v27

    .line 914
    .end local v10    # "c":Landroid/graphics/Canvas;
    .end local v12    # "cropRect":Landroid/graphics/RectF;
    .end local v19    # "m":Landroid/graphics/Matrix;
    .end local v21    # "p":Landroid/graphics/Paint;
    .end local v23    # "returnRect":Landroid/graphics/RectF;
    .end local v27    # "tmp":Landroid/graphics/Bitmap;
    :cond_f
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 8
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 1059
    if-nez p1, :cond_0

    .line 1060
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Image URI must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1063
    :cond_0
    const-string v5, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1064
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Image URI must be of the content scheme type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1068
    :cond_1
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1069
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-direct {v0, v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1071
    .local v0, "cropAndSetWallpaperIntent":Landroid/content/Intent;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1074
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1075
    .local v2, "homeIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 1077
    .local v4, "resolvedHome":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_3

    .line 1078
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1082
    .local v1, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1092
    :cond_2
    return-object v0

    .line 1088
    .end local v1    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const-string v5, "com.android.wallpapercropper"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1089
    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1091
    .restart local v1    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_2

    .line 1096
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot use passed URI to set wallpaper; check that the type returned by ContentProvider matches image/*"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getDefaultWallpaperInformation()Landroid/os/Bundle;
    .locals 14

    .prologue
    .line 1995
    iget-object v11, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10700a3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 1996
    .local v9, "wallpaperList":[Ljava/lang/String;
    sget-object v11, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v12, "getDefaultWallpaperInformation"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    sget-object v11, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    const/4 v12, 0x1

    # invokes: Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperFile(Z)Ljava/io/File;
    invoke-static {v11, v12}, Landroid/app/WallpaperManager$Globals;->access$600(Landroid/app/WallpaperManager$Globals;Z)Ljava/io/File;

    .line 1999
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2001
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2002
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v11, Landroid/app/WallpaperManager;->mCSCDefaultWallpaperlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2003
    const-string v1, ""

    .line 2005
    .local v1, "currentDeviceColor":Ljava/lang/String;
    :try_start_0
    sget-object v11, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v11}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/app/IWallpaperManager;->getDeviceColor()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2010
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/app/WallpaperManager;->DEFAULT_WALLPAPER_NAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2011
    .local v3, "default_wallpaper_name":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/app/WallpaperManager;->DEFAULT_THUMB_NAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2012
    .local v2, "default_thumb_name":Ljava/lang/String;
    iget-object v11, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "drawable"

    const-string v13, "android"

    invoke-virtual {v11, v3, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2013
    .local v7, "resId":I
    if-lez v7, :cond_1

    .line 2014
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/app/WallpaperManager;->ANDROID_RES_PREFIX:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?locType=preloadDefault"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/app/WallpaperManager;->ANDROID_RES_PREFIX:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2015
    sget-object v11, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "preloadDefault added:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v11, v9

    if-ge v5, v11, :cond_2

    .line 2023
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/app/WallpaperManager;->DEFAULT_WALLPAPER_NAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v9, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2024
    .local v10, "wallpaper_name":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2025
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/app/WallpaperManager;->DEFAULT_THUMB_NAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v9, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2027
    .local v8, "thumb_name":Ljava/lang/String;
    iget-object v11, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "drawable"

    const-string v13, "android"

    invoke-virtual {v11, v10, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2028
    if-lez v7, :cond_0

    .line 2029
    sget-object v11, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "preload wallpaper added:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/app/WallpaperManager;->ANDROID_RES_PREFIX:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?locType=preload"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/app/WallpaperManager;->ANDROID_RES_PREFIX:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2022
    .end local v8    # "thumb_name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 2006
    .end local v2    # "default_thumb_name":Ljava/lang/String;
    .end local v3    # "default_wallpaper_name":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "resId":I
    .end local v10    # "wallpaper_name":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 2008
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v11, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDefaultWallpaperID:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2017
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v2    # "default_thumb_name":Ljava/lang/String;
    .restart local v3    # "default_wallpaper_name":Ljava/lang/String;
    .restart local v7    # "resId":I
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/app/WallpaperManager;->ANDROID_RES_PREFIX:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/app/WallpaperManager;->DEFAULT_WALLPAPER_NAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?locType=preloadDefault"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/app/WallpaperManager;->ANDROID_RES_PREFIX:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/app/WallpaperManager;->DEFAULT_THUMB_NAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2018
    sget-object v3, Landroid/app/WallpaperManager;->DEFAULT_WALLPAPER_NAME:Ljava/lang/String;

    .line 2019
    sget-object v11, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "preloadDefault added:default_wallpaper"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2035
    .restart local v5    # "i":I
    :cond_2
    const-string/jumbo v11, "paramKeyUriList"

    invoke-virtual {v0, v11, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2037
    return-object v0
.end method

.method public getDesiredMinimumHeight()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1463
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1464
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :goto_0
    return v1

    .line 1468
    :cond_0
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1469
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDesiredMinimumWidth()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1436
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1437
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :goto_0
    return v1

    .line 1441
    :cond_0
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getWidthHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1442
    :catch_0
    move-exception v0

    .line 1444
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 751
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 752
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 755
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isGLCompressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/WallpaperManager;->checkForSamsungLaucher(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 756
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 759
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 760
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 763
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 972
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 973
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 974
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .line 976
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public getIWallpaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    .prologue
    .line 715
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1034
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1035
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :goto_0
    return-object v1

    .line 1038
    :cond_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public hasResourceWallpaper(I)Z
    .locals 6
    .param p1, "resid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1408
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1409
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :goto_0
    return v3

    .line 1413
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1414
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "res:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1415
    .local v1, "name":Ljava/lang/String;
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/IWallpaperManager;->hasNamedWallpaper(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1416
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1417
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isMultiSIMSupported()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2153
    const-string/jumbo v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2154
    .local v0, "mProductName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2156
    .local v1, "multiSIM_skip":Z
    const-string/jumbo v3, "trlteduos"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "klteduos"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2157
    :cond_0
    const/4 v1, 0x1

    .line 2159
    :cond_1
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-le v3, v2, :cond_2

    if-nez v1, :cond_2

    .line 2163
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isWallpaperSupported()Z
    .locals 2

    .prologue
    .line 1688
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1689
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1692
    :cond_0
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 1693
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public peekDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 949
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 950
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 951
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 952
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 955
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 987
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 988
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 989
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .line 991
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1675
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    :goto_0
    return-void

    .line 1678
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1171
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setBitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1174
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    :try_start_0
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1180
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 1183
    const/4 v1, 0x0

    .line 1185
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1186
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_2

    .line 1187
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1188
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1189
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1193
    :goto_1
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStream() complete :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBitmap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1196
    if-eqz v2, :cond_0

    .line 1197
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1200
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1191
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setBitmap fos is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1196
    :catchall_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v1, :cond_3

    .line 1197
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1196
    :catchall_1
    move-exception v3

    goto :goto_2
.end method

.method public setBitmap(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "simSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1312
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBitmap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1315
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    :try_start_0
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, p2}, Landroid/app/IWallpaperManager;->setWallpaperForMultiSim(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1323
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 1326
    const/4 v1, 0x0

    .line 1328
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1329
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1330
    if-eqz v2, :cond_2

    .line 1331
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1332
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1336
    :goto_1
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBitmap() complete :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBitmap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1339
    if-eqz v2, :cond_0

    .line 1340
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1343
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1334
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setBitmap: fos is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1339
    :catchall_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v1, :cond_3

    .line 1340
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1339
    :catchall_1
    move-exception v3

    goto :goto_2
.end method

.method public setDisplayOffset(Landroid/os/IBinder;II)V
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1572
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowSession;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1578
    :goto_0
    return-void

    .line 1575
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 1549
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1550
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :goto_0
    return-void

    .line 1552
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1554
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setResource(I)V
    .locals 9
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1115
    sget-object v6, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v6}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1116
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "WallpaperService not running"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1122
    .local v4, "resources":Landroid/content/res/Resources;
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setResource() get fd"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    sget-object v6, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v6}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "res:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1125
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setResource() fd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "res:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    if-eqz v1, :cond_0

    .line 1127
    const/4 v2, 0x0

    .line 1128
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setResource() get stream for resid"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1131
    .local v5, "stream":Ljava/io/InputStream;
    :try_start_1
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setResource() close output stream"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1133
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setResource() set wallpaper"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    if-eqz v3, :cond_3

    .line 1135
    invoke-direct {p0, v5, v3}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 1136
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setResource() sync"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1141
    :goto_1
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setResource() complete:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    sget-object v6, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v6}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setResource:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1144
    if-eqz v3, :cond_2

    .line 1145
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1147
    :cond_2
    if-eqz v5, :cond_0

    .line 1148
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1152
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "resources":Landroid/content/res/Resources;
    .end local v5    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 1153
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setResource() cannot be completed setResource / getOpPackageName(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1139
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "resources":Landroid/content/res/Resources;
    .restart local v5    # "stream":Ljava/io/InputStream;
    :cond_3
    :try_start_4
    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "fos is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1144
    :catchall_0
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v2, :cond_4

    .line 1145
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1147
    :cond_4
    if-eqz v5, :cond_5

    .line 1148
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v6
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1144
    :catchall_1
    move-exception v6

    goto :goto_2
.end method

.method public setResource(II)V
    .locals 8
    .param p1, "resid"    # I
    .param p2, "simSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1265
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setResource:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1268
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :cond_0
    :goto_0
    return-void

    .line 1273
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1275
    .local v3, "resources":Landroid/content/res/Resources;
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "res:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p2}, Landroid/app/IWallpaperManager;->setWallpaperForMultiSim(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1276
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setResource() fd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "res:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " slot:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    if-eqz v0, :cond_0

    .line 1278
    const/4 v1, 0x0

    .line 1279
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1281
    .local v4, "stream":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1283
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_3

    .line 1284
    :try_start_2
    invoke-direct {p0, v4, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 1285
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1289
    :goto_1
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setResource() complete :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setResource:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fos:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1292
    if-eqz v2, :cond_2

    .line 1293
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1295
    :cond_2
    if-eqz v4, :cond_0

    .line 1296
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1300
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 1287
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v4    # "stream":Ljava/io/InputStream;
    :cond_3
    :try_start_4
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setResource fos is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1292
    :catchall_0
    move-exception v5

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v1, :cond_4

    .line 1293
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1295
    :cond_4
    if-eqz v4, :cond_5

    .line 1296
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v5
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1292
    :catchall_1
    move-exception v5

    goto :goto_2
.end method

.method public setResourceAll(I)V
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2136
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setResourceAll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isMultiSIMSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2138
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/app/WallpaperManager;->setResource(II)V

    .line 2139
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/app/WallpaperManager;->setResource(II)V

    .line 2144
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.wallpaper.settings_systemui_transparency"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2148
    :goto_1
    return-void

    .line 2141
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->setResource(I)V

    goto :goto_0

    .line 2145
    :catch_0
    move-exception v0

    .line 2146
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t put value of SETTINGS_SYSTEMUI_TRANSPARENCY"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1221
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setStream"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1224
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    :try_start_0
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1230
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 1233
    const/4 v1, 0x0

    .line 1235
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1237
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_2

    .line 1238
    :try_start_2
    invoke-direct {p0, p1, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 1239
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1243
    :goto_1
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStream() complete :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStream:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1246
    if-eqz v2, :cond_0

    .line 1247
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1250
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1241
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setStream: fos is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1246
    :catchall_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v1, :cond_3

    .line 1247
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1246
    :catchall_1
    move-exception v3

    goto :goto_2
.end method

.method public setStream(Ljava/io/InputStream;I)V
    .locals 6
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "simSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1355
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStream:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1358
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    :try_start_0
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, p2}, Landroid/app/IWallpaperManager;->setWallpaperForMultiSim(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1365
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 1368
    const/4 v1, 0x0

    .line 1370
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1372
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_2

    .line 1373
    :try_start_2
    invoke-direct {p0, p1, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 1374
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1378
    :goto_1
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStream() complete :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStream:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  fos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1381
    if-eqz v2, :cond_0

    .line 1382
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1385
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1376
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setStream : fos is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1381
    :catchall_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v1, :cond_3

    .line 1382
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1381
    :catchall_1
    move-exception v3

    goto :goto_2
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 1608
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1609
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :goto_0
    return v0

    .line 1613
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/app/IWallpaperManager;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    const/4 v0, 0x1

    goto :goto_0

    .line 1615
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setWallpaperOffsetSteps(FF)V
    .locals 0
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .prologue
    .line 1654
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 1655
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 1656
    return-void
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .prologue
    .line 1637
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1643
    :goto_0
    return-void

    .line 1640
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public suggestDesiredDimensions(II)V
    .locals 8
    .param p1, "minimumWidth"    # I
    .param p2, "minimumHeight"    # I

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 1506
    :try_start_0
    const-string/jumbo v3, "sys.max_texture_size"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1511
    .local v2, "maximumTextureSize":I
    :goto_0
    :try_start_1
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    if-lez v2, :cond_1

    .line 1514
    if-gt p1, v2, :cond_0

    if-le p2, v2, :cond_1

    .line 1516
    :cond_0
    int-to-float v3, p2

    int-to-float v4, p1

    div-float v0, v3, v4

    .line 1517
    .local v0, "aspect":F
    if-le p1, p2, :cond_2

    .line 1518
    move p1, v2

    .line 1519
    int-to-float v3, p1

    mul-float/2addr v3, v0

    float-to-double v4, v3

    add-double/2addr v4, v6

    double-to-int p2, v4

    .line 1527
    .end local v0    # "aspect":F
    :cond_1
    :goto_1
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1528
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    .end local v2    # "maximumTextureSize":I
    :goto_2
    return-void

    .line 1507
    :catch_0
    move-exception v1

    .line 1508
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "maximumTextureSize":I
    goto :goto_0

    .line 1521
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "aspect":F
    :cond_2
    move p2, v2

    .line 1522
    int-to-float v3, p2

    div-float/2addr v3, v0

    float-to-double v4, v3

    add-double/2addr v4, v6

    double-to-int p1, v4

    goto :goto_1

    .line 1530
    .end local v0    # "aspect":F
    :cond_3
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, p2, v4}, Landroid/app/IWallpaperManager;->setDimensionHints(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1533
    .end local v2    # "maximumTextureSize":I
    :catch_1
    move-exception v3

    goto :goto_2
.end method
