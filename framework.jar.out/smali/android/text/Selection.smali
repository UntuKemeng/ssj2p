.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$1;,
        Landroid/text/Selection$END;,
        Landroid/text/Selection$START;,
        Landroid/text/Selection$PositionIterator;
    }
.end annotation


# static fields
.field public static final SELECTION_END:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 515
    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 516
    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseHorizontal(Landroid/text/Layout;III)I
    .locals 7
    .param p0, "layout"    # Landroid/text/Layout;
    .param p1, "direction"    # I
    .param p2, "off1"    # I
    .param p3, "off2"    # I

    .prologue
    .line 467
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 468
    .local v3, "line1":I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 470
    .local v4, "line2":I
    if-ne v3, v4, :cond_3

    .line 473
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 474
    .local v0, "h1":F
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 476
    .local v1, "h2":F
    if-gez p1, :cond_2

    .line 479
    cmpg-float v6, v0, v1

    if-gez v6, :cond_1

    .line 504
    .end local v0    # "h1":F
    .end local v1    # "h2":F
    .end local p2    # "off1":I
    :cond_0
    :goto_0
    return p2

    .restart local v0    # "h1":F
    .restart local v1    # "h2":F
    .restart local p2    # "off1":I
    :cond_1
    move p2, p3

    .line 482
    goto :goto_0

    .line 486
    :cond_2
    cmpl-float v6, v0, v1

    if-gtz v6, :cond_0

    move p2, p3

    .line 489
    goto :goto_0

    .line 498
    .end local v0    # "h1":F
    .end local v1    # "h2":F
    :cond_3
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 499
    .local v2, "line":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 501
    .local v5, "textdir":I
    if-ne v5, p1, :cond_4

    .line 502
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    .line 504
    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public static extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v6, 0x1

    .line 332
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 333
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 335
    .local v2, "line":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2

    .line 338
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 340
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 341
    .local v1, "h":F
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 346
    .end local v1    # "h":F
    .local v3, "move":I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 353
    .end local v3    # "move":I
    :cond_0
    :goto_1
    return v6

    .line 343
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3    # "move":I
    goto :goto_0

    .line 348
    .end local v3    # "move":I
    :cond_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 349
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_1
.end method

.method public static extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v2, 0x1

    .line 361
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 362
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 364
    .local v1, "to":I
    if-eq v1, v0, :cond_0

    .line 365
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 369
    :cond_0
    return v2
.end method

.method public static extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v2, 0x1

    .line 377
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 378
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 380
    .local v1, "to":I
    if-eq v1, v0, :cond_0

    .line 381
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 385
    :cond_0
    return v2
.end method

.method public static final extendSelection(Landroid/text/Spannable;I)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "index"    # I

    .prologue
    .line 142
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 143
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 144
    :cond_0
    return-void
.end method

.method public static extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 389
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 390
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 391
    const/4 v1, 0x1

    return v1
.end method

.method public static extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v1, 0x1

    .line 395
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 396
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 397
    return v1
.end method

.method public static extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v6, 0x1

    .line 303
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 304
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 306
    .local v2, "line":I
    if-lez v2, :cond_2

    .line 309
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 311
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 312
    .local v1, "h":F
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 317
    .end local v1    # "h":F
    .local v3, "move":I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 324
    .end local v3    # "move":I
    :cond_0
    :goto_1
    return v6

    .line 314
    :cond_1
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3    # "move":I
    goto :goto_0

    .line 319
    .end local v3    # "move":I
    :cond_2
    if-eqz v0, :cond_0

    .line 320
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_1
.end method

