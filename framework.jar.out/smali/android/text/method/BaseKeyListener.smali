.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/BaseKeyListener$1;
    }
.end annotation


# static fields
.field static final OLD_SEL_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    return-void
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;
    .param p5, "isForwardDelete"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    and-int/lit16 v7, v7, -0x70f4

    invoke-static {v7}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v6, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_3

    move v2, v5

    .local v2, "isCtrlActive":Z
    :goto_1
    invoke-static {p2, v5, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v7

    if-ne v7, v5, :cond_4

    move v3, v5

    .local v3, "isShiftActive":Z
    :goto_2
    const/4 v7, 0x2

    invoke-static {p2, v7, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v7

    if-ne v7, v5, :cond_5

    move v1, v5

    .local v1, "isAltActive":Z
    :goto_3
    if-eqz v2, :cond_6

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result v6

    goto :goto_0

    .end local v1    # "isAltActive":Z
    .end local v2    # "isCtrlActive":Z
    .end local v3    # "isShiftActive":Z
    :cond_3
    move v2, v6

    goto :goto_1

    .restart local v2    # "isCtrlActive":Z
    :cond_4
    move v3, v6

    goto :goto_2

    .restart local v3    # "isShiftActive":Z
    :cond_5
    move v1, v6

    goto :goto_3

    .restart local v1    # "isAltActive":Z
    :cond_6
    if-eqz v1, :cond_7

    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v6, v5

    goto :goto_0

    :cond_7
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .local v4, "start":I
    if-eqz p5, :cond_8

    invoke-static {p2, v4}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v0

    .local v0, "end":I
    :goto_4
    if-eq v4, v0, :cond_0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {p2, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    move v6, v5

    goto :goto_0

    .end local v0    # "end":I
    :cond_8
    invoke-static {p2, v4}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .restart local v0    # "end":I
    goto :goto_4
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    .prologue
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .local v3, "start":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .local v0, "end":I
    if-eq v0, v3, :cond_0

    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v4, 0x1

    .end local v0    # "end":I
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "start":I
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    .prologue
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, "selectionEnd":I
    if-ge v0, v1, :cond_0

    move v2, v0

    .local v2, "temp":I
    move v0, v1

    move v1, v2

    .end local v2    # "temp":I
    :cond_0
    if-eq v1, v0, :cond_1

    invoke-interface {p2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "isForwardDelete"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, "currentCursorOffset":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-eq v0, v5, :cond_1

    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return v4

    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    if-nez p3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v5

    if-eq v0, v5, :cond_0

    :cond_3
    const/4 v3, 0x0

    .local v3, "wordIterator":Landroid/text/method/WordIterator;
    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v3

    :cond_4
    if-nez v3, :cond_5

    new-instance v3, Landroid/text/method/WordIterator;

    .end local v3    # "wordIterator":Landroid/text/method/WordIterator;
    invoke-direct {v3}, Landroid/text/method/WordIterator;-><init>()V

    .restart local v3    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_5
    if-eqz p3, :cond_7

    move v1, v0

    .local v1, "deleteFrom":I
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, p2, v1, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->following(I)I

    move-result v2

    .local v2, "deleteTo":I
    if-ne v2, v6, :cond_6

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v2

    :cond_6
    :goto_1
    invoke-interface {p2, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v4, 0x1

    goto :goto_0

    .end local v1    # "deleteFrom":I
    .end local v2    # "deleteTo":I
    :cond_7
    move v2, v0

    .restart local v2    # "deleteTo":I
    invoke-virtual {v3, p2, v4, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v1

    .restart local v1    # "deleteFrom":I
    if-ne v1, v6, :cond_6

    const/4 v1, 0x0

    goto :goto_1
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3
    .param p0, "caps"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p1, "autoText"    # Z

    .prologue
    const/4 v0, 0x1

    .local v0, "contentType":I
    sget-object v1, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz p1, :cond_0

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_0
    return v0

    :pswitch_0
    or-int/lit16 v0, v0, 0x1000

    goto :goto_0

    :pswitch_1
    or-int/lit16 v0, v0, 0x2000

    goto :goto_0

    :pswitch_2
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    sparse-switch p3, :sswitch_data_0

    const/4 v0, 0x0

    .local v0, "handled":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .end local v0    # "handled":Z
    :sswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .restart local v0    # "handled":Z
    goto :goto_0

    .end local v0    # "handled":Z
    :sswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .restart local v0    # "handled":Z
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, "selectionEnd":I
    if-ge v0, v1, :cond_2

    move v2, v0

    .local v2, "temp":I
    move v0, v1

    move v1, v2

    .end local v2    # "temp":I
    :cond_2
    if-ltz v1, :cond_3

    if-gez v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    invoke-static {p2, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    .local v3, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    invoke-interface {p2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v4, 0x1

    goto :goto_0
.end method
