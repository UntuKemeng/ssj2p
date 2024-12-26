.class Landroid/widget/TextView$TouchMonitorListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchMonitorListener"
.end annotation


# instance fields
.field private final globalTimeForTouch:I

.field private mPressTime:J

.field private mStartX:F

.field private mStartY:F

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 13052
    iput-object p1, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13053
    iput v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    .line 13054
    iput v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    .line 13055
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/TextView$TouchMonitorListener;->globalTimeForTouch:I

    .line 13056
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/TextView;
    .param p2, "x1"    # Landroid/widget/TextView$1;

    .prologue
    .line 13052
    invoke-direct {p0, p1}, Landroid/widget/TextView$TouchMonitorListener;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 13062
    return-void
.end method
