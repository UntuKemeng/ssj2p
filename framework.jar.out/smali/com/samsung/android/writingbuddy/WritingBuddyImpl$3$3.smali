.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$3;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;)V
    .locals 0

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$3;->this$1:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$3;->this$1:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsWaitingHideSoftInput:Z
    invoke-static {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$402(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    .line 1560
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$3;->this$1:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->showWritingBuddy()Z
    invoke-static {v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$500(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z

    .line 1561
    return-void
.end method