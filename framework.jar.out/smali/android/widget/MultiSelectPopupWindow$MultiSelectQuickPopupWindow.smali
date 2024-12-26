.class Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectQuickPopupWindow"
.end annotation


# static fields
.field private static final COPY:I = 0x1

.field private static final DICTIONARY:I = 0x3

.field private static final SELECTALL:I = 0x0

.field private static final SHARE:I = 0x2

.field private static final TRANSLATE:I = 0x4

.field private static final TW_POPUP_TEXT_LAYOUT:I = 0x1090161


# instance fields
.field private MAX_ITEMS_LANDSCAPE_PHONE:I

.field private MAX_ITEMS_LANDSCAPE_TABLET:I

.field private MAX_ITEMS_PORTRAIT_PHONE:I

.field private MAX_ITEMS_PORTRAIT_TABLET:I

.field private final TOTAL_ITEMS:I

.field private mActionBarHeight:I

.field private mContentView:Landroid/view/ViewGroup;

.field private mExtraItemWidth:I

.field private mHandlerHeight:I

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field mIconDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTablet:Z

.field private mItemWidth:I

.field private mMaxShowingMenuCount:I

.field mMenuEnables:[Z

.field private mMenuItemCount:I

.field mMenuTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupBgPaddingHeight:I

.field private mPopupBgPaddingWidth:I

.field private mPopupHeight:I

.field private mPopupMaxWidth:I

.field private mPopupWidth:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field private mStatusbarHeight:I

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 173
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->TOTAL_ITEMS:I

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIsTablet:Z

    .line 164
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuEnables:[Z

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    .line 174
    # invokes: Landroid/widget/MultiSelectPopupWindow;->isTablet()Z
    invoke-static {p1}, Landroid/widget/MultiSelectPopupWindow;->access$000(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIsTablet:Z

    .line 175
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->createPopupWindow()V

    .line 177
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 178
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 180
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->initContentView()V

    .line 181
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setHeight()V

    .line 182
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 183
    return-void

    .line 164
    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private calculatePopupWindowWidth()V
    .locals 4

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "currentMenuCount":I
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    .line 295
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 296
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuEnables:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_3

    .line 297
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    .line 298
    add-int/lit8 v0, v0, 0x1

    .line 300
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getPopupWidthLimit()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 301
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    .line 302
    add-int/lit8 v0, v0, -0x1

    .line 311
    :cond_0
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    if-ge v0, v2, :cond_1

    .line 312
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mExtraItemWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    .line 315
    :cond_1
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    .line 316
    return-void

    .line 307
    :cond_2
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMenuLimit()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 295
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private computeLocalPosition()V
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->measureContent()V

    .line 342
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 343
    .local v0, "position":[I
    invoke-direct {p0, v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMultiSelectQuickPopupPosition([I)V

    .line 344
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    .line 345
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    .line 346
    return-void
.end method

.method private createPopupWindow()V
    .locals 5

    .prologue
    .line 202
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a62

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 203
    .local v0, "bgRes":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 204
    .local v1, "bgResPadding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 205
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    .line 206
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingHeight:I

    .line 207
    const/4 v1, 0x0

    .line 209
    new-instance v2, Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 210
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 211
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    return-void
.end method

.method private getMenuLimit()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 322
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 323
    .local v0, "isPortrait":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIsTablet:Z

    if-eqz v1, :cond_2

    .line 324
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_PORTRAIT_TABLET:I

    .line 326
    :goto_1
    return v1

    .line 322
    .end local v0    # "isPortrait":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 324
    .restart local v0    # "isPortrait":Z
    :cond_1
    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_LANDSCAPE_TABLET:I

    goto :goto_1

    .line 326
    :cond_2
    if-eqz v0, :cond_3

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_PORTRAIT_PHONE:I

    goto :goto_1

    :cond_3
    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_LANDSCAPE_PHONE:I

    goto :goto_1
.end method

.method private getMultiSelectQuickPopupPosition([I)V
    .locals 38
    .param p1, "position"    # [I

    .prologue
    .line 479
    if-nez p1, :cond_0

    .line 480
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 p1, v0

    .line 483
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    .line 484
    .local v12, "menuItemCount":I
    const/4 v13, 0x0

    .line 486
    .local v13, "menuLimit":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_e

    .line 487
    const/4 v13, 0x4

    .line 492
    :goto_0
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v30

    .line 493
    .local v30, "text":Ljava/lang/CharSequence;
    if-nez v30, :cond_1

    .line 494
    const-string v34, "MultiSelectPopupWindow"

    const-string v35, "getTextFormultiSelection() text is null"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_1
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 498
    .local v18, "screen":[I
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v33, v0

    .line 499
    .local v33, "window":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 500
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 501
    const/16 v34, 0x0

    aget v34, v18, v34

    const/16 v35, 0x0

    aget v35, v33, v35

    sub-int v16, v34, v35

    .line 502
    .local v16, "parentViewPositionX":I
    const/16 v34, 0x1

    aget v34, v18, v34

    const/16 v35, 0x1

    aget v35, v33, v35

    sub-int v17, v34, v35

    .line 503
    .local v17, "parentViewPositionY":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v32

    .line 504
    .local v32, "viewportToContentVerticalOffset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v31

    .line 505
    .local v31, "viewportToContentHorizontalOffset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    .line 506
    .local v22, "screenWidth":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    .line 507
    .local v20, "screenHeight":I
    move/from16 v8, v20

    .line 508
    .local v8, "fullScreenHeight":I
    const/16 v21, 0x0

    .line 509
    .local v21, "screenTop":I
    move/from16 v19, v20

    .line 510
    .local v19, "screenBottom":I
    invoke-static/range {v30 .. v30}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v24

    .line 511
    .local v24, "selStart":I
    invoke-static/range {v30 .. v30}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v23

    .line 512
    .local v23, "selEnd":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v26

    .line 513
    .local v26, "startLine":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 514
    .local v4, "endLine":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v28, v34, v32

    .line 515
    .local v28, "startLineTop":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v27, v34, v32

    .line 516
    .local v27, "startLineBottom":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v6, v34, v32

    .line 517
    .local v6, "endLineTop":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v5, v34, v32

    .line 518
    .local v5, "endLineBottom":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v34

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    const/16 v35, 0x0

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v29, v34, v31

    .line 519
    .local v29, "startX":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v34

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    const/16 v35, 0x0

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v7, v34, v31

    .line 520
    .local v7, "endX":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/text/Layout;->getWidth()I

    move-result v11

    .line 521
    .local v11, "maxWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mActionBarHeight:I

    .line 522
    .local v2, "actionBarHeight":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHandlerHeight:I

    .line 523
    .local v9, "handlerHeight":I
    const/4 v10, 0x1

    .line 524
    .local v10, "isStatusBarVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    .line 527
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 531
    :goto_1
    if-nez v10, :cond_2

    .line 532
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    .line 535
    :cond_2
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->isMultiWindow()Z

    move-result v34

    if-eqz v34, :cond_6

    .line 536
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    const-string/jumbo v35, "multiwindow_facade"

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 537
    .local v15, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v25

    .line 538
    .local v25, "stackBoxBound":Landroid/graphics/Rect;
    if-eqz v25, :cond_3

    .line 539
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 540
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    .line 541
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v20

    .line 544
    :cond_3
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v34

    if-eqz v34, :cond_4

    .line 545
    const/16 v21, 0x0

    .line 548
    :cond_4
    const/16 v34, 0x1

    aget v34, v18, v34

    move/from16 v0, v34

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    const/16 v34, 0x1

    aget v34, v18, v34

    move/from16 v0, v34

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    :cond_5
    const/16 v34, 0x1

    aget v34, v18, v34

    if-lez v34, :cond_6

    const/16 v34, 0x1

    aget v34, v18, v34

    move/from16 v0, v34

    if-ge v0, v8, :cond_6

    .line 549
    const/16 v21, 0x0

    .line 550
    move/from16 v19, v8

    .line 554
    .end local v15    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v25    # "stackBoxBound":Landroid/graphics/Rect;
    :cond_6
    move/from16 v0, v26

    if-ne v0, v4, :cond_f

    .line 555
    const/16 v34, 0x0

    sub-int v35, v7, v29

    div-int/lit8 v35, v35, 0x2

    add-int v35, v35, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    aput v35, p1, v34

    .line 560
    :goto_2
    const/16 v34, 0x0

    aget v34, p1, v34

    if-gez v34, :cond_11

    .line 561
    const/16 v34, 0x0

    aget v34, p1, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_10

    .line 562
    const/16 v34, 0x0

    aget v35, p1, v34

    const/16 v36, 0x0

    aget v36, p1, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(I)I

    move-result v36

    sub-int v36, v36, v16

    add-int v35, v35, v36

    aput v35, p1, v34

    .line 567
    :cond_7
    :goto_3
    const/16 v34, 0x0

    aget v34, p1, v34

    if-gez v34, :cond_8

    .line 568
    const/16 v34, 0x0

    const/16 v35, 0x0

    aput v35, p1, v34

    .line 569
    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 570
    const/16 v34, 0x0

    aget v35, p1, v34

    const/16 v36, 0x0

    aget v36, p1, v36

    add-int v36, v36, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v37, v0

    add-int v36, v36, v37

    sub-int v36, v36, v22

    sub-int v35, v35, v36

    aput v35, p1, v34

    .line 577
    :cond_8
    :goto_4
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    sub-int v35, v28, v35

    aput v35, p1, v34

    .line 579
    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    move/from16 v35, v0

    add-int v35, v35, v2

    add-int v35, v35, v21

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_9

    .line 580
    const/16 v34, 0x1

    add-int v35, v5, v9

    aput v35, p1, v34

    .line 583
    :cond_9
    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    .line 584
    move/from16 v0, v19

    if-le v5, v0, :cond_12

    move/from16 v14, v19

    .line 585
    .local v14, "middlePosition":I
    :goto_5
    if-gez v27, :cond_a

    .line 586
    const/16 v27, 0x0

    .line 588
    :cond_a
    add-int v34, v27, v9

    sub-int v34, v14, v34

    div-int/lit8 v14, v34, 0x2

    .line 589
    add-int v34, v27, v9

    sub-int v34, v5, v34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_13

    .line 590
    const/16 v34, 0x1

    add-int v35, v27, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v36, v14, v36

    add-int v35, v35, v36

    aput v35, p1, v34

    .line 596
    .end local v14    # "middlePosition":I
    :cond_b
    :goto_6
    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v17

    move/from16 v0, v34

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 597
    :cond_c
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    sub-int v35, v19, v35

    aput v35, p1, v34

    .line 598
    const/16 v34, 0x1

    aget v35, p1, v34

    sub-int v35, v35, v21

    aput v35, p1, v34

    .line 600
    :cond_d
    return-void

    .line 489
    .end local v2    # "actionBarHeight":I
    .end local v4    # "endLine":I
    .end local v5    # "endLineBottom":I
    .end local v6    # "endLineTop":I
    .end local v7    # "endX":I
    .end local v8    # "fullScreenHeight":I
    .end local v9    # "handlerHeight":I
    .end local v10    # "isStatusBarVisible":Z
    .end local v11    # "maxWidth":I
    .end local v16    # "parentViewPositionX":I
    .end local v17    # "parentViewPositionY":I
    .end local v18    # "screen":[I
    .end local v19    # "screenBottom":I
    .end local v20    # "screenHeight":I
    .end local v21    # "screenTop":I
    .end local v22    # "screenWidth":I
    .end local v23    # "selEnd":I
    .end local v24    # "selStart":I
    .end local v26    # "startLine":I
    .end local v27    # "startLineBottom":I
    .end local v28    # "startLineTop":I
    .end local v29    # "startX":I
    .end local v30    # "text":Ljava/lang/CharSequence;
    .end local v31    # "viewportToContentHorizontalOffset":I
    .end local v32    # "viewportToContentVerticalOffset":I
    .end local v33    # "window":[I
    :cond_e
    const/4 v13, 0x6

    goto/16 :goto_0

    .line 528
    .restart local v2    # "actionBarHeight":I
    .restart local v4    # "endLine":I
    .restart local v5    # "endLineBottom":I
    .restart local v6    # "endLineTop":I
    .restart local v7    # "endX":I
    .restart local v8    # "fullScreenHeight":I
    .restart local v9    # "handlerHeight":I
    .restart local v10    # "isStatusBarVisible":Z
    .restart local v11    # "maxWidth":I
    .restart local v16    # "parentViewPositionX":I
    .restart local v17    # "parentViewPositionY":I
    .restart local v18    # "screen":[I
    .restart local v19    # "screenBottom":I
    .restart local v20    # "screenHeight":I
    .restart local v21    # "screenTop":I
    .restart local v22    # "screenWidth":I
    .restart local v23    # "selEnd":I
    .restart local v24    # "selStart":I
    .restart local v26    # "startLine":I
    .restart local v27    # "startLineBottom":I
    .restart local v28    # "startLineTop":I
    .restart local v29    # "startX":I
    .restart local v30    # "text":Ljava/lang/CharSequence;
    .restart local v31    # "viewportToContentHorizontalOffset":I
    .restart local v32    # "viewportToContentVerticalOffset":I
    .restart local v33    # "window":[I
    :catch_0
    move-exception v3

    .line 529
    .local v3, "e":Landroid/os/RemoteException;
    const-string v34, "MultiSelectPopupWindow"

    const-string v35, "Remote exception while to check isStatusBarVisible"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 557
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_f
    const/16 v34, 0x0

    const/16 v35, 0x0

    aget v35, v33, v35

    div-int/lit8 v36, v11, 0x2

    add-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    aput v35, p1, v34

    goto/16 :goto_2

    .line 563
    :cond_10
    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    .line 564
    const/16 v34, 0x0

    aget v35, p1, v34

    const/16 v36, 0x0

    aget v36, p1, v36

    add-int v36, v36, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v37, v0

    add-int v36, v36, v37

    sub-int v36, v36, v22

    sub-int v35, v35, v36

    aput v35, p1, v34

    goto/16 :goto_3

    .line 573
    :cond_11
    const/16 v34, 0x0

    aget v34, p1, v34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    add-int v34, v34, v16

    move/from16 v0, v34

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 574
    const/16 v34, 0x0

    aget v35, p1, v34

    const/16 v36, 0x0

    aget v36, p1, v36

    add-int v36, v36, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v37, v0

    add-int v36, v36, v37

    sub-int v36, v36, v22

    sub-int v35, v35, v36

    aput v35, p1, v34

    goto/16 :goto_4

    :cond_12
    move v14, v5

    .line 584
    goto/16 :goto_5

    .line 592
    .restart local v14    # "middlePosition":I
    :cond_13
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    sub-int v35, v19, v35

    aput v35, p1, v34

    goto/16 :goto_6
.end method

.method private getPopupWidthLimit()I
    .locals 2

    .prologue
    .line 331
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMenuLimit()I

    move-result v0

    .line 332
    .local v0, "items":I
    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    mul-int/2addr v1, v0

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupMaxWidth:I

    .line 334
    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupMaxWidth:I

    return v1
.end method

.method private getTextOffset()I
    .locals 3

    .prologue
    .line 467
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 468
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 469
    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private initContentView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 218
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_PORTRAIT_PHONE:I

    .line 219
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_LANDSCAPE_PHONE:I

    .line 220
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_PORTRAIT_TABLET:I

    .line 221
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_LANDSCAPE_TABLET:I

    .line 223
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050263

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    .line 224
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105026d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mExtraItemWidth:I

    .line 226
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 227
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 228
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 229
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 230
    iput-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 231
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v4, Landroid/widget/HorizontalScrollView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 234
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v7}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 237
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a67

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a5d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a68

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a5f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a69

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_0

    .line 244
    const v4, 0x1090161

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 245
    .local v3, "t":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8, v4, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 246
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 248
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v3    # "t":Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 253
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 254
    return-void
.end method

.method private setHeight()V
    .locals 7

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 453
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroid/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 454
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mActionBarHeight:I

    .line 455
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHandlerHeight:I

    .line 456
    const/high16 v2, 0x41c80000    # 25.0f

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    .line 457
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private updateMultiSelectQuickPopupPosition()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 360
    new-array v4, v5, [I

    .line 361
    .local v4, "window":[I
    new-array v3, v5, [I

    .line 362
    .local v3, "screen":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 363
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 364
    aget v5, v3, v9

    aget v6, v4, v9

    sub-int v1, v5, v6

    .line 365
    .local v1, "gapX":I
    aget v5, v3, v7

    aget v6, v4, v7

    sub-int v2, v5, v6

    .line 367
    .local v2, "gapY":I
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 368
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_1

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 369
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 370
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 372
    :cond_0
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    .line 373
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    .line 375
    :cond_1
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v6, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 397
    :goto_0
    return-void

    .line 377
    :cond_2
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_4

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_4

    .line 378
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 379
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 380
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 383
    :cond_3
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    .line 384
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    .line 385
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    .line 388
    :cond_4
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 390
    :try_start_0
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v9, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 393
    const-string v5, "MultiSelectPopupWindow"

    const-string/jumbo v6, "showAtLocation occur BadTokenException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 437
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$600(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V

    .line 438
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 352
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 353
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 354
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 416
    const/4 v0, 0x0

    .line 418
    .local v0, "id":I
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 419
    const v0, 0x102005d

    .line 429
    :cond_0
    :goto_0
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->onMultiSelectMenuItem(I)Z

    .line 430
    return-void

    .line 420
    :cond_1
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 421
    const v0, 0x102005e

    goto :goto_0

    .line 422
    :cond_2
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 423
    const v0, 0x1020061

    goto :goto_0

    .line 424
    :cond_3
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 425
    const v0, 0x102005f

    goto :goto_0

    .line 426
    :cond_4
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 427
    const v0, 0x1020060

    goto :goto_0
.end method

.method public refreshResource()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x104000d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 187
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1040001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1040466

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x10409dc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x10409de

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 193
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setHeight()V

    .line 196
    return-void
.end method

.method public relocateMultiSelectQuickPopupWindow(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 403
    if-ltz p1, :cond_0

    .line 404
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    .line 405
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->calculatePopupWindowWidth()V

    .line 406
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 407
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    .line 409
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 260
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->refreshResource()V

    .line 262
    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    .line 264
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuEnables:[Z

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isSelectAllEnable()Z
    invoke-static {v2}, Landroid/widget/MultiSelectPopupWindow;->access$200(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v2

    aput-boolean v2, v1, v4

    .line 265
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuEnables:[Z

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isShareViaEnable()Z
    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->access$300(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 266
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuEnables:[Z

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isDictionaryEnable()Z
    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 267
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuEnables:[Z

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isTranslatorEnable()Z
    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->access$500(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 270
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuEnables:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 271
    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    .line 272
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 278
    :cond_1
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->calculatePopupWindowWidth()V

    .line 280
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    .line 282
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 284
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    .line 286
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v1}, Landroid/widget/MultiSelectPopupWindow;->access$600(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;Z)V

    .line 288
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    .line 289
    return-void
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 605
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getTextOffset()I

    move-result v1

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->access$700(Landroid/widget/MultiSelectPopupWindow;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    if-eqz p4, :cond_0

    .line 607
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    .line 608
    :cond_0
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    .line 610
    :cond_1
    return-void
.end method
