.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private mDirLTR:Z

.field private mEndCurPosition:I

.field private mIsSelectableTextView:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mStartCurPosition:I

.field private mStartX:F

.field private mStartY:F

.field private mThisView:Landroid/widget/TextView;

.field private oldEndPos:I

.field private selectRange:[I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 13274
    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13261
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    .line 13262
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 13263
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    .line 13264
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 13265
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 13266
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 13267
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    .line 13269
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 13270
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 13271
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 13272
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    .line 13275
    iput-object p2, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    .line 13276
    return-void
.end method

.method static synthetic access$4400(Landroid/widget/TextView$StylusEventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView$StylusEventListener;

    .prologue
    .line 13260
    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return v0
.end method

.method static synthetic access$4402(Landroid/widget/TextView$StylusEventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView$StylusEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 13260
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return p1
.end method

.method static synthetic access$4500(Landroid/widget/TextView$StylusEventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView$StylusEventListener;

    .prologue
    .line 13260
    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return v0
.end method

.method static synthetic access$4502(Landroid/widget/TextView$StylusEventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView$StylusEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 13260
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return p1
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "clipboardId"    # I

    .prologue
    .line 13280
    return-void
.end method
