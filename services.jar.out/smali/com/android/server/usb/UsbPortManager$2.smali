.class Lcom/android/server/usb/UsbPortManager$2;
.super Landroid/os/UEventObserver;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbPortManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPortManager;)V
    .locals 0

    .prologue
    .line 957
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$2;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 960
    const-string v0, "UsbPortManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUEvent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$2;->this$0:Lcom/android/server/usb/UsbPortManager;

    # invokes: Lcom/android/server/usb/UsbPortManager;->scheduleUpdatePorts(Landroid/os/UEventObserver$UEvent;)V
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbPortManager;->access$300(Lcom/android/server/usb/UsbPortManager;Landroid/os/UEventObserver$UEvent;)V

    .line 969
    return-void
.end method
