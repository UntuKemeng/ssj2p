.class Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl$Border;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierWindow"
.end annotation


# instance fields
.field private mChangeHeight:I

.field private mChangeWidth:I

.field private mCloseHeight:I

.field private mCloseWidth:I

.field private mHandleHeight:I

.field private mHandleWidth:I

.field private mPadHeight:I

.field private mPadWidth:I

.field final synthetic this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;


# direct methods
.method public constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;IIIII)V
    .locals 0
    .param p2, "mPadWidth"    # I
    .param p3, "mPadHeight"    # I
    .param p4, "mCloseWidth"    # I
    .param p5, "mHandleWidth"    # I
    .param p6, "mHandleHeight"    # I

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    iput p2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadWidth:I

    .line 1126
    iput p3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadHeight:I

    .line 1127
    iput p4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseWidth:I

    .line 1128
    iput p4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseHeight:I

    .line 1129
    iput p4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mChangeWidth:I

    .line 1130
    iput p4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mChangeHeight:I

    .line 1131
    iput p5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleWidth:I

    .line 1132
    iput p6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleHeight:I

    .line 1133
    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 1115
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadWidth:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 1115
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadHeight:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 1115
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseWidth:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 1115
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseHeight:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 1115
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleWidth:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 1115
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleHeight:I

    return v0
.end method
