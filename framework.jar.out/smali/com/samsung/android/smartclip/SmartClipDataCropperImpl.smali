.class public Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
.super Lcom/samsung/android/smartclip/SmartClipDataCropper;
.source "SmartClipDataCropperImpl.java"


# static fields
.field private static DEBUG:Z = false

.field public static final EXTRACTION_LEVEL_0:I = 0x0

.field public static final EXTRACTION_LEVEL_1:I = 0x1

.field private static final EXTRACTION_RESULT_MAIN_MASKING:I = 0xff

.field private static final MAX_META_VALUE_SIZE:I = 0x19000

.field private static final META_NAME_SUPPORT_THIRD_PARTY_EXTRACTION_INTERFACE:Ljava/lang/String; = "com.samsung.android.smartclip.support_custom_smartclip_metaextraction"

.field private static final TAG:Ljava/lang/String; = "SmartClipDataCropperImpl"

.field private static final YOUTUBE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"

.field private static final YOUTUBE_URL_PREFIX:Ljava/lang/String; = "http://www.youtube.com/watch?v="


# instance fields
.field private mChromeBrowserContentViewName:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mExtractionLevel:I

.field protected mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

.field private mExtractionStartTime:J

.field protected mIsExtractingData:Z

.field private mLastMetaFileId:I

.field protected mPackageName:Ljava/lang/String;

.field private mPenWindowBorderWidth:I

.field protected mPendingElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipDataElementImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleRect:Landroid/graphics/RectF;

.field protected mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field private mSupportThirdPartyExtractionInterface:Z

.field private mUseViewPositionCache:Z

