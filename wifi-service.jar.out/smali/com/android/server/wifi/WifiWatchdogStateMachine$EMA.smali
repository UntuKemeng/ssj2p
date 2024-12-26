.class Lcom/android/server/wifi/WifiWatchdogStateMachine$EMA;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EMA"
.end annotation


# instance fields
.field private final mAlpha:D

.field private mValue:J

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)V
    .locals 2
    .param p2, "coefficient"    # D

    .prologue
    .line 7401
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$EMA;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7402
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$EMA;->mValue:J

    .line 7403
    iput-wide p2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$EMA;->mAlpha:D

    .line 7404
    return-void
.end method


# virtual methods
.method public update(J)V
    .locals 7
    .param p1, "newValue"    # J

    .prologue
    .line 7407
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 7410
    :goto_0
    return-void

    .line 7409
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$EMA;->mAlpha:D

    long-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$EMA;->mAlpha:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$EMA;->mValue:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$EMA;->mValue:J

    goto :goto_0
.end method
