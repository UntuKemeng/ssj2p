.class Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendEventToSMRunnable"
.end annotation


# instance fields
.field private mEvent:I

.field private mNetworkType:I

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;II)V
    .locals 0
    .param p2, "networkType"    # I
    .param p3, "event"    # I

    .prologue
    .line 5515
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5516
    iput p2, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mNetworkType:I

    .line 5517
    iput p3, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mEvent:I

    .line 5518
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 5522
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mEvent:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgRxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to SM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5524
    iget v3, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mNetworkType:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v0

    .line 5525
    .local v0, "cid":I
    if-gez v0, :cond_0

    .line 5526
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid cid for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5556
    :goto_0
    return-void

    .line 5530
    :cond_0
    const/4 v2, 0x0

    .line 5532
    .local v2, "msgToSM":Landroid/os/Message;
    :try_start_0
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 5538
    iget v3, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mEvent:I

    packed-switch v3, :pswitch_data_0

    .line 5543
    iget v3, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mEvent:I

    iput v3, v2, Landroid/os/Message;->what:I

    .line 5547
    :goto_1
    const/4 v3, 0x1

    if-lt v0, v3, :cond_1

    .line 5548
    const-string v3, "[IPSEC->EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event received for cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5549
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 5550
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5552
    iget-object v3, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    iget v4, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mEvent:I

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v3, v0, v4}, Lcom/sec/epdg/EpdgService;->access$5200(Lcom/sec/epdg/EpdgService;II)V

    goto :goto_0

    .line 5533
    :catch_0
    move-exception v1

    .line 5534
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHOStateMachines is null : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5540
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :pswitch_0
    const/4 v3, 0x7

    iput v3, v2, Landroid/os/Message;->what:I

    goto :goto_1

    .line 5554
    :cond_1
    const-string v3, "[IPSEC->EPDGService]"

    const-string v4, "Event received for invalid cid neglect it"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5538
    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method
