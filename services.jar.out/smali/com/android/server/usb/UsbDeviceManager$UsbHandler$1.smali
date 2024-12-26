.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;
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
    .line 526
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 529
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "sec_plug_type"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 532
    .local v1, "chargeType":I
    and-int/lit8 v2, v1, 0x1

    .line 533
    .local v2, "check_with_AC":I
    and-int/lit8 v3, v1, 0x2

    .line 535
    .local v3, "check_with_USB":I
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v4, v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mSupportDualRole:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$1000(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 538
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_1

    .line 540
    const-string v4, "UsbDeviceManager"

    const-string/jumbo v5, "received ACTION_SEC_BATTERY_EVENT : TA CHARGING ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v4, v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 542
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mTAPowerConnected:Z
    invoke-static {v4, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1102(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_2

    .line 545
    const-string v4, "UsbDeviceManager"

    const-string/jumbo v5, "received ACTION_SEC_BATTERY_EVENT : USB CHARGING ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z
    invoke-static {v4, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1202(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 547
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v4, v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    goto :goto_0

    .line 548
    :cond_2
    and-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_3

    .line 550
    const-string v4, "UsbDeviceManager"

    const-string/jumbo v5, "received ACTION_SEC_BATTERY_EVENT : USB CHARGING OFF"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z
    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1202(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 552
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mTAPowerConnected:Z
    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1102(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 553
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v4, v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    goto :goto_0

    .line 554
    :cond_3
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_0

    goto :goto_0

    .line 559
    :cond_4
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_5

    .line 561
    const-string v4, "UsbDeviceManager"

    const-string/jumbo v5, "received ACTION_SEC_BATTERY_EVENT : USB CHARGING ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z
    invoke-static {v4, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1202(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 563
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v4, v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    goto :goto_0

    .line 564
    :cond_5
    and-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_0

    .line 566
    const-string v4, "UsbDeviceManager"

    const-string/jumbo v5, "received ACTION_SEC_BATTERY_EVENT : USB CHARGING OFF"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z
    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1202(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 568
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v4, v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    goto :goto_0
.end method
