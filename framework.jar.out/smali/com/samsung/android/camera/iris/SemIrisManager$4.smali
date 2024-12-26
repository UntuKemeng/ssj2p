.class Lcom/samsung/android/camera/iris/SemIrisManager$4;
.super Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/iris/SemIrisManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V
    .locals 0

    .prologue
    .line 1948
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$600(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1958
    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2
    .param p1, "deviceId"    # J

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$600(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1969
    return-void
.end method

.method public onAuthenticationSucceeded(JLcom/samsung/android/camera/iris/Iris;[B)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p4, "fidoResultData"    # [B

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$600(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1963
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$600(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1964
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "irisId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$600(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x64

    const/4 v8, 0x0

    new-instance v0, Lcom/samsung/android/camera/iris/Iris;

    const/4 v1, 0x0

    move v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/iris/Iris;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v6, v7, p5, v8, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1953
    return-void
.end method

.method public onError(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$600(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1974
    return-void
.end method

.method public onIRImage(J[BII)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "irisImage"    # [B
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$600(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p4, p5, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1984
    return-void
.end method

.method public onRemoved(JII)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "irisId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$600(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1979
    return-void
.end method
