.class Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;
.super Landroid/os/Handler;
.source "SmartClipDataCropperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mResult:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

.field final synthetic this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

.field final synthetic val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field final synthetic val$setSmartClipResultHandlerMethod:Ljava/lang/reflect/Method;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/view/View;Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 550
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    iput-object p2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object p3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$setSmartClipResultHandlerMethod:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 551
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->mResult:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 554
    const-string v9, "SmartClipDataCropperImpl"

    const-string v10, "Meta data arrived from chrome"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 556
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 557
    const-string v9, "SmartClipDataCropperImpl"

    const-string v10, "The bundle is null!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    iget-object v11, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->mResult:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .line 610
    :goto_0
    return-void

    .line 562
    :cond_0
    const-string/jumbo v9, "title"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 563
    .local v7, "title":Ljava/lang/String;
    const-string/jumbo v9, "url"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 564
    .local v8, "url":Ljava/lang/String;
    const-string v9, "html"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, "html":Ljava/lang/String;
    const-string/jumbo v9, "text"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 566
    .local v6, "text":Ljava/lang/String;
    const-string/jumbo v9, "rect"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 568
    .local v0, "area":Landroid/graphics/Rect;
    # getter for: Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->access$000()Z

    move-result v9

    if-ne v9, v13, :cond_1

    .line 569
    const-string v9, "SmartClipDataCropperImpl"

    const-string v10, "Title:%s\nURL:%s\nArea:%s\nText:%s\nHTML:%s"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v12

    aput-object v8, v11, v13

    const/4 v12, 0x2

    aput-object v0, v11, v12

    const/4 v12, 0x3

    aput-object v6, v11, v12

    const/4 v12, 0x4

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 572
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    new-instance v10, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v11, "title"

    invoke-direct {v10, v11, v7}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 574
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 575
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    new-instance v10, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v11, "url"

    invoke-direct {v10, v11, v8}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 577
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 578
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    new-instance v10, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v11, "html"

    invoke-direct {v10, v11, v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 580
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 581
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    new-instance v10, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v11, "plain_text"

    invoke-direct {v10, v11, v6}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 583
    :cond_5
    if-eqz v0, :cond_6

    .line 588
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    iget-object v9, v9, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 589
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    invoke-static {v13, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->left:I

    .line 590
    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-static {v13, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->top:I

    .line 591
    iget v9, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    invoke-static {v13, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 592
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-static {v13, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 595
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    # invokes: Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v9, v10}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->access$100(Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    .line 596
    .local v5, "screenRectOfView":Landroid/graphics/Rect;
    iget v9, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 597
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 599
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    invoke-virtual {v9, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 603
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "screenRectOfView":Landroid/graphics/Rect;
    :cond_6
    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$setSmartClipResultHandlerMethod:Ljava/lang/reflect/Method;

    iget-object v11, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v9, 0x0

    check-cast v9, Landroid/os/Handler;

    aput-object v9, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    iget-object v11, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->mResult:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    goto/16 :goto_0

    .line 604
    :catch_0
    move-exception v2

    .line 605
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "SmartClipDataCropperImpl"

    const-string v10, "Could not invoke set smartclip handler API"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method