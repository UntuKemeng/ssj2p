.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->createPopupCue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V
    .locals 0

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x1c2

    const-wide/16 v6, 0x15e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1517
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1518
    .local v0, "action":I
    if-nez v0, :cond_6

    .line 1519
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1520
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/writingbuddy/PopupCue;->switchCueButton(Z)V

    .line 1523
    :cond_0
    if-eqz p1, :cond_1

    .line 1524
    invoke-virtual {p1, v4}, Landroid/view/View;->playSoundEffect(I)V

    .line 1527
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1530
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1532
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->checkWritingBuddyServcie()Z
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$200(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1533
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1534
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z
    invoke-static {v2, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$300(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    .line 1535
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # setter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsWaitingHideSoftInput:Z
    invoke-static {v2, v5}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$402(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    .line 1536
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 1537
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1577
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    :goto_0
    return v4

    .line 1544
    .restart local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Can not find IMM 1 "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->showWritingBuddy()Z
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$500(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z

    .line 1546
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$2;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1553
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->checkUseSamsungIME()Z
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$600(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1554
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z
    invoke-static {v2, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$300(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    .line 1555
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # setter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsWaitingHideSoftInput:Z
    invoke-static {v2, v5}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$402(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    .line 1556
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 1557
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$3;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1564
    :cond_5
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Can not find IMM 2 "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->showWritingBuddy()Z
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$500(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z

    .line 1566
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$4;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1574
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    if-ne v0, v5, :cond_2

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$700(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1575
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z
    invoke-static {v2, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$300(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    goto :goto_0
.end method
