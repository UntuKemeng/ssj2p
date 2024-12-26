.class Lcom/sec/epdg/EpdgService$29;
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
    .line 5775
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$29;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5778
    const-string v0, "[EPDGService]"

    const-string v1, "LTE available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5779
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->setIsLteAvailable(Z)V

    .line 5780
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5781
    # setter for: Lcom/sec/epdg/EpdgService;->mIsLteAvailableDuringConnecting:Z
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->access$5502(Z)Z

    .line 5785
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$29;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$5600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    .line 5786
    return-void

    .line 5783
    :cond_0
    # setter for: Lcom/sec/epdg/EpdgService;->mIsLteAvailableDuringConnecting:Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5502(Z)Z

    goto :goto_0
.end method
