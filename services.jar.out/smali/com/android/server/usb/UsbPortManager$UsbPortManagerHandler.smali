.class Lcom/android/server/usb/UsbPortManager$UsbPortManagerHandler;
.super Landroid/os/Handler;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbPortManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbPortManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$UsbPortManagerHandler;->this$0:Lcom/android/server/usb/UsbPortManager;

    .line 917
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 918
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 922
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 935
    :goto_0
    return-void

    .line 924
    :pswitch_0
    const-string v1, "UsbPortManager"

    const-string/jumbo v2, "handleMessage()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$UsbPortManagerHandler;->this$0:Lcom/android/server/usb/UsbPortManager;

    # getter for: Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$100(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 928
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/UEventObserver$UEvent;

    .line 929
    .local v0, "uevent_info":Landroid/os/UEventObserver$UEvent;
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$UsbPortManagerHandler;->this$0:Lcom/android/server/usb/UsbPortManager;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/UEventObserver$UEvent;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/UEventObserver$UEvent;)V

    .line 931
    monitor-exit v2

    goto :goto_0

    .end local v0    # "uevent_info":Landroid/os/UEventObserver$UEvent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 922
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
