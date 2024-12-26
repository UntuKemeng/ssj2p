.class Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;
.super Landroid/os/Handler;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetterHandler"
.end annotation


# static fields
.field private static final IMAGE_GETTER_CALLBACK:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 962
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 967
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 972
    :goto_0
    return-void

    .line 969
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 967
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public postDelayedGetterCallback(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 979
    if-nez p1, :cond_0

    .line 980
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 982
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 983
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 984
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 985
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 986
    return-void
.end method

.method public postGetterCallback(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 975
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->postDelayedGetterCallback(Ljava/lang/Runnable;J)V

    .line 976
    return-void
.end method

.method public removeAllGetterCallbacks()V
    .locals 1

    .prologue
    .line 989
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeMessages(I)V

    .line 990
    return-void
.end method