.method private static findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .locals 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "dir"    # I

    .prologue
    .line 449
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 450
    .local v3, "pt":I
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 451
    .local v1, "line":I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 453
    .local v2, "pdir":I
    mul-int v4, p2, v2

    if-gez v4, :cond_1

    .line 454
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 456
    :cond_1
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 458
    .local v0, "end":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_0

    .line 461
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 50
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 53
    :goto_0
    return v0

    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 39
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 40
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 42
    :goto_0
    return v0

    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 210
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 211
    .local v6, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 213
    .local v0, "end":I
    if-eq v6, v0, :cond_2

    .line 214
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 215
    .local v4, "min":I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 217
    .local v3, "max":I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 219
    if-nez v4, :cond_1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    if-ne v3, v9, :cond_1

    .line 246
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_0
    :goto_0
    return v7

    .restart local v3    # "max":I
    .restart local v4    # "min":I
    :cond_1
    move v7, v8

    .line 223
    goto :goto_0

    .line 225
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_2
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 227
    .local v2, "line":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_4

    .line 230
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v7, v9, :cond_3

    .line 232
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 233
    .local v1, "h":F
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 238
    .end local v1    # "h":F
    .local v5, "move":I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 239
    goto :goto_0

    .line 235
    .end local v5    # "move":I
    :cond_3
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5    # "move":I
    goto :goto_1

    .line 240
    .end local v5    # "move":I
    :cond_4
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    if-eq v0, v9, :cond_0

    .line 241
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    invoke-static {p0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 242
    goto :goto_0
.end method

.method public static moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v3, 0x1

    .line 255
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 256
    .local v1, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 258
    .local v0, "end":I
    if-eq v1, v0, :cond_0

    .line 259
    const/4 v4, -0x1

    invoke-static {p1, v4, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 270
    :goto_0
    return v3

    .line 262
    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v2

    .line 264
    .local v2, "to":I
    if-eq v2, v0, :cond_1

    .line 265
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 270
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v3, 0x1

    .line 280
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 281
    .local v1, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 283
    .local v0, "end":I
    if-eq v1, v0, :cond_0

    .line 284
    invoke-static {p1, v3, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 295
    :goto_0
    return v3

    .line 287
    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v2

    .line 289
    .local v2, "to":I
    if-eq v2, v0, :cond_1

    .line 290
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 295
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "iter"    # Landroid/text/Selection$PositionIterator;
    .param p2, "extendSelection"    # Z

    .prologue
    .line 437
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/text/Selection$PositionIterator;->following(I)I

    move-result v0

    .line 438
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 439
    if-eqz p2, :cond_1

    .line 440
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 445
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 442
    :cond_1
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public static moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 401
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 402
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 403
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "iter"    # Landroid/text/Selection$PositionIterator;
    .param p2, "extendSelection"    # Z

    .prologue
    .line 423
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/text/Selection$PositionIterator;->preceding(I)I

    move-result v0

    .line 424
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 425
    if-eqz p2, :cond_1

    .line 426
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 431
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 428
    :cond_1
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public static moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v1, 0x1

    .line 407
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 408
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 409
    return v1
.end method

.method public static moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 164
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 165
    .local v6, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 167
    .local v0, "end":I
    if-eq v6, v0, :cond_2

    .line 168
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 169
    .local v4, "min":I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 171
    .local v3, "max":I
    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 173
    if-nez v4, :cond_1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    if-ne v3, v9, :cond_1

    .line 200
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_0
    :goto_0
    return v7

    .restart local v3    # "max":I
    .restart local v4    # "min":I
    :cond_1
    move v7, v8

    .line 177
    goto :goto_0

    .line 179
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_2
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 181
    .local v2, "line":I
    if-lez v2, :cond_4

    .line 184
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v7, v9, :cond_3

    .line 186
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 187
    .local v1, "h":F
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 192
    .end local v1    # "h":F
    .local v5, "move":I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 193
    goto :goto_0

    .line 189
    .end local v5    # "move":I
    :cond_3
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5    # "move":I
    goto :goto_1

    .line 194
    .end local v5    # "move":I
    :cond_4
    if-eqz v0, :cond_0

    .line 195
    invoke-static {p0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 196
    goto :goto_0
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 150
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 151
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 136
    return-void
.end method

.method public static final setSelection(Landroid/text/Spannable;I)V
    .locals 0
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "index"    # I

    .prologue
    .line 128
    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 129
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .locals 17
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 73
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .line 74
    .local v14, "ostart":I
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 79
    .local v13, "oend":I
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v6

    .line 80
    .local v6, "len":I
    if-lez p1, :cond_0

    move/from16 v0, p1

    if-lt v0, v6, :cond_1

    :cond_0
    if-lez p2, :cond_7

    move/from16 v0, p2

    if-ge v0, v6, :cond_7

    .line 81
    :cond_1
    const/4 v12, 0x0

    .line 83
    .local v12, "needCheckPosition":Z
    if-lez p1, :cond_3

    move/from16 v0, p1

    if-ge v0, v6, :cond_3

    .line 84
    invoke-interface/range {p0 .. p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v15

    .line 85
    .local v15, "startChar":C
    invoke-static {v15}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v15}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v15}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v15}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v15}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v15}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 87
    :cond_2
    const/4 v12, 0x1

    .line 90
    .end local v15    # "startChar":C
    :cond_3
    if-lez p2, :cond_5

    move/from16 v0, p2

    if-ge v0, v6, :cond_5

    .line 91
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v16

    .line 92
    .local v16, "stopChar":C
    if-nez v12, :cond_5

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 95
    :cond_4
    const/4 v12, 0x1

    .line 99
    .end local v16    # "stopChar":C
    :cond_5
    if-eqz v12, :cond_7

    .line 100
    new-array v10, v6, [F

    .line 101
    .local v10, "widths":[F
    new-array v4, v6, [C

    .line 102
    .local v4, "chars":[C
    new-instance v3, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 104
    .local v3, "p":Landroid/graphics/Paint;
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6, v4, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 105
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v8, v6

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    .line 107
    :goto_0
    move/from16 v0, p1

    if-ge v0, v6, :cond_6

    aget v5, v10, p1

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_6

    aget-char v5, v4, p1

    const/16 v7, 0xa

    if-eq v5, v7, :cond_6

    .line 108
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 110
    :cond_6
    :goto_1
    move/from16 v0, p2

    if-ge v0, v6, :cond_7

    aget v5, v10, p2

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_7

    aget-char v5, v4, p2

    const/16 v7, 0xa

    if-eq v5, v7, :cond_7

    .line 111
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 116
    .end local v3    # "p":Landroid/graphics/Paint;
    .end local v4    # "chars":[C
    .end local v10    # "widths":[F
    .end local v12    # "needCheckPosition":Z
    :cond_7
    move/from16 v0, p1

    if-ne v14, v0, :cond_8

    move/from16 v0, p2

    if-eq v13, v0, :cond_9

    .line 117
    :cond_8
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v7, 0x222

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p1

    invoke-interface {v0, v5, v1, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 119
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v7, 0x22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p2

    invoke-interface {v0, v5, v1, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 122
    :cond_9
    return-void
.end method
