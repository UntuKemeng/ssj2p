.class Lcom/sec/epdg/EpdgTimers$EpdgTimer;
.super Landroid/os/CountDownTimer;
.source "EpdgTimers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgTimers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgTimer"
.end annotation


# instance fields
.field private mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field final synthetic this$0:Lcom/sec/epdg/EpdgTimers;


# direct methods
.method protected constructor <init>(Lcom/sec/epdg/EpdgTimers;Lcom/sec/epdg/EpdgTimers$EpdgTimerType;JJ)V
    .locals 1
    .param p2, "timerType"    # Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    .param p3, "millisInFuture"    # J
    .param p5, "countDownInterval"    # J

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->this$0:Lcom/sec/epdg/EpdgTimers;

    invoke-direct {p0, p3, p4, p5, p6}, Landroid/os/CountDownTimer;-><init>(JJ)V

    sget-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    iput-object v0, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    iput-object p2, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    return-void
.end method


# virtual methods
.method protected getTimerType()Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    return-object v0
.end method

.method public onFinish()V
    .locals 4

    .prologue
    const-string v1, "[EPDGTimers]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timer finished"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .local v0, "timerType":Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    iput-object v1, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    iget-object v1, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->this$0:Lcom/sec/epdg/EpdgTimers;

    # invokes: Lcom/sec/epdg/EpdgTimers;->onTimerFinished(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V
    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgTimers;->access$000(Lcom/sec/epdg/EpdgTimers;Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "millisUntilFinished"    # J

    .prologue
    const-string v0, "[EPDGTimers]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timer tick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
