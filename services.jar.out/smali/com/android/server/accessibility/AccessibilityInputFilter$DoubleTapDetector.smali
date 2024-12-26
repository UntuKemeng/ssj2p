.class Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;
.super Ljava/lang/Object;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapDetector"
.end annotation


# instance fields
.field private final MSG_PERFORM_SINGLE_TAP:I

.field private final STATE_DETECTION:I

.field private final STATE_READY:I

.field private TAP_TIMEOUT_WITH_CORRECTION:I

.field private currentKeyCode:I

.field private firstKeyCode:I

.field private isFirstTapDone:Z

.field private mContext:Landroid/content/Context;

.field private mDetectionState:I

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 723
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->STATE_READY:I

    .line 727
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->STATE_DETECTION:I

    .line 732
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mDetectionState:I

    .line 736
    const/16 v0, 0xe6

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->TAP_TIMEOUT_WITH_CORRECTION:I

    .line 739
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->isFirstTapDone:Z

    .line 742
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->firstKeyCode:I

    .line 745
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->currentKeyCode:I

    .line 748
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->MSG_PERFORM_SINGLE_TAP:I

    .line 751
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter;Lcom/android/server/accessibility/AccessibilityInputFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;
    .param p2, "x1"    # Lcom/android/server/accessibility/AccessibilityInputFilter$1;

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->performSingleTap()V

    return-void
.end method

.method private performSingleTap()V
    .locals 2

    .prologue
    .line 819
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->currentKeyCode:I

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->firstKeyCode:I

    .line 820
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->firstKeyCode:I

    sparse-switch v0, :sswitch_data_0

    .line 831
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->clear()V

    .line 832
    return-void

    .line 822
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mContext:Landroid/content/Context;

    const v1, 0x1040800

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->talkbackKeyFeedback(Ljava/lang/String;)V

    goto :goto_0

    .line 825
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mContext:Landroid/content/Context;

    const v1, 0x1040801

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->talkbackKeyFeedback(Ljava/lang/String;)V

    goto :goto_0

    .line 828
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mContext:Landroid/content/Context;

    const v1, 0x1040802

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->talkbackKeyFeedback(Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
        0xbb -> :sswitch_2
    .end sparse-switch
.end method

.method private talkbackKeyFeedback(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 842
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 843
    .local v0, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 844
    .local v1, "mTalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    const-string v2, "com.android.server.accessibility"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 846
    const-string v2, "AccessibilityInputFilter"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 847
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 848
    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 851
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 811
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mDetectionState:I

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->isFirstTapDone:Z

    .line 813
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 814
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mContext:Landroid/content/Context;

    .line 855
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->clear()V

    .line 856
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 765
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 766
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 771
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->isFirstTapDone:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mDetectionState:I

    if-ne v1, v4, :cond_0

    .line 772
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mDetectionState:I

    goto :goto_0

    .line 778
    :pswitch_1
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mDetectionState:I

    if-eq v1, v4, :cond_0

    .line 784
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->isFirstTapDone:Z

    if-nez v1, :cond_1

    .line 785
    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->isFirstTapDone:Z

    .line 786
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->currentKeyCode:I

    .line 787
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 788
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->TAP_TIMEOUT_WITH_CORRECTION:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 795
    :cond_1
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->firstKeyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 796
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->clear()V

    goto :goto_0

    .line 798
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->isFirstTapDone:Z

    .line 799
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->currentKeyCode:I

    .line 800
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 801
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->TAP_TIMEOUT_WITH_CORRECTION:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 766
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readyToPerform(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 835
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->firstKeyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->isFirstTapDone:Z

    if-eqz v0, :cond_0

    .line 836
    const/4 v0, 0x1

    .line 838
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->clear()V

    .line 860
    return-void
.end method
