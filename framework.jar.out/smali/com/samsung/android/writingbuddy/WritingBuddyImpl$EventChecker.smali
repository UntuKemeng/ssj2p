.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventChecker"
.end annotation


# static fields
.field static action:I

.field static x:F

.field static y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 2783
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->action:I

    .line 2784
    sput v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->x:F

    .line 2785
    sput v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->y:F

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 2781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDuplicated(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 2788
    if-nez p0, :cond_0

    .line 2789
    const/4 v4, -0x1

    sput v4, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->action:I

    .line 2803
    :goto_0
    return v3

    .line 2793
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2794
    .local v0, "newAction":I
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2795
    .local v1, "newX":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2797
    .local v2, "newY":F
    sget v4, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->action:I

    if-ne v0, v4, :cond_1

    sget v4, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->x:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    sget v4, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->y:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_2

    .line 2798
    :cond_1
    sput v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->action:I

    .line 2799
    sput v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->x:F

    .line 2800
    sput v2, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->y:F

    goto :goto_0

    .line 2803
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method
