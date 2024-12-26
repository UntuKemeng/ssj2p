.class public Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
.super Ljava/lang/Object;
.source "SmartClipDataElementImpl.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;


# static fields
.field public static final EXTRACTION_LEVEL_0:I = 0x0

.field public static final EXTRACTION_LEVEL_1:I = 0x1

.field public static final EXTRACTION_MODE_DRAG_AND_DROP:I = 0x2

.field public static final EXTRACTION_MODE_NORMAL:I = 0x0

.field public static final EXTRACTION_MODE_SINGLE_WORD:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "SmartClipDataElementImpl"


# instance fields
.field protected mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mId:I

.field protected mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mRectOnScreen:Landroid/graphics/Rect;

.field protected mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field public mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mId:I

    .line 52
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 55
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    .line 58
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 61
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 64
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 67
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 70
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 73
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 76
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 202
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V
    .locals 2
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mId:I

    .line 52
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 55
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    .line 58
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 61
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 64
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 67
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 70
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 73
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 76
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 206
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 207
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p2, "screenRect"    # Landroid/graphics/Rect;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    .line 218
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 219
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    .line 212
    iput-object p2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "screenRect"    # Landroid/graphics/Rect;

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;)V

    .line 224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 225
    return-void
.end method

.method private setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V
    .locals 0
    .param p1, "sibling"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 420
    return-void
.end method