.field private mViewPositionCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mWinFrameRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extractionRequest"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 115
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v0, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extractionRequest"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .param p3, "winFrameRect"    # Landroid/graphics/Rect;
    .param p4, "scaleRect"    # Landroid/graphics/RectF;
    .param p5, "penWindowBorderWidth"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SmartClipDataCropper;-><init>()V

    .line 89
    iput-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    .line 90
    iput-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    .line 91
    iput v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPenWindowBorderWidth:I

    .line 94
    iput-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    .line 97
    iput-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .line 99
    iput-boolean v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    .line 100
    iput v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    .line 102
    iput-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    .line 104
    iput-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    .line 105
    iput-boolean v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSupportThirdPartyExtractionInterface:Z

    .line 106
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionStartTime:J

    .line 107
    iput v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    .line 111
    iput-boolean v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mUseViewPositionCache:Z

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    .line 119
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .line 121
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    .line 122
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    .line 123
    iput p5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPenWindowBorderWidth:I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    .line 126
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 127
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->getChromeViewClassNameFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    .line 134
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->isThirdPartyExtractionInterfaceEnabledOnManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSupportThirdPartyExtractionInterface:Z

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 137
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_2

    .line 139
    iput v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    .line 140
    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, "spenUspLevel":I
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 142
    iput v5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    .line 146
    :cond_1
    const-string v2, "com.samsung.android.smartclip.DEBUG"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    sput-boolean v5, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    .line 150
    .end local v1    # "spenUspLevel":I
    :cond_2
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->updateDataElementWithBundle(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    move-result v0

    return v0
.end method

.method private adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 709
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 710
    .local v4, "screenRectOfView":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 712
    .local v1, "intersection":Landroid/graphics/Rect;
    if-nez p2, :cond_1

    .line 713
    const-string v5, "SmartClipDataCropperImpl"

    const-string v7, "adjustMetaAreaRect : rect is null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 734
    .end local v1    # "intersection":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object v1

    .line 718
    .restart local v1    # "intersection":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 719
    .local v0, "curView":Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_3

    .line 720
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object v5, v0

    .line 721
    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 722
    .local v3, "parentViewRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 723
    .local v2, "intersectionWithParentView":Landroid/graphics/Rect;
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-ne v5, v7, :cond_2

    .line 724
    move-object v4, v2

    .line 727
    .end local v2    # "intersectionWithParentView":Landroid/graphics/Rect;
    .end local v3    # "parentViewRect":Landroid/graphics/Rect;
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 730
    :cond_3
    invoke-virtual {v1, p2, v4}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eq v5, v7, :cond_0

    .line 733
    const-string v5, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustMetaAreaRect : there is no intersection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 734
    goto :goto_0
.end method

.method private allocateMetaTagFilePath()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/smartclip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, "baseDirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 893
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 894
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 895
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 896
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 897
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 900
    :cond_0
    iget v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    .line 901
    iget v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    .line 902
    const-string v3, "%s/SC%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    iget v5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 903
    .local v2, "filePathName":Ljava/lang/String;
    return-object v2
.end method

.method private extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 544
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "extractSmartClipData"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x3

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 545
    .local v5, "extractSmartClipDataMethod":Ljava/lang/reflect/Method;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "setSmartClipResultHandler"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/os/Handler;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 547
    .local v10, "setSmartClipResultHandlerMethod":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    if-eqz v10, :cond_1

    .line 548
    const-string v13, "SmartClipDataCropperImpl"

    const-string v14, "Extracting meta data from Chrome view..."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v8, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v8, v0, v1, v2, v10}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/view/View;Ljava/lang/reflect/Method;)V

    .line 614
    .local v8, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/graphics/Rect;

    invoke-interface/range {p3 .. p3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 615
    .local v3, "cropRect":Landroid/graphics/Rect;
    const/4 v13, 0x2

    new-array v9, v13, [I

    .line 616
    .local v9, "screenPosOfView":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 617
    const/4 v13, 0x0

    aget v13, v9, v13

    neg-int v13, v13

    const/4 v14, 0x1

    aget v14, v9, v14

    neg-int v14, v14

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 619
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-boolean v13, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 622
    const-string v13, "SmartClipDataCropperImpl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Converting coordinate : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p3 .. p3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " -> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    iget v15, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    const/4 v13, 0x2

    .line 652
    .end local v3    # "cropRect":Landroid/graphics/Rect;
    .end local v5    # "extractSmartClipDataMethod":Ljava/lang/reflect/Method;
    .end local v8    # "handler":Landroid/os/Handler;
    .end local v9    # "screenPosOfView":[I
    .end local v10    # "setSmartClipResultHandlerMethod":Ljava/lang/reflect/Method;
    :goto_0
    return v13

    .line 628
    :catch_0
    move-exception v4

    .line 629
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "SmartClipDataCropperImpl"

    const-string v14, "Current chrome view does not support smartclip"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "getUrl"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 635
    .local v7, "getUrlMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 636
    .local v12, "url":Ljava/lang/String;
    new-instance v13, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v14, "url"

    invoke-direct {v13, v14, v12}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 638
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "getTitle"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 639
    .local v6, "getTitleMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 640
    .local v11, "title":Ljava/lang/String;
    new-instance v13, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v14, "title"

    invoke-direct {v13, v14, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 642
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-eqz v13, :cond_2

    .line 643
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v13, v13, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    if-nez v13, :cond_3

    .line 644
    invoke-interface/range {p3 .. p3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 652
    .end local v6    # "getTitleMethod":Ljava/lang/reflect/Method;
    .end local v7    # "getUrlMethod":Ljava/lang/reflect/Method;
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v13, 0x1

    goto :goto_0

    .line 645
    .restart local v6    # "getTitleMethod":Ljava/lang/reflect/Method;
    .restart local v7    # "getUrlMethod":Ljava/lang/reflect/Method;
    .restart local v11    # "title":Ljava/lang/String;
    .restart local v12    # "url":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v13, v13, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    goto :goto_1

    .line 649
    .end local v6    # "getTitleMethod":Ljava/lang/reflect/Method;
    .end local v7    # "getUrlMethod":Ljava/lang/reflect/Method;
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 650
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private extractDefaultSmartClipData_ImageView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 511
    const-string/jumbo v1, "plain_text"

    invoke-virtual {p2, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p1

    .line 512
    check-cast v0, Landroid/widget/ImageView;

    .line 513
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 514
    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v2, "plain_text"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 517
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private extractDefaultSmartClipData_TextView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 472
    const-string/jumbo v9, "plain_text"

    invoke-virtual {p2, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v9

    if-nez v9, :cond_4

    move-object v7, p1

    .line 473
    check-cast v7, Landroid/widget/TextView;

    .line 474
    .local v7, "textView":Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v8

    .line 476
    .local v8, "transformationMethod":Landroid/text/method/TransformationMethod;
    if-eqz v8, :cond_0

    instance-of v9, v8, Landroid/text/method/PasswordTransformationMethod;

    if-nez v9, :cond_4

    .line 478
    :cond_0
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 479
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 480
    const-string v0, ""

    .line 484
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v9, v9, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 486
    invoke-interface {p3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->getSpannedTextRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 487
    .local v6, "spanRect":Landroid/graphics/Rect;
    if-eqz v6, :cond_2

    .line 488
    invoke-virtual {p2, v6}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 489
    const-string v0, ""

    .line 492
    :cond_2
    invoke-virtual {v7}, Landroid/widget/TextView;->hasSelection()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 493
    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 494
    .local v4, "selStart":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 495
    .local v3, "selEnd":I
    const/4 v9, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 496
    .local v2, "min":I
    const/4 v9, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 498
    .local v1, "max":I
    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 499
    .local v5, "selectedText":Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 500
    new-instance v9, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v10, "text_selection"

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 504
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    .end local v5    # "selectedText":Ljava/lang/CharSequence;
    .end local v6    # "spanRect":Landroid/graphics/Rect;
    :cond_3
    new-instance v9, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v10, "plain_text"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 507
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    .end local v7    # "textView":Landroid/widget/TextView;
    .end local v8    # "transformationMethod":Landroid/text/method/TransformationMethod;
    :cond_4
    const/4 v9, 0x1

    return v9
.end method

.method private extractDefaultSmartClipData_TextureView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 536
    const-string/jumbo v0, "plain_text"

    invoke-virtual {p2, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v1, "plain_text"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 539
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private extractDefaultSmartClipData_ThirdPartyInterface(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 657
    move-object v3, p1

    .line 658
    .local v3, "invokeObj":Landroid/view/View;
    :try_start_0
    invoke-direct {p0, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 659
    .local v1, "extractSmartClipDataMethod":Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 661
    .local v3, "invokeObj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 662
    invoke-direct {p0, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 666
    .end local v3    # "invokeObj":Ljava/lang/Object;
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 667
    const-string v7, "SmartClipDataCropperImpl"

    const-string v8, "Extracting meta data using third party interface..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v2, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/view/View;)V

    .line 685
    .local v2, "handler":Landroid/os/Handler;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {p3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-virtual {v1, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 686
    .local v4, "retValue":Ljava/lang/Object;
    if-eqz v4, :cond_2

    instance-of v7, v4, Landroid/os/Bundle;

    if-eqz v7, :cond_2

    .line 687
    const-string v6, "SmartClipDataCropperImpl"

    const-string v7, "Bundle data returned immediately from third party"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    check-cast v4, Landroid/os/Bundle;

    .end local v4    # "retValue":Ljava/lang/Object;
    invoke-direct {p0, p1, v4, p2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->updateDataElementWithBundle(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    .line 700
    .end local v1    # "extractSmartClipDataMethod":Ljava/lang/reflect/Method;
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_1
    :goto_0
    return v5

    .line 691
    .restart local v1    # "extractSmartClipDataMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "handler":Landroid/os/Handler;
    .restart local v4    # "retValue":Ljava/lang/Object;
    :cond_2
    const-string v7, "SmartClipDataCropperImpl"

    const-string v8, "Null returned immediately from third party. waiting pending meta data.."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 692
    goto :goto_0

    .line 695
    .end local v1    # "extractSmartClipDataMethod":Ljava/lang/reflect/Method;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v4    # "retValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception is thrown during execute the third party smartclip interface. e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private extractDefaultSmartClipData_YoutubePlayerView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method private filterMetaTagForBrowserViews(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V
    .locals 14
    .param p1, "element"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 800
    if-nez p1, :cond_1

    .line 801
    const-string v11, "SmartClipDataCropperImpl"

    const-string v12, "filterMetaTagForBrowserViews : element is null!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_0
    return-void

    .line 805
    :cond_1
    move-object v0, p1

    .line 807
    .local v0, "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTagTable()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v5

    .line 809
    .local v5, "tags":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    if-eqz v5, :cond_8

    .line 810
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getView()Landroid/view/View;

    move-result-object v9

    .line 811
    .local v9, "view":Landroid/view/View;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    .line 813
    .local v10, "viewName":Ljava/lang/String;
    :goto_1
    const-string v11, "html"

    invoke-virtual {v5, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v3

    .line 814
    .local v3, "htmlTagCount":I
    const-string/jumbo v11, "plain_text"

    invoke-virtual {v5, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v6

    .line 815
    .local v6, "textTagCount":I
    if-lez v3, :cond_4

    if-lez v6, :cond_4

    .line 816
    iget v11, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    packed-switch v11, :pswitch_data_0

    .line 826
    invoke-virtual {v5}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 827
    .local v1, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    const-string/jumbo v11, "plain_text"

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 828
    const-string v11, "html_text"

    invoke-virtual {v1, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->setType(Ljava/lang/String;)V

    goto :goto_2

    .line 811
    .end local v1    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v3    # "htmlTagCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "textTagCount":I
    .end local v10    # "viewName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "null"

    goto :goto_1

    .line 819
    .restart local v3    # "htmlTagCount":I
    .restart local v6    # "textTagCount":I
    .restart local v10    # "viewName":Ljava/lang/String;
    :pswitch_0
    const-string v11, "html"

    invoke-virtual {v5, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->removeTag(Ljava/lang/String;)V

    .line 820
    const-string v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filterMetaTagForBrowserViews : Discarding HTML tag from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_4
    :goto_3
    invoke-virtual {v5}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 839
    .restart local v1    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    .line 840
    .local v7, "type":Ljava/lang/String;
    const-string v11, "html"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 841
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 842
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const v12, 0x19000

    if-le v11, v12, :cond_5

    .line 843
    const-string v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filterMetaTagForBrowserViews : Have large HTML data("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes). Converting tag.."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->allocateMetaTagFilePath()Ljava/lang/String;

    move-result-object v2

    .line 845
    .local v2, "filePathName":Ljava/lang/String;
    invoke-direct {p0, v2, v8}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 846
    const-string v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filterMetaTagForBrowserViews : Failed to save meta tag! - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_5
    const-string v11, "file_path_html"

    invoke-virtual {v1, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->setType(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 831
    .end local v1    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v2    # "filePathName":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_6
    const-string v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filterMetaTagForBrowserViews : The TEXT tag changed to HTML_TEXT. View="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 848
    .restart local v1    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .restart local v2    # "filePathName":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_7
    const-string v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filterMetaTagForBrowserViews : Saved the meta tag to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 856
    .end local v1    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v2    # "filePathName":Ljava/lang/String;
    .end local v3    # "htmlTagCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "textTagCount":I
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "viewName":Ljava/lang/String;
    :cond_8
    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 857
    goto/16 :goto_0

    .line 816
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getChildViewsByZOrder(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 907
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 908
    .local v1, "childCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 910
    .local v2, "childViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    .line 911
    .local v8, "zOrderExist":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 912
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 913
    .local v3, "currentChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getZ()F

    move-result v4

    .line 914
    .local v4, "currentZ":F
    const/4 v9, 0x0

    cmpl-float v9, v4, v9

    if-eqz v9, :cond_0

    .line 915
    const/4 v8, 0x1

    .line 919
    :cond_0
    move v7, v5

    .line 920
    .local v7, "insertIndex":I
    :goto_1
    if-lez v7, :cond_1

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getZ()F

    move-result v9

    cmpl-float v9, v9, v4

    if-lez v9, :cond_1

    .line 921
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 923
    :cond_1
    invoke-virtual {v2, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 911
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 926
    .end local v3    # "currentChild":Landroid/view/View;
    .end local v4    # "currentZ":F
    .end local v7    # "insertIndex":I
    :cond_2
    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 927
    const-string v9, "SmartClipDataCropperImpl"

    const-string v10, "getChildViewsByZOrder : Z order detected"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 929
    .local v0, "child":Landroid/view/View;
    const-string v9, "SmartClipDataCropperImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getChildViewsByZOrder : Parent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / View="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / Z="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 933
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v2
.end method

.method private getMainResultFromExtractionResult(I)I
    .locals 1
    .param p1, "extractionResult"    # I

    .prologue
    .line 705
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private getOpaqueBackgroundRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "element"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 740
    move-object v2, p1

    .line 741
    .local v2, "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    const/4 v4, 0x0

    .line 743
    .local v4, "opaqueRect":Landroid/graphics/Rect;
    :goto_0
    if-eqz v2, :cond_2

    .line 744
    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getView()Landroid/view/View;

    move-result-object v5

    .line 745
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 746
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 747
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    const/4 v7, -0x2

    if-eq v6, v7, :cond_0

    .line 748
    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 749
    .local v3, "metaRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    .line 750
    invoke-direct {p0, v5, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 751
    .local v0, "adjustedRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 752
    if-nez v4, :cond_1

    .line 753
    new-instance v4, Landroid/graphics/Rect;

    .end local v4    # "opaqueRect":Landroid/graphics/Rect;
    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 761
    .end local v0    # "adjustedRect":Landroid/graphics/Rect;
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "metaRect":Landroid/graphics/Rect;
    .restart local v4    # "opaqueRect":Landroid/graphics/Rect;
    :cond_0
    :goto_1
    invoke-virtual {v2, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    .line 762
    goto :goto_0

    .line 755
    .restart local v0    # "adjustedRect":Landroid/graphics/Rect;
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "metaRect":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 763
    .end local v0    # "adjustedRect":Landroid/graphics/Rect;
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "metaRect":Landroid/graphics/Rect;
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    const-string v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOpaqueBackgroundRect : opaqueRect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  element="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return-object v4
.end method

.method private getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 367
    const/4 v1, 0x0

    .line 369
    .local v1, "screenPointOfView":Landroid/graphics/Point;
    iget-boolean v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mUseViewPositionCache:Z

    if-ne v2, v3, :cond_0

    .line 370
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "screenPointOfView":Landroid/graphics/Point;
    check-cast v1, Landroid/graphics/Point;

    .line 373
    .restart local v1    # "screenPointOfView":Landroid/graphics/Point;
    :cond_0
    if-nez v1, :cond_1

    .line 374
    new-instance v1, Landroid/graphics/Point;

    .end local v1    # "screenPointOfView":Landroid/graphics/Point;
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 375
    .restart local v1    # "screenPointOfView":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 376
    .local v0, "screenOffsetOfView":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 377
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 378
    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 380
    iget-boolean v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mUseViewPositionCache:Z

    if-ne v2, v3, :cond_1

    .line 381
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .end local v0    # "screenOffsetOfView":[I
    :cond_1
    return-object v1
.end method

.method private getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 355
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 356
    .local v1, "screenRectOfView":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 358
    .local v0, "screenPointOfView":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 359
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 360
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 361
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 363
    return-object v1
.end method

.method private getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 974
    if-nez p1, :cond_0

    .line 975
    const/4 v0, 0x0

    .line 983
    :goto_0
    return-object v0

    .line 978
    :cond_0
    const/4 v0, 0x0

    .line 980
    .local v0, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "extractSmartClipData"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/Handler;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 981
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private isSupportThirdPartyExtractionInterface(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 958
    if-nez p1, :cond_1

    .line 970
    :cond_0
    :goto_0
    return v2

    .line 962
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_2

    move v2, v1

    .line 963
    goto :goto_0

    .line 965
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 966
    .local v0, "tagObject":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 967
    invoke-direct {p0, v0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private isThirdPartyExtractionInterfaceEnabledOnManifest(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 937
    const/4 v2, 0x0

    .line 939
    .local v2, "isFeatureEnabled":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 940
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 941
    const-string v3, "SmartClipDataCropperImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportThirdPartyExtractionInterface : Could not get appInfo! - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v3, 0x0

    .line 954
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .line 945
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 946
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 947
    const-string v3, "com.samsung.android.smartclip.support_custom_smartclip_metaextraction"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 948
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 949
    const-string v3, "SmartClipDataCropperImpl"

    const-string v4, "isSupportThirdPartyExtractionInterface : Feature enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_1
    move v3, v2

    .line 954
    goto :goto_0

    .line 952
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private removeSmartClipDataElementByRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "element"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p2, "rectToDelete"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 771
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getLastChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 772
    .local v0, "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 773
    move-object v1, v0

    .line 774
    .local v1, "cur":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 776
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->removeSmartClipDataElementByRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 779
    .end local v1    # "cur":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v5

    if-nez v5, :cond_2

    .line 780
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 781
    .local v2, "metaAreaRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v5

    if-ne v5, v3, :cond_1

    .line 783
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->removeChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .line 791
    .end local v2    # "metaAreaRect":Landroid/graphics/Rect;
    :goto_1
    return v3

    .line 785
    .restart local v2    # "metaAreaRect":Landroid/graphics/Rect;
    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p2, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-ne v5, v3, :cond_2

    .line 786
    const-string v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeSmartClipDataElementByRect : Removing element due to RECT intersection. element = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v4, v3}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->removeChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    goto :goto_1

    .end local v2    # "metaAreaRect":Landroid/graphics/Rect;
    :cond_2
    move v3, v4

    .line 791
    goto :goto_1
.end method

.method private traverseView(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z
    .locals 28
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;
    .param p3, "smartClipDataRepository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p4, "parentSlookSmartClipDataElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 1025
    const/4 v15, 0x0

    .line 1027
    .local v15, "haveCroppedView":Z
    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v24

    if-nez v24, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v24

    if-lez v24, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v24

    if-lez v24, :cond_f

    .line 1028
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v21

    .line 1032
    .local v21, "screenRectOfView":Landroid/graphics/Rect;
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 1034
    new-instance v12, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v12, v0, v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1035
    .local v12, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getSmartClipTags()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v11

    .line 1036
    .local v11, "defaultViewTags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v11, :cond_0

    .line 1037
    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->getCopy()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTagTable(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V

    .line 1041
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getSmartClipDataExtractionListener()Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

    move-result-object v18

    .line 1042
    .local v18, "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    const/4 v14, 0x0

    .line 1044
    .local v14, "extractionResult":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSupportThirdPartyExtractionInterface:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->isSupportThirdPartyExtractionInterface(Landroid/view/View;)Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1045
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v12, v2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_ThirdPartyInterface(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v14

    .line 1054
    :goto_0
    move-object v13, v12

    .line 1055
    .local v13, "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_1
    if-eqz v13, :cond_3

    .line 1056
    invoke-virtual {v13}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1057
    .local v3, "adjustedMetaAreaRect":Landroid/graphics/Rect;
    invoke-virtual {v13, v3}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 1059
    invoke-virtual {v13, v12}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v13

    .line 1060
    goto :goto_1

    .line 1046
    .end local v3    # "adjustedMetaAreaRect":Landroid/graphics/Rect;
    .end local v13    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_1
    if-eqz v18, :cond_2

    .line 1047
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v12, v2}, Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;->onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v14

    goto :goto_0

    .line 1050
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v14

    goto :goto_0

    .line 1062
    .restart local v13    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getMainResultFromExtractionResult(I)I

    move-result v19

    .line 1063
    .local v19, "mainResult":I
    packed-switch v19, :pswitch_data_0

    .line 1078
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1079
    .local v23, "viewString":Ljava/lang/String;
    const-string v24, "SmartClipDataCropperImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown main extraction result value : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " / View = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {v12}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    .line 1086
    .end local v23    # "viewString":Ljava/lang/String;
    :goto_2
    :pswitch_0
    and-int/lit16 v0, v14, 0x100

    move/from16 v24, v0

    if-eqz v24, :cond_5

    const/16 v22, 0x1

    .line 1087
    .local v22, "skipExtractionFromChildView":Z
    :goto_3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    if-nez v22, :cond_6

    move-object/from16 v24, p1

    .line 1088
    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getChildViewsByZOrder(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1089
    .local v8, "childViewArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1091
    .local v6, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v6, :cond_6

    .line 1092
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1094
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v1, v2, v12}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->traverseView(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    move-result v4

    .line 1096
    .local v4, "bFound":Z
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v4, v0, :cond_4

    .line 1097
    const/4 v15, 0x1

    .line 1091
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1069
    .end local v4    # "bFound":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v8    # "childViewArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v16    # "i":I
    .end local v22    # "skipExtractionFromChildView":Z
    :pswitch_1
    invoke-virtual {v12}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    goto :goto_2

    .line 1073
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    const/4 v15, 0x1

    .line 1075
    goto :goto_2

    .line 1086
    :cond_5
    const/16 v22, 0x0

    goto :goto_3

    .line 1103
    .restart local v22    # "skipExtractionFromChildView":Z
    :cond_6
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v24

    if-nez v24, :cond_7

    .line 1104
    const/4 v15, 0x1

    .line 1108
    :cond_7
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v24

    if-nez v24, :cond_8

    .line 1109
    sget-boolean v24, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    if-eqz v24, :cond_c

    .line 1110
    const-string v24, "SmartClipDataCropperImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "traverseView : Contains meta data : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_8
    :goto_5
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v15, v0, :cond_f

    .line 1118
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v24, v0

    if-nez v24, :cond_9

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    move/from16 v24, v0

    if-eqz v24, :cond_e

    .line 1120
    :cond_9
    invoke-virtual {v12}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getLastChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v7

    .line 1121
    .local v7, "childElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    const/16 v20, 0x0

    .line 1126
    .local v20, "opaqueRect":Landroid/graphics/Rect;
    :cond_a
    :goto_6
    if-eqz v7, :cond_e

    .line 1127
    const/16 v17, 0x0

    .line 1128
    .local v17, "isCurElementRemoved":Z
    move-object v9, v7

    .line 1129
    .local v9, "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v7

    .line 1132
    if-eqz v20, :cond_b

    .line 1133
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->removeSmartClipDataElementByRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z

    move-result v17

    .line 1137
    :cond_b
    if-nez v17, :cond_a

    .line 1138
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getOpaqueBackgroundRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Landroid/graphics/Rect;

    move-result-object v10

    .line 1139
    .local v10, "curOpaqueRect":Landroid/graphics/Rect;
    if-eqz v10, :cond_a

    .line 1140
    if-nez v20, :cond_d

    .line 1141
    move-object/from16 v20, v10

    goto :goto_6

    .line 1112
    .end local v7    # "childElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v9    # "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v10    # "curOpaqueRect":Landroid/graphics/Rect;
    .end local v17    # "isCurElementRemoved":Z
    .end local v20    # "opaqueRect":Landroid/graphics/Rect;
    :cond_c
    const-string v24, "SmartClipDataCropperImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "traverseView : Contains meta data : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1143
    .restart local v7    # "childElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .restart local v9    # "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .restart local v10    # "curOpaqueRect":Landroid/graphics/Rect;
    .restart local v17    # "isCurElementRemoved":Z
    .restart local v20    # "opaqueRect":Landroid/graphics/Rect;
    :cond_d
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 1153
    .end local v7    # "childElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v9    # "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v10    # "curOpaqueRect":Landroid/graphics/Rect;
    .end local v17    # "isCurElementRemoved":Z
    .end local v20    # "opaqueRect":Landroid/graphics/Rect;
    :cond_e
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .line 1158
    .end local v11    # "defaultViewTags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    .end local v12    # "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v13    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v14    # "extractionResult":I
    .end local v18    # "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    .end local v19    # "mainResult":I
    .end local v21    # "screenRectOfView":Landroid/graphics/Rect;
    .end local v22    # "skipExtractionFromChildView":Z
    :cond_f
    return v15

    .line 1063
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;
    .param p3, "smartClipDataRepository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p4, "parentSlookSmartClipDataElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 1162
    const/4 v11, 0x0

    .line 1164
    .local v11, "haveCroppedView":Z
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    if-lez v19, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v19

    if-lez v19, :cond_5

    .line 1165
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v16

    .line 1167
    .local v16, "screenRectOfView":Landroid/graphics/Rect;
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 1170
    new-instance v8, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v8, v0, v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1173
    .local v8, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    const/4 v10, 0x0

    .line 1174
    .local v10, "extractionResult":I
    const/4 v15, 0x0

    .line 1175
    .local v15, "needToCallListener":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getSmartClipDataExtractionListener()Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

    move-result-object v13

    .line 1177
    .local v13, "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    if-eqz v13, :cond_0

    .line 1178
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/SurfaceView;

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1179
    const/4 v15, 0x1

    .line 1183
    :cond_0
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_1

    .line 1184
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v8, v1}, Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;->onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v10

    .line 1191
    :goto_0
    move-object v9, v8

    .line 1192
    .local v9, "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_1
    if-eqz v9, :cond_2

    .line 1193
    invoke-virtual {v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1194
    .local v3, "adjustedMetaAreaRect":Landroid/graphics/Rect;
    invoke-virtual {v9, v3}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 1196
    invoke-virtual {v9, v8}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v9

    .line 1197
    goto :goto_1

    .line 1187
    .end local v3    # "adjustedMetaAreaRect":Landroid/graphics/Rect;
    .end local v9    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v10

    goto :goto_0

    .line 1199
    .restart local v9    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getMainResultFromExtractionResult(I)I

    move-result v14

    .line 1200
    .local v14, "mainResult":I
    packed-switch v14, :pswitch_data_0

    .line 1215
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1216
    .local v18, "viewString":Ljava/lang/String;
    const-string v19, "SmartClipDataCropperImpl"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unknown main extraction result value : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " / View = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-virtual {v8}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    .line 1223
    .end local v18    # "viewString":Ljava/lang/String;
    :goto_2
    :pswitch_0
    and-int/lit16 v0, v10, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_6

    const/16 v17, 0x1

    .line 1224
    .local v17, "skipExtractionFromChildView":Z
    :goto_3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    if-nez v17, :cond_3

    .line 1225
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getChildViewsByZOrder(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1226
    .local v7, "childViewArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1228
    .local v6, "childCount":I
    add-int/lit8 v12, v6, -0x1

    .local v12, "i":I
    :goto_4
    if-ltz v12, :cond_3

    .line 1229
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1231
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v1, v2, v8}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    move-result v4

    .line 1233
    .local v4, "bFound":Z
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_7

    .line 1234
    const/4 v11, 0x1

    .line 1241
    .end local v4    # "bFound":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v7    # "childViewArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v12    # "i":I
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v19

    if-nez v19, :cond_4

    .line 1242
    const/4 v11, 0x1

    .line 1245
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_5

    .line 1246
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .line 1251
    .end local v8    # "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v9    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v10    # "extractionResult":I
    .end local v13    # "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    .end local v14    # "mainResult":I
    .end local v15    # "needToCallListener":Z
    .end local v16    # "screenRectOfView":Landroid/graphics/Rect;
    .end local v17    # "skipExtractionFromChildView":Z
    :cond_5
    return v11

    .line 1206
    .restart local v8    # "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .restart local v9    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .restart local v10    # "extractionResult":I
    .restart local v13    # "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    .restart local v14    # "mainResult":I
    .restart local v15    # "needToCallListener":Z
    .restart local v16    # "screenRectOfView":Landroid/graphics/Rect;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_1
    invoke-virtual {v8}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    goto :goto_2

    .line 1210
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    const/4 v11, 0x1

    .line 1212
    goto :goto_2

    .line 1223
    :cond_6
    const/16 v17, 0x0

    goto :goto_3

    .line 1228
    .end local p1    # "view":Landroid/view/View;
    .restart local v4    # "bFound":Z
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v7    # "childViewArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v12    # "i":I
    .restart local v17    # "skipExtractionFromChildView":Z
    :cond_7
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 1200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateDataElementWithBundle(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    const/4 v10, 0x1

    .line 987
    const/4 v2, 0x0

    .line 989
    .local v2, "isElementUpdated":Z
    const-string/jumbo v6, "title"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 990
    .local v4, "title":Ljava/lang/String;
    const-string/jumbo v6, "url"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 991
    .local v5, "url":Ljava/lang/String;
    const-string v6, "app_link"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 992
    .local v0, "appLink":Ljava/lang/String;
    const-string/jumbo v6, "rect"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 994
    .local v1, "area":Landroid/graphics/Rect;
    sget-boolean v6, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    if-ne v6, v10, :cond_0

    .line 995
    const-string v6, "SmartClipDataCropperImpl"

    const-string v7, "fillDataElementWithBundle : Title:%s\nLink:%s\nURL:%s\nArea:%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    aput-object v0, v8, v10

    const/4 v9, 0x2

    aput-object v5, v8, v9

    const/4 v9, 0x3

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 999
    new-instance v6, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v7, "title"

    invoke-direct {v6, v7, v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 1000
    const/4 v2, 0x1

    .line 1003
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1004
    new-instance v6, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v7, "url"

    invoke-direct {v6, v7, v5}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 1005
    const/4 v2, 0x1

    .line 1008
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1009
    new-instance v6, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v7, "app_deep_link"

    invoke-direct {v6, v7, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 1010
    const/4 v2, 0x1

    .line 1013
    :cond_3
    if-eqz v1, :cond_4

    .line 1014
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1015
    .local v3, "screenRectOfView":Landroid/graphics/Rect;
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1016
    invoke-virtual {p3, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 1017
    const/4 v2, 0x1

    .line 1020
    .end local v3    # "screenRectOfView":Landroid/graphics/Rect;
    :cond_4
    return v2
.end method

.method private writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "filePathName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 862
    const/4 v4, 0x1

    .line 863
    .local v4, "ret":Z
    const-string v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeStringToFile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 866
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 868
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 874
    if-eqz v3, :cond_2

    .line 876
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 884
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    invoke-virtual {v1, v9, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 885
    invoke-virtual {v1, v9, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 887
    return v4

    .line 877
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 878
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeStringToFile : File close failed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v4, 0x0

    move-object v2, v3

    .line 880
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 870
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 871
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeStringToFile : File write failed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 872
    const/4 v4, 0x0

    .line 874
    if-eqz v2, :cond_0

    .line 876
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 877
    :catch_2
    move-exception v0

    .line 878
    const-string v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeStringToFile : File close failed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v4, 0x0

    .line 880
    goto :goto_0

    .line 874
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_1

    .line 876
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 880
    :cond_1
    :goto_3
    throw v5

    .line 877
    :catch_3
    move-exception v0

    .line 878
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeStringToFile : File close failed! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v4, 0x0

    goto :goto_3

    .line 874
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 870
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :cond_2
    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method


# virtual methods
.method protected addAppMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 204
    const-string v1, "SmartClipDataCropperImpl"

    const-string v2, "addAppMetaTag : mContext is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string v1, "SmartClipDataCropperImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppMetaTag : package name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    const-string v1, "app_launch_info"

    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .local v0, "intentTag":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    goto :goto_0
.end method

.method public doExtractSmartClipData(Landroid/view/View;)Z
    .locals 10
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-nez v6, :cond_0

    .line 158
    const-string v5, "SmartClipDataCropperImpl"

    const-string v6, "doExtractSmartClipData : extractionRequest is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    return v4

    .line 162
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionStartTime:J

    .line 164
    new-instance v1, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget-object v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    invoke-direct {v1, v6}, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;-><init>(Landroid/graphics/Rect;)V

    .line 166
    .local v1, "croppedArea":Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 167
    .local v0, "cropRect":Landroid/graphics/Rect;
    if-nez v0, :cond_3

    const-string/jumbo v2, "null"

    .line 168
    .local v2, "rectAreaStr":Ljava/lang/String;
    :goto_1
    const-string v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doExtractSmartClipData : Extraction start! reqId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v8, v8, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Cropped area = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Package = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-boolean v5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    .line 172
    new-instance v6, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    iget v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPenWindowBorderWidth:I

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V

    iput-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 173
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getRootElement()Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    move-result-object v3

    .line 175
    .local v3, "rootElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 176
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 178
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {p0, p1, v1, v6, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    .line 182
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 187
    invoke-virtual {p0, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->addAppMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)V

    .line 190
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->setAppPackageName(Ljava/lang/String;)V

    .line 192
    iput-boolean v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    .line 194
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 195
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->determineContentType()Z

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService()Z

    :cond_2
    move v4, v5

    .line 199
    goto/16 :goto_0

    .line 167
    .end local v2    # "rectAreaStr":Ljava/lang/String;
    .end local v3    # "rootElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 180
    .restart local v2    # "rectAreaStr":Ljava/lang/String;
    .restart local v3    # "rootElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {p0, p1, v1, v6, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->traverseView(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    goto :goto_2
.end method

.method public extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 389
    if-nez p2, :cond_0

    .line 390
    const-string v3, "SmartClipDataCropperImpl"

    const-string v4, "extractDefaultSmartClipData : The result element is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :goto_0
    return v2

    .line 394
    :cond_0
    if-nez p3, :cond_1

    .line 395
    const-string v3, "SmartClipDataCropperImpl"

    const-string v4, "extractDefaultSmartClipData : The cropped area is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "viewClassName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    const-string v4, "com.google.android.youtube"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PlayerView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 402
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_YoutubePlayerView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v2

    goto :goto_0

    .line 404
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_3

    .line 405
    const-string v2, "SmartClipDataCropperImpl"

    const-string v4, "extractDefaultSmartClipData : Has chrome view"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v2

    goto :goto_0

    .line 408
    :cond_3
    const-string/jumbo v2, "org.chromium.content.browser.JellyBeanContentView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 409
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v2

    goto :goto_0

    .line 411
    :cond_4
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 412
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_TextView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v2

    goto :goto_0

    .line 414
    :cond_5
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 415
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_ImageView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v2

    goto :goto_0

    .line 420
    :cond_6
    instance-of v2, p1, Landroid/view/TextureView;

    if-eqz v2, :cond_7

    .line 421
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_TextureView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 423
    .end local v1    # "viewClassName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClassCastException in traverseView : target class is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 427
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_7
    move v2, v3

    .line 430
    goto/16 :goto_0
.end method

.method protected findElementIndexFromPendingList(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)I
    .locals 3
    .param p1, "element"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 264
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 265
    .local v1, "pendingCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 266
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 270
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 265
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getExtractionLevel()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    return v0
.end method

.method public getExtractionMode()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v0, v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getParentList(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v1, "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 245
    .local v0, "cur":Landroid/view/ViewParent;
    instance-of v2, p1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object v0, p1

    .line 246
    check-cast v0, Landroid/view/ViewParent;

    .line 252
    :goto_0
    if-eqz v0, :cond_2

    .line 253
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 255
    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_2
    return-object v1
.end method

.method public getSmartClipDataRepository()Lcom/samsung/android/smartclip/SmartClipDataRepository;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    return-object v0
.end method

.method protected sendExtractionResultToSmartClipService()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 275
    const-string v1, "SmartClipDataCropperImpl"

    const-string v2, "Cannot send the extraction result due to it still have pending element!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return v0

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    move-result v0

    goto :goto_0

    .line 282
    :cond_1
    const-string v1, "SmartClipDataCropperImpl"

    const-string v2, "Cannot send the extraction result due to it is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendExtractionResultToSmartClipService(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z
    .locals 12
    .param p1, "result"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    const/4 v5, 0x1

    .line 300
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-nez v6, :cond_0

    .line 301
    const-string v5, "SmartClipDataCropperImpl"

    const-string/jumbo v6, "sendExtractionResultToSmartClipService : extractionRequest is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v5, 0x0

    .line 351
    :goto_0
    return v5

    .line 306
    :cond_0
    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    if-nez v6, :cond_1

    .line 307
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getRootElement()Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->filterMetaTagForBrowserViews(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 311
    :cond_1
    if-eqz p1, :cond_3

    .line 312
    const-string v6, "SmartClipDataCropperImpl"

    const-string/jumbo v7, "sendExtractionResultToSmartClipService : -- Extracted SmartClip data information --"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendExtractionResultToSmartClipService : Request Id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v8, v8, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendExtractionResultToSmartClipService : Extraction mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v8, v8, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget-boolean v6, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    invoke-virtual {p1, v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->dump(Z)Z

    .line 322
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "spengestureservice"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 323
    .local v4, "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    new-instance v2, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v7, v7, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    invoke-direct {v2, v6, v7, p1}, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;-><init>(IILcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    .line 326
    .local v2, "response":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    if-ltz v6, :cond_2

    .line 327
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    invoke-virtual {p1, v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->setWindowLayer(I)V

    .line 331
    :cond_2
    :try_start_0
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7, v2}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;-><init>(IILandroid/os/Parcelable;)V

    .line 336
    .local v3, "resultData":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    invoke-virtual {v4, v3}, Lcom/samsung/android/smartclip/SpenGestureManager;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v3    # "resultData":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    :goto_2
    const-string v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendExtractionResultToSmartClipService : Elapsed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionStartTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 318
    .end local v2    # "response":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    .end local v4    # "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    :cond_3
    const-string v6, "SmartClipDataCropperImpl"

    const-string/jumbo v7, "sendExtractionResultToSmartClipService : The repository is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 337
    .restart local v2    # "response":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    .restart local v4    # "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendExtractionResultToSmartClipService : Failed to send the result! e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v6, "SmartClipDataCropperImpl"

    const-string/jumbo v7, "sendExtractionResultToSmartClipService : Send empty response..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    const/4 v7, 0x0

    invoke-direct {v1, v6, v5, v7}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;-><init>(IILandroid/os/Parcelable;)V

    .line 346
    .local v1, "emptyResultData":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    invoke-virtual {v4, v1}, Lcom/samsung/android/smartclip/SpenGestureManager;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V

    goto :goto_2
.end method

.method public setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    invoke-virtual {p0, v2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->findElementIndexFromPendingList(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)I

    move-result v1

    .line 217
    .local v1, "elementIndex":I
    if-ltz v1, :cond_3

    .line 218
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v0, p2

    .line 221
    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 222
    .local v0, "elementImpl":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v0, v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    sget-boolean v2, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 224
    const-string v2, "SmartClipDataCropperImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPendingExtractionResult : Contains meta data : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    if-nez v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->determineContentType()Z

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService()Z

    :cond_1
    move v2, v3

    .line 236
    .end local v0    # "elementImpl":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_1
    return v2

    .line 226
    .restart local v0    # "elementImpl":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_2
    const-string v2, "SmartClipDataCropperImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPendingExtractionResult : Contains meta data : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "elementImpl":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_3
    move v2, v4

    .line 236
    goto :goto_1
.end method
