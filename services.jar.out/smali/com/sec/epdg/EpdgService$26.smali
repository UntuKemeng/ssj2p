.class Lcom/sec/epdg/EpdgService$26;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$26;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->setIsWifiRssiInPollingZone(Z)V
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$11700(Z)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgService$26;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isEpdgAvailabilityRecommended()Z
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$11800(Lcom/sec/epdg/EpdgService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    :cond_0
    # invokes: Lcom/sec/epdg/EpdgService;->stopWifiRssiIntentDelayTimerIfRequired()V
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$7900()V

    return-void
.end method
