.class public Landroid/sec/clipboard/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static final BASE_64_ENCODING:Ljava/lang/String; = ";base64"

.field private static final LENGTH_CONTENT_URI:I

.field private static final LENGTH_HTTPS_URL:I

.field private static final LENGTH_HTTP_URL:I

.field private static final PREFIX_CONTENT_URI:Ljava/lang/String; = "content://"

.field private static final PREFIX_DATA:Ljava/lang/String; = "data:"

.field private static final PREFIX_FILE:Ljava/lang/String; = "file://"

.field private static final PREFIX_HTTPS_URL:Ljava/lang/String; = "https://"

.field private static final PREFIX_HTTP_URL:Ljava/lang/String; = "http://"

.field private static final PREFIX_STORAGE:Ljava/lang/String; = "storage/emulated/"

.field private static instance:Landroid/sec/clipboard/util/FileHelper;


# instance fields
.field private NullFile:Ljava/io/File;

.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Landroid/sec/clipboard/util/FileHelper;

    invoke-direct {v0}, Landroid/sec/clipboard/util/FileHelper;-><init>()V

    sput-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    .line 68
    const-string v0, "http://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTP_URL:I

    .line 69
    const-string v0, "https://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTPS_URL:I

    .line 70
    const-string v0, "content://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "FileHelper"

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/io/File;

    const-string v1, "_TEMP_FILE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-void
.end method

.method private getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmapPath"    # Ljava/lang/String;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 702
    const/4 v3, 0x2

    .line 703
    .local v3, "sampleSize":I
    const/4 v1, 0x0

    .line 705
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 710
    .local v0, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 713
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 719
    :try_start_0
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 720
    const-string v4, "FileHelper"

    const-string v5, "BitmapFactory.decodeFile(bitmapPath, bitmapOption"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 729
    :goto_0
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 730
    const-string v4, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmapOption.outWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bitmapOption.outHieght:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v4, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mGridItemWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mGridItemHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_1
    :goto_1
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p3, :cond_2

    .line 735
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 723
    :catch_0
    move-exception v2

    .line 724
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 737
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 741
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 744
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 745
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 749
    :goto_2
    return-object v1

    .line 746
    :catch_1
    move-exception v2

    .line 747
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getInstance()Landroid/sec/clipboard/util/FileHelper;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-object v0
.end method


