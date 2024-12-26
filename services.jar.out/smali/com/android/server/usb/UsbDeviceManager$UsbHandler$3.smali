.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 587
    const-string v2, "UsbDeviceManager"

    const-string v3, "Keyguard Lock/Unlock"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v2, "dev.kies.drivedisplay"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "mtpStorageDisplay":Ljava/lang/String;
    const/4 v0, 0x0

    .line 595
    .local v0, "mMTPShowInternalMemory":Z
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentMTPDisplayState:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1300(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 596
    const-string v2, "0"

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentMTPDisplayState:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1300(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 597
    const/4 v0, 0x1

    .line 598
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentMTPDisplayState:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1302(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 608
    :cond_0
    :goto_0
    const-string v2, "0"

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentMTPDisplayState:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1300(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-ne v0, v4, :cond_4

    .line 609
    :cond_1
    const-string v2, "UsbDeviceManager"

    const-string v3, "Keyguard Unlock Receiver - Update Usb Noti"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification_Lock(Z)V
    invoke-static {v2, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)V

    .line 611
    const/4 v0, 0x0

    .line 617
    :cond_2
    :goto_1
    return-void

    .line 600
    :cond_3
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentMTPDisplayState:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1302(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 612
    :cond_4
    const-string v2, "1"

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentMTPDisplayState:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1300(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 613
    const-string v2, "UsbDeviceManager"

    const-string v3, "Keyguard Unlock Receiver - NO NEED TO UPDATE USB NOTI"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 614
    :cond_5
    const-string v2, "NONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 615
    const-string v2, "UsbDeviceManager"

    const-string v3, "Keyguard Unlock Receiver - MTP DISPLAY VALUE ABNORMAL"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