.method private setParent(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V
    .locals 0
    .param p1, "parent"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 424
    return-void
.end method

.method private setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V
    .locals 0
    .param p1, "sibling"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 416
    return-void
.end method


# virtual methods
.method public addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z
    .locals 6
    .param p1, "childToAdd"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 352
    if-nez p1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 356
    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 358
    .local v0, "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-nez v4, :cond_2

    .line 359
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 360
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 361
    invoke-direct {v0, v5}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 362
    invoke-direct {v0, v5}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 363
    invoke-direct {v0, p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setParent(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    move v2, v3

    .line 364
    goto :goto_0

    .line 365
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eqz v4, :cond_0

    .line 366
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 367
    .local v1, "lastChild":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 368
    invoke-direct {v1, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 369
    invoke-direct {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 370
    invoke-direct {v0, p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setParent(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    move v2, v3

    .line 375
    goto :goto_0
.end method

.method public addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V
    .locals 2
    .param p1, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    .line 163
    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_2

    .line 168
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 171
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->isValidMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addTag(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V
    .locals 1
    .param p1, "tagSet"    # Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->addAll(Ljava/util/Collection;)Z

    .line 186
    return-void
.end method

.method public clearMetaData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 232
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTagTable(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V

    .line 233
    return-void
.end method

.method public createChildInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->newInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    move-result-object v0

    .line 332
    .local v0, "newElement":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .line 333
    return-object v0
.end method

.method public dump()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 610
    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "dumpStr":Ljava/lang/String;
    const-string v2, "SmartClipDataElementImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    .line 614
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_0
    if-eqz v1, :cond_0

    .line 615
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->dump()Z

    .line 616
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    goto :goto_0

    .line 618
    :cond_0
    return v3
.end method

.method public getAllTag()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->getCopy()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 469
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_0
    if-eqz v1, :cond_0

    .line 470
    add-int/lit8 v0, v0, 0x1

    .line 471
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    goto :goto_0

    .line 473
    :cond_0
    return v0
.end method

.method public getDataRepository()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    return-object v0
.end method

.method public getDumpString(ZZ)Ljava/lang/String;
    .locals 17
    .param p1, "addIndent"    # Z
    .param p2, "showValue"    # Z

    .prologue
    .line 516
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .line 517
    .local v8, "result":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParentCount()I

    move-result v6

    .line 519
    .local v6, "parentCount":I
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_0

    .line 520
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 521
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 520
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 525
    .end local v4    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    if-eqz v15, :cond_5

    .line 526
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Rect("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 531
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    if-eqz v15, :cond_1

    .line 532
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 535
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v7

    .line 536
    .local v7, "resId":I
    const/4 v15, -0x1

    if-eq v7, v15, :cond_6

    if-ltz v7, :cond_6

    .line 538
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v14

    .line 539
    .local v14, "viewResName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 548
    .end local v14    # "viewResName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 549
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v15

    const/16 v16, -0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 550
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Opacity BG("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 555
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v7    # "resId":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v15, :cond_8

    .line 556
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v15}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v10

    .line 557
    .local v10, "tagCount":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v10, :cond_9

    .line 558
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v15, v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 560
    .local v9, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v12

    .line 561
    .local v12, "type":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 562
    .local v13, "value":Ljava/lang/String;
    const-string v3, ""

    .line 564
    .local v3, "extra":Ljava/lang/String;
    if-nez v13, :cond_2

    .line 565
    new-instance v13, Ljava/lang/String;

    .end local v13    # "value":Ljava/lang/String;
    const-string/jumbo v15, "null"

    invoke-direct {v13, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 568
    .restart local v13    # "value":Ljava/lang/String;
    :cond_2
    instance-of v15, v9, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    if-eqz v15, :cond_4

    move-object v11, v9

    .line 569
    check-cast v11, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    .line 571
    .local v11, "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v15

    if-eqz v15, :cond_3

    .line 572
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ", Extra data size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    :cond_3
    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 576
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", Extra parcelable = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 577
    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v5

    .line 578
    .local v5, "obj":Landroid/os/Parcelable;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 583
    .end local v5    # "obj":Landroid/os/Parcelable;
    .end local v11    # "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    :cond_4
    const/4 v15, 0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_7

    .line 584
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 557
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 528
    .end local v3    # "extra":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v9    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v10    # "tagCount":I
    .end local v12    # "type":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "mRectOnScreen(NULL)\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 540
    .restart local v7    # "resId":I
    :catch_0
    move-exception v2

    .line 541
    .local v2, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "@"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->hashCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 542
    goto/16 :goto_2

    .line 544
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "@"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->hashCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 586
    .end local v7    # "resId":I
    .restart local v3    # "extra":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v9    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .restart local v10    # "tagCount":I
    .restart local v12    # "type":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 590
    .end local v3    # "extra":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v9    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v10    # "tagCount":I
    .end local v12    # "type":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "No meta tag\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 605
    :cond_9
    return-object v8
.end method

.method public getExtractionLevel()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 285
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-nez v2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v1

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getSmartClipDataCropper()Lcom/samsung/android/smartclip/SmartClipDataCropper;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    .line 290
    .local v0, "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getExtractionLevel()I

    move-result v1

    goto :goto_0
.end method

.method public getExtractionMode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-nez v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v1

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getSmartClipDataCropper()Lcom/samsung/android/smartclip/SmartClipDataCropper;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    .line 269
    .local v0, "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getExtractionMode()I

    move-result v1

    goto :goto_0
.end method

.method public getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getLastChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getMetaAreaRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getParentCount()I
    .locals 2

    .prologue
    .line 479
    const/4 v1, 0x0

    .line 480
    .local v1, "parentCount":I
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 482
    .local v0, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 483
    add-int/lit8 v1, v1, 0x1

    .line 484
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_0
    return v1
.end method

.method public getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 2
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v1, :cond_0

    .line 139
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 143
    :goto_0
    return-object v0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    .line 143
    .local v0, "typedArray":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    goto :goto_0
.end method

.method public getTagTable()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isEmptyTag(Z)Z
    .locals 4
    .param p1, "includeChild"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 302
    if-nez p1, :cond_2

    .line 303
    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 306
    goto :goto_0

    .line 309
    :cond_2
    move-object v0, p0

    .line 311
    .local v0, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_1
    if-eqz v0, :cond_4

    .line 312
    iget-object v3, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 316
    :cond_3
    invoke-virtual {v0, p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v1, v2

    .line 318
    goto :goto_0
.end method

.method public newInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .locals 2

    .prologue
    .line 342
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    return-object v0
.end method

.method public removeChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z
    .locals 5
    .param p1, "childToRemove"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    const/4 v1, 0x0

    .line 382
    if-nez p1, :cond_0

    .line 410
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 386
    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 388
    .local v0, "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 389
    const-string v2, "SmartClipDataElementImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeChild : Incorrect parent of SlookSmartClipDataElement. element="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->dump()Z

    goto :goto_0

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-ne v1, v0, :cond_2

    .line 395
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 398
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-ne v1, v0, :cond_3

    .line 399
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 402
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 403
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 406
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 407
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 410
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->removeTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataRepository(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V
    .locals 0
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 248
    return-void
.end method

.method public setMetaAreaRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 85
    return-void
.end method

.method public setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z
    .locals 2
    .param p1, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    const/4 v0, 0x0

    .line 117
    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v1, :cond_2

    .line 122
    new-instance v1, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 125
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->removeTag(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 133
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTagTable(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V
    .locals 0
    .param p1, "tagsArray"    # Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 193
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    .line 238
    return-void
.end method

.method public traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 3
    .param p1, "topMostNodeOfTraverse"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    const/4 v1, 0x0

    .line 493
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eqz v2, :cond_1

    .line 494
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 511
    :cond_0
    :goto_0
    return-object v1

    .line 496
    :cond_1
    if-eq p0, p1, :cond_0

    .line 499
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eqz v2, :cond_2

    .line 500
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    goto :goto_0

    .line 502
    :cond_2
    move-object v0, p0

    .line 503
    .local v0, "n":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_1
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-nez v2, :cond_4

    if-eqz p1, :cond_3

    iget-object v2, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eq v2, p1, :cond_4

    .line 504
    :cond_3
    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    goto :goto_1

    .line 507
    :cond_4
    if-eqz v0, :cond_0

    .line 508
    iget-object v1, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    goto :goto_0
.end method