# virtual methods
.method public checkDir(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 809
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public checkFile(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 830
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public createTemporaryThumnailImage(Ljava/lang/String;)Z
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 335
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_thum.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, "thumFullPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 337
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 338
    .local v0, "Result":Z
    const/16 v7, 0x14a

    const/16 v8, 0xf0

    invoke-direct {p0, p1, v7, v8}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 340
    if-nez v2, :cond_1

    .line 341
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 342
    const-string v7, "FileHelper"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    .line 369
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_0
    return v1

    .line 347
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_1
    const/4 v4, 0x0

    .line 350
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_2

    .line 353
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 354
    const/4 v0, 0x1

    .line 360
    :cond_2
    if-eqz v5, :cond_3

    .line 361
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v4, v5

    .line 368
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 369
    .restart local v1    # "Result":I
    goto :goto_0

    .line 363
    .end local v1    # "Result":I
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 364
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 366
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 356
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 357
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    if-eqz v4, :cond_4

    .line 361
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 363
    :catch_2
    move-exception v3

    .line 364
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 359
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 360
    :goto_3
    if-eqz v4, :cond_5

    .line 361
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 365
    :cond_5
    :goto_4
    throw v7

    .line 363
    :catch_3
    move-exception v3

    .line 364
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 359
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 356
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public createThumnailFromData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Ljava/lang/String;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 373
    const/4 v9, 0x0

    .line 374
    .local v9, "htmlClip":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 376
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    const/16 v16, 0x180

    .line 377
    .local v16, "thumbImageWidth":I
    const/16 v15, 0x180

    .line 380
    .local v15, "thumbImageHeight":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10501a7

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10501a6

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    move/from16 v0, v18

    float-to-int v15, v0

    .line 386
    :goto_0
    if-eqz p2, :cond_5

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v9, p2

    .line 388
    check-cast v9, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 402
    sget-boolean v18, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v18, :cond_0

    .line 403
    const-string v18, "FileHelper"

    const-string v19, "Create preview image for html data in createThumnailFromData()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    const/4 v2, 0x0

    .line 406
    .local v2, "bm":Landroid/graphics/Bitmap;
    const-string v12, ""

    .line 408
    .local v12, "sFileName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getHtml()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 411
    invoke-static {v12}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 412
    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 417
    :goto_1
    if-eqz v12, :cond_1

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 418
    :cond_1
    sget-boolean v18, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v18, :cond_2

    .line 419
    const-string v18, "FileHelper"

    const-string v19, "getFirstImage : FileName is empty."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_2
    const/4 v14, 0x0

    .line 484
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v12    # "sFileName":Ljava/lang/String;
    :goto_2
    return-object v14

    .line 382
    :catch_0
    move-exception v6

    .line 383
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 390
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    sget-boolean v18, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v18, :cond_4

    .line 391
    const-string v18, "FileHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "createThumnailFromData() is false because clip is not html type. clip.GetFomat() :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 396
    :cond_5
    sget-boolean v18, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v18, :cond_6

    .line 397
    const-string v18, "FileHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "createThumnailFromData() is false because clip is invalid data. clip :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    .line 413
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v12    # "sFileName":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 414
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 424
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v18, "FileHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    .line 427
    .local v11, "length":I
    const-string v18, "data:"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 428
    const/16 v18, 0x2c

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 429
    .local v10, "index":I
    if-lez v10, :cond_8

    if-ge v10, v11, :cond_8

    const-string v18, "data:"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, ";base64"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 430
    add-int/lit8 v18, v10, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 431
    .local v5, "decodedString":[B
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-static {v5, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    .line 432
    move/from16 v0, v16

    invoke-static {v5, v0, v15}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getResizeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 457
    .end local v5    # "decodedString":[B
    .end local v10    # "index":I
    :cond_8
    :goto_3
    if-eqz v2, :cond_12

    .line 458
    new-instance v13, Ljava/io/File;

    const-string v18, "/data/clipboard/temp/"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v13, "tempFolder":Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    .line 461
    new-instance v4, Ljava/io/File;

    const-string v18, "/data/clipboard/temp/"

    const-string/jumbo v19, "previewhtmlclipboarditem"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .local v4, "createFile":Ljava/io/File;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_thum.jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 463
    .local v14, "thumFullPath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 465
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 466
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    if-eqz v8, :cond_9

    .line 467
    :try_start_3
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x32

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 473
    :cond_9
    if-eqz v8, :cond_a

    .line 474
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_a
    move-object v7, v8

    .line 481
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_b
    :goto_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 435
    .end local v4    # "createFile":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "tempFolder":Ljava/io/File;
    .end local v14    # "thumFullPath":Ljava/lang/String;
    :cond_c
    sget v18, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTP_URL:I

    move/from16 v0, v18

    if-le v11, v0, :cond_d

    const/16 v18, 0x0

    sget v19, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTP_URL:I

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, "http://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_e

    :cond_d
    sget v18, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTPS_URL:I

    move/from16 v0, v18

    if-le v11, v0, :cond_f

    const/16 v18, 0x0

    sget v19, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTPS_URL:I

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, "https://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_f

    .line 437
    :cond_e
    const-string v18, "FileHelper"

    const-string v19, "downloadSimpleBitmap"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :try_start_5
    const-string v18, "FileHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "html : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getHtml()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    move/from16 v0, v16

    invoke-static {v12, v0, v15}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->downloadSimpleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v2

    goto/16 :goto_3

    .line 442
    :catch_2
    move-exception v6

    .line 443
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 444
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 447
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_f
    if-eqz v3, :cond_10

    sget v18, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    move/from16 v0, v18

    if-le v11, v0, :cond_10

    const/16 v18, 0x0

    sget v19, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, "content://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_10

    .line 449
    const-string v18, "FileHelper"

    const-string v19, "getUriPathBitmap..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 451
    .local v17, "uri":Landroid/net/Uri;
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v3, v0, v1, v15}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getUriPathBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 452
    goto/16 :goto_3

    .line 453
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_10
    const-string v18, "FileHelper"

    const-string v19, "invalid data"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 476
    .restart local v4    # "createFile":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "tempFolder":Ljava/io/File;
    .restart local v14    # "thumFullPath":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 477
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 479
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 469
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 470
    .local v6, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 473
    if-eqz v7, :cond_b

    .line 474
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_4

    .line 476
    :catch_5
    move-exception v6

    .line 477
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 472
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 473
    :goto_6
    if-eqz v7, :cond_11

    .line 474
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 478
    :cond_11
    :goto_7
    throw v18

    .line 476
    :catch_6
    move-exception v6

    .line 477
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 484
    .end local v4    # "createFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "tempFolder":Ljava/io/File;
    .end local v14    # "thumFullPath":Ljava/lang/String;
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 472
    .restart local v4    # "createFile":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "tempFolder":Ljava/io/File;
    .restart local v14    # "thumFullPath":Ljava/lang/String;
    :catchall_1
    move-exception v18

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 469
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5
.end method

.method public createThumnailFromUriData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Ljava/lang/String;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 604
    const/16 v17, 0x0

    .line 605
    .local v17, "uriClip":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 607
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    const/16 v15, 0x180

    .line 608
    .local v15, "thumbImageWidth":I
    const/16 v14, 0x180

    .line 611
    .local v14, "thumbImageHeight":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10501a7

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v15, v0

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10501a6

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    move/from16 v0, v18

    float-to-int v14, v0

    .line 617
    :goto_0
    if-eqz p2, :cond_5

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v17, p2

    .line 619
    check-cast v17, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 633
    sget-boolean v18, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v18, :cond_0

    .line 634
    const-string v18, "FileHelper"

    const-string v19, "Create preview image for uri data in createThumnailFromData()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    const/4 v2, 0x0

    .line 638
    .local v2, "bm":Landroid/graphics/Bitmap;
    const-string v11, ""

    .line 640
    .local v11, "sFileName":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 642
    if-eqz v11, :cond_1

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 643
    :cond_1
    sget-boolean v18, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v18, :cond_2

    .line 644
    const-string v18, "FileHelper"

    const-string v19, "getFirstImage : FileName is empty."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_2
    const/4 v13, 0x0

    .line 697
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v11    # "sFileName":Ljava/lang/String;
    :goto_1
    return-object v13

    .line 613
    :catch_0
    move-exception v6

    .line 614
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 621
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    sget-boolean v18, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v18, :cond_4

    .line 622
    const-string v18, "FileHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "createThumnailFromData() is false because clip is not uri type. clip.GetFomat() :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    .line 627
    :cond_5
    sget-boolean v18, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v18, :cond_6

    .line 628
    const-string v18, "FileHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "createThumnailFromData() is false because clip is invalid data. clip :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_6
    const/4 v13, 0x0

    goto :goto_1

    .line 649
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v11    # "sFileName":Ljava/lang/String;
    :cond_7
    const-string v18, "FileHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    .line 652
    .local v10, "length":I
    const-string v18, "data:"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 653
    const/16 v18, 0x2c

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 654
    .local v9, "index":I
    if-lez v9, :cond_8

    if-ge v9, v10, :cond_8

    const-string v18, "data:"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v11, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, ";base64"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 655
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 656
    .local v5, "decodedString":[B
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-static {v5, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    .line 657
    invoke-static {v5, v15, v14}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getResizeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 670
    .end local v5    # "decodedString":[B
    .end local v9    # "index":I
    :cond_8
    :goto_2
    if-eqz v2, :cond_11

    .line 671
    new-instance v12, Ljava/io/File;

    const-string v18, "/data/clipboard/temp/"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 672
    .local v12, "tempFolder":Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    .line 674
    new-instance v4, Ljava/io/File;

    const-string v18, "/data/clipboard/temp/"

    const-string/jumbo v19, "previewhtmlclipboarditem"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .local v4, "createFile":Ljava/io/File;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_thum.jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 676
    .local v13, "thumFullPath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 678
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 679
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    if-eqz v8, :cond_9

    .line 680
    :try_start_2
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x32

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 686
    :cond_9
    if-eqz v8, :cond_a

    .line 687
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_a
    move-object v7, v8

    .line 694
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_b
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .line 659
    .end local v4    # "createFile":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "tempFolder":Ljava/io/File;
    .end local v13    # "thumFullPath":Ljava/lang/String;
    :cond_c
    const-string/jumbo v18, "storage/emulated/"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_d

    const-string v18, "file://"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 660
    :cond_d
    invoke-static {v11, v15, v14}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 661
    :cond_e
    if-eqz v3, :cond_f

    sget v18, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    move/from16 v0, v18

    if-le v10, v0, :cond_f

    const/16 v18, 0x0

    sget v19, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, "content://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_f

    .line 663
    const-string v18, "FileHelper"

    const-string v19, "getUriPathBitmap..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 665
    .local v16, "uri":Landroid/net/Uri;
    move-object/from16 v0, v16

    invoke-static {v3, v0, v15, v14}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getUriPathBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 666
    goto/16 :goto_2

    .line 667
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_f
    const-string v18, "FileHelper"

    const-string v19, "invalid data"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 689
    .restart local v4    # "createFile":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "tempFolder":Ljava/io/File;
    .restart local v13    # "thumFullPath":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 690
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 692
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 682
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 683
    .local v6, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 686
    if-eqz v7, :cond_b

    .line 687
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 689
    :catch_3
    move-exception v6

    .line 690
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 685
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 686
    :goto_5
    if-eqz v7, :cond_10

    .line 687
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 691
    :cond_10
    :goto_6
    throw v18

    .line 689
    :catch_4
    move-exception v6

    .line 690
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 697
    .end local v4    # "createFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "tempFolder":Ljava/io/File;
    .end local v13    # "thumFullPath":Ljava/lang/String;
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 685
    .restart local v4    # "createFile":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "tempFolder":Ljava/io/File;
    .restart local v13    # "thumFullPath":Ljava/lang/String;
    :catchall_1
    move-exception v18

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 682
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v6

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public createThumnailImage(Ljava/lang/String;)Z
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_thum.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, "thumFullPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 267
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 268
    .local v0, "Result":Z
    const/16 v7, 0x99

    const/16 v8, 0x56

    invoke-direct {p0, p1, v7, v8}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 269
    if-nez v2, :cond_1

    .line 270
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 271
    const-string v7, "FileHelper"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    .line 297
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_0
    return v1

    .line 276
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_1
    const/4 v4, 0x0

    .line 279
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_2

    .line 282
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 283
    const/4 v0, 0x1

    .line 289
    :cond_2
    if-eqz v5, :cond_3

    .line 290
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v4, v5

    .line 296
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 297
    .restart local v1    # "Result":I
    goto :goto_0

    .line 292
    .end local v1    # "Result":I
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 293
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 295
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 285
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 286
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    if-eqz v4, :cond_4

    .line 290
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 292
    :catch_2
    move-exception v3

    .line 293
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 288
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 289
    :goto_3
    if-eqz v4, :cond_5

    .line 290
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 294
    :cond_5
    :goto_4
    throw v7

    .line 292
    :catch_3
    move-exception v3

    .line 293
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 288
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 285
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public createThumnailImage(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 301
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_thum.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 302
    .local v6, "thumFullPath":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 303
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 304
    .local v0, "Result":Z
    if-nez v2, :cond_1

    .line 305
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 306
    const-string v7, "FileHelper"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    .line 331
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_0
    return v1

    .line 310
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_1
    const/4 v4, 0x0

    .line 312
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_2

    .line 315
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 316
    const/4 v0, 0x1

    .line 322
    :cond_2
    if-eqz v5, :cond_3

    .line 323
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v4, v5

    .line 330
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 331
    .restart local v1    # "Result":I
    goto :goto_0

    .line 325
    .end local v1    # "Result":I
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 326
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 328
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 318
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 319
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    if-eqz v4, :cond_4

    .line 323
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 325
    :catch_2
    move-exception v3

    .line 326
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 321
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 322
    :goto_3
    if-eqz v4, :cond_5

    .line 323
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 327
    :cond_5
    :goto_4
    throw v7

    .line 325
    :catch_3
    move-exception v3

    .line 326
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 321
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 318
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public delete(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 840
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 841
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 846
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 847
    .local v4, "list":[Ljava/io/File;
    if-eqz v4, :cond_0

    .line 848
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 849
    .local v1, "f":Ljava/io/File;
    invoke-virtual {p0, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 848
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 851
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z
    .locals 18
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "Result":Z
    const/4 v12, 0x0

    .line 172
    .local v12, "inputStream":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 173
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 174
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 175
    .local v8, "fcout":Ljava/nio/channels/FileChannel;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    .line 177
    .local v11, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 178
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fd

    const/16 v16, -0x1

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v5, v0, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 179
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .local v13, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .local v15, "outputStream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 182
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 183
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 184
    .local v6, "lSize":J
    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 185
    const/4 v2, 0x1

    .line 193
    if-eqz v3, :cond_0

    .line 194
    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 196
    :cond_0
    if-eqz v8, :cond_1

    .line 197
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 199
    :cond_1
    if-eqz v13, :cond_2

    .line 200
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 202
    :cond_2
    if-eqz v15, :cond_3

    .line 203
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 206
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 207
    const/16 p1, 0x0

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v6    # "lSize":J
    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    :goto_0
    move v9, v2

    .line 212
    .end local v2    # "Result":Z
    .local v9, "Result":I
    :goto_1
    return v9

    .line 208
    .end local v9    # "Result":I
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "Result":Z
    .restart local v6    # "lSize":J
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    .line 209
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 211
    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 186
    .end local v6    # "lSize":J
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 187
    .local v10, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 193
    if-eqz v3, :cond_4

    .line 194
    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 196
    :cond_4
    if-eqz v8, :cond_5

    .line 197
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 199
    :cond_5
    if-eqz v12, :cond_6

    .line 200
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 202
    :cond_6
    if-eqz v14, :cond_7

    .line 203
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 206
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 207
    const/16 p1, 0x0

    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    move v9, v2

    .line 210
    .restart local v9    # "Result":I
    goto :goto_1

    .line 208
    .end local v9    # "Result":I
    .restart local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v10

    .line 209
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 189
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 190
    .restart local v10    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 193
    if-eqz v3, :cond_8

    .line 194
    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 196
    :cond_8
    if-eqz v8, :cond_9

    .line 197
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 199
    :cond_9
    if-eqz v12, :cond_a

    .line 200
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 202
    :cond_a
    if-eqz v14, :cond_b

    .line 203
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 206
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 207
    const/16 p1, 0x0

    goto :goto_0

    .line 208
    :catch_4
    move-exception v10

    .line 209
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 193
    :goto_5
    if-eqz v3, :cond_c

    .line 194
    :try_start_8
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 196
    :cond_c
    if-eqz v8, :cond_d

    .line 197
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 199
    :cond_d
    if-eqz v12, :cond_e

    .line 200
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 202
    :cond_e
    if-eqz v14, :cond_f

    .line 203
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 206
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 207
    const/16 p1, 0x0

    .line 210
    :goto_6
    throw v4

    .line 208
    :catch_5
    move-exception v10

    .line 209
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 192
    .end local v10    # "e":Ljava/io/IOException;
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 189
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v10

    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v10

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 186
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v10

    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v10

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .locals 17
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "Result":Z
    const/4 v11, 0x0

    .line 85
    .local v11, "inputStream":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 88
    .local v13, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 89
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fd

    const/4 v15, -0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-static {v4, v5, v15, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 90
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v11    # "inputStream":Ljava/io/FileInputStream;
    .local v12, "inputStream":Ljava/io/FileInputStream;
    move-object v11, v12

    .line 100
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "inputStream":Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 106
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    if-eqz v11, :cond_0

    if-nez v14, :cond_4

    .line 107
    :cond_0
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 108
    const-string v4, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "break fileCopy()...because of inputStream :"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, ", or outputStream :"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    if-eqz v14, :cond_2

    .line 112
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 114
    :cond_2
    if-eqz v11, :cond_3

    .line 115
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_1
    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    move v9, v2

    .line 166
    .end local v2    # "Result":Z
    .local v9, "Result":I
    :goto_2
    return v9

    .line 92
    .end local v9    # "Result":I
    .restart local v2    # "Result":Z
    :catch_0
    move-exception v10

    .line 93
    .local v10, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v9, v2

    .line 94
    .restart local v9    # "Result":I
    goto :goto_2

    .line 95
    .end local v9    # "Result":I
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v10

    .line 96
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v10

    .line 102
    .local v10, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v9, v2

    .line 103
    .restart local v9    # "Result":I
    goto :goto_2

    .line 117
    .end local v9    # "Result":I
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v10

    .line 118
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 123
    .end local v10    # "e":Ljava/io/IOException;
    :cond_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 124
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 126
    .local v8, "fcout":Ljava/nio/channels/FileChannel;
    if-eqz v3, :cond_5

    .line 127
    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 128
    .local v6, "lSize":J
    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 129
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 131
    .end local v6    # "lSize":J
    :cond_5
    if-eqz v8, :cond_6

    .line 132
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 134
    :cond_6
    if-eqz v14, :cond_7

    .line 135
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 137
    :cond_7
    if-eqz v11, :cond_8

    .line 138
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    :cond_8
    const/4 v2, 0x1

    .line 148
    if-eqz v3, :cond_9

    .line 149
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 151
    :cond_9
    if-eqz v8, :cond_a

    .line 152
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 154
    :cond_a
    if-eqz v11, :cond_b

    .line 155
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 157
    :cond_b
    if-eqz v14, :cond_c

    .line 158
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_c
    :goto_3
    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    move v9, v2

    .line 166
    .restart local v9    # "Result":I
    goto :goto_2

    .line 160
    .end local v9    # "Result":I
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v10

    .line 161
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 141
    .end local v10    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v10

    .line 142
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    const/4 v2, 0x0

    .line 148
    if-eqz v3, :cond_d

    .line 149
    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 151
    :cond_d
    if-eqz v8, :cond_e

    .line 152
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 154
    :cond_e
    if-eqz v11, :cond_f

    .line 155
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 157
    :cond_f
    if-eqz v14, :cond_c

    .line 158
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    .line 160
    :catch_6
    move-exception v10

    .line 161
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 147
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 148
    if-eqz v3, :cond_10

    .line 149
    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 151
    :cond_10
    if-eqz v8, :cond_11

    .line 152
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 154
    :cond_11
    if-eqz v11, :cond_12

    .line 155
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 157
    :cond_12
    if-eqz v14, :cond_13

    .line 158
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 162
    :cond_13
    :goto_4
    throw v4

    .line 160
    :catch_7
    move-exception v10

    .line 161
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public getAbsoluteNullFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/io/File;)[Ljava/io/File;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 834
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 836
    .local v0, "list":[Ljava/io/File;
    return-object v0
.end method

.method public getNullFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-object v0
.end method

.method public getSDCardPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 793
    const-string v1, ""

    .line 794
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "ext":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 796
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 800
    :goto_0
    return-object v1

    .line 798
    :cond_0
    const-string/jumbo v1, "unmounted"

    goto :goto_0
.end method

.method public loadObjectFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 753
    const/4 v5, 0x0

    .line 754
    .local v5, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 755
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 757
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 758
    const-string v6, "FileHelper"

    const-string v7, "load object file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 762
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .line 775
    if-eqz v4, :cond_1

    .line 776
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 778
    :cond_1
    if-eqz v2, :cond_2

    .line 779
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 785
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "result":Ljava/lang/Object;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :goto_0
    return-object v5

    .line 781
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 784
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 763
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 764
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 775
    if-eqz v3, :cond_4

    .line 776
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 778
    :cond_4
    if-eqz v1, :cond_3

    .line 779
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 781
    :catch_2
    move-exception v0

    .line 782
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 765
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 766
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 775
    if-eqz v3, :cond_5

    .line 776
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 778
    :cond_5
    if-eqz v1, :cond_3

    .line 779
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 781
    :catch_4
    move-exception v0

    .line 782
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 767
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 775
    if-eqz v3, :cond_6

    .line 776
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 778
    :cond_6
    if-eqz v1, :cond_3

    .line 779
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 781
    :catch_6
    move-exception v0

    .line 782
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 769
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 770
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 775
    if-eqz v3, :cond_7

    .line 776
    :try_start_b
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 778
    :cond_7
    if-eqz v1, :cond_3

    .line 779
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_0

    .line 781
    :catch_8
    move-exception v0

    .line 782
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 771
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/ClassCastException;
    :goto_5
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 775
    if-eqz v3, :cond_8

    .line 776
    :try_start_d
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 778
    :cond_8
    if-eqz v1, :cond_3

    .line 779
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_0

    .line 781
    :catch_a
    move-exception v0

    .line 782
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 774
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 775
    :goto_6
    if-eqz v3, :cond_9

    .line 776
    :try_start_e
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 778
    :cond_9
    if-eqz v1, :cond_a

    .line 779
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 783
    :cond_a
    :goto_7
    throw v6

    .line 781
    :catch_b
    move-exception v0

    .line 782
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 774
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 771
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 769
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_e
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_f
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 767
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_10
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_11
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 765
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_12
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_13
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 763
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_14
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_15
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public makeDir(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, -0x1

    .line 818
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 820
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 822
    :cond_0
    return-void
.end method

.method public saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 222
    if-nez p2, :cond_2

    .line 223
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 224
    const-string v6, "FileHelper"

    const-string/jumbo v7, "obj == null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    const/4 v5, 0x0

    .line 260
    :cond_1
    :goto_0
    return v5

    .line 230
    :cond_2
    const/4 v5, 0x1

    .line 231
    .local v5, "result":Z
    const/4 v1, 0x0

    .line 232
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 235
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 246
    if-eqz v4, :cond_3

    .line 247
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 249
    :cond_3
    if-eqz v2, :cond_4

    .line 250
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 257
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 252
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 254
    const-string v6, "FileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 258
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 238
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 239
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 240
    const-string v6, "FileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveObjectFile~IOException :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    const/4 v5, 0x0

    .line 246
    if-eqz v3, :cond_7

    .line 247
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 249
    :cond_7
    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 252
    :catch_2
    move-exception v0

    .line 253
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_8

    .line 254
    const-string v6, "FileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 245
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 246
    :goto_2
    if-eqz v3, :cond_9

    .line 247
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 249
    :cond_9
    if-eqz v1, :cond_a

    .line 250
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 257
    :cond_a
    :goto_3
    throw v6

    .line 252
    :catch_3
    move-exception v0

    .line 253
    .restart local v0    # "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v7, :cond_b

    .line 254
    const-string v7, "FileHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 245
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 238
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method public setFirstImagePathFromHtmlData(Landroid/sec/clipboard/data/list/ClipboardDataHtml;)Z
    .locals 11
    .param p1, "clip"    # Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 488
    if-nez p1, :cond_1

    .line 548
    :cond_0
    :goto_0
    return v4

    .line 492
    :cond_1
    const-string v3, ""

    .line 494
    .local v3, "sFileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getHtml()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 503
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_4

    .line 504
    :cond_2
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 505
    const-string v4, "FileHelper"

    const-string v6, "getFirstImage : FileName is empty."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v4, v5

    .line 507
    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 510
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 511
    const-string v6, "FileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 515
    .local v2, "length":I
    const-string v6, "data:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 516
    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 517
    .local v1, "index":I
    if-lez v1, :cond_0

    if-ge v1, v2, :cond_0

    const-string v6, "data:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";base64"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 518
    invoke-virtual {p1, v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setFirstImgPath(Ljava/lang/String;)Z

    move v4, v5

    .line 519
    goto :goto_0

    .line 521
    .end local v1    # "index":I
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_8

    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    .line 522
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 523
    invoke-virtual {p1, v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setFirstImgPath(Ljava/lang/String;)Z

    .line 524
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v4, :cond_7

    .line 525
    const-string v4, "FileHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setFirstImagePathFromData: Substring Filepath  - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v4, v5

    .line 527
    goto/16 :goto_0

    .line 528
    :cond_8
    const-string/jumbo v6, "storage/emulated/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 529
    invoke-virtual {p1, v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setFirstImgPath(Ljava/lang/String;)Z

    .line 530
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v4, :cond_9

    .line 531
    const-string v4, "FileHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "directly use firstImagePath...getFilePathBitmap : Substring Filepath  - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v4, v5

    .line 533
    goto/16 :goto_0

    .line 535
    :cond_a
    sget v6, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTP_URL:I

    if-le v2, v6, :cond_b

    sget v6, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTP_URL:I

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    sget v6, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTPS_URL:I

    if-le v2, v6, :cond_d

    sget v6, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTPS_URL:I

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_d

    .line 537
    :cond_c
    invoke-virtual {p1, v10}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setFirstImgPath(Ljava/lang/String;)Z

    move v4, v5

    .line 538
    goto/16 :goto_0

    .line 539
    :cond_d
    sget v6, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    if-le v2, v6, :cond_0

    sget v6, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 541
    invoke-virtual {p1, v10}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setFirstImgPath(Ljava/lang/String;)Z

    move v4, v5

    .line 542
    goto/16 :goto_0
.end method

.method public setPreviewImagePathFromUriData(Landroid/sec/clipboard/data/list/ClipboardDataUri;)Z
    .locals 9
    .param p1, "clip"    # Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .prologue
    const/4 v8, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 552
    if-nez p1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v3

    .line 556
    :cond_1
    const-string v2, ""

    .line 557
    .local v2, "sFileName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 559
    if-eqz v2, :cond_2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v4, :cond_4

    .line 560
    :cond_2
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 561
    const-string v3, "FileHelper"

    const-string v5, "getPreviewImage : FileName is empty."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v4

    .line 563
    goto :goto_0

    .line 566
    :cond_4
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 567
    const-string v5, "FileHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 571
    .local v1, "length":I
    const-string v5, "data:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 572
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 573
    .local v0, "index":I
    if-lez v0, :cond_0

    if-ge v0, v1, :cond_0

    const-string v5, "data:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";base64"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 574
    invoke-virtual {p1, v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setPreviewImgPath(Ljava/lang/String;)Z

    move v3, v4

    .line 575
    goto :goto_0

    .line 577
    .end local v0    # "index":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_8

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8

    .line 578
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 579
    invoke-virtual {p1, v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setPreviewImgPath(Ljava/lang/String;)Z

    .line 580
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v3, :cond_7

    .line 581
    const-string v3, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreviewImagePathFromData: Substring Filepath  - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v3, v4

    .line 583
    goto/16 :goto_0

    .line 584
    :cond_8
    const-string/jumbo v5, "storage/emulated/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 585
    invoke-virtual {p1, v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setPreviewImgPath(Ljava/lang/String;)Z

    .line 586
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v3, :cond_9

    .line 587
    const-string v3, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "directly use previewImagePath...getFilePathBitmap : Substring Filepath  - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v3, v4

    .line 589
    goto/16 :goto_0

    .line 591
    :cond_a
    sget v5, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    if-le v1, v5, :cond_0

    sget v5, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 593
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setPreviewImgPath(Ljava/lang/String;)Z

    move v3, v4

    .line 594
    goto/16 :goto_0
.end method
