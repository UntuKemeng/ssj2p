.class Lcom/android/server/usb/UsbHostRestrictor$4;
.super Landroid/content/BroadcastReceiver;
.source "UsbHostRestrictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostRestrictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 389
    const-string v4, "UsbHostRestrictor"

    const-string/jumbo v5, "mUPSMReceiver onReceive"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$800(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "mCurrentFunction":Ljava/lang/String;
    const-string v4, "UsbHostRestrictor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mUPSMReceiver Check currnet USB Mode ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 399
    const-string/jumbo v4, "reason"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 403
    .local v3, "reason":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 404
    const-string v4, "UsbHostRestrictor"

    const-string/jumbo v5, "mUPSMReceiver Ultra Power Saving Mode is ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v4, 0x1

    # setter for: Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$202(Z)Z

    .line 407
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 408
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v5, "ON_ALL_UPSM"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$600(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    .line 411
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showToastByIntent()V
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$900(Lcom/android/server/usb/UsbHostRestrictor;)V

    .line 432
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "mCurrentFunction":Ljava/lang/String;
    .end local v3    # "reason":I
    :cond_0
    :goto_0
    return-void

    .line 413
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "mCurrentFunction":Ljava/lang/String;
    .restart local v3    # "reason":I
    :cond_1
    const-string v4, "UsbHostRestrictor"

    const-string v5, "UPSM Receiver Cannot write for USB DISABLE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "mCurrentFunction":Ljava/lang/String;
    .end local v3    # "reason":I
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "UsbHostRestrictor"

    const-string v5, "error : EMERGENCY_STATE_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "mCurrentFunction":Ljava/lang/String;
    .restart local v3    # "reason":I
    :cond_2
    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 416
    :try_start_1
    const-string v4, "UsbHostRestrictor"

    const-string/jumbo v5, "mUPSMReceiver Ultra Power Saving Mode is OFF."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v4, 0x0

    # setter for: Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$202(Z)Z

    .line 419
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 420
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v5, "OFF"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$600(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_3
    const-string v4, "UsbHostRestrictor"

    const-string v5, "UPSM Receiver Cannot write for USB DISABLE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    :cond_4
    const-string v4, "UsbHostRestrictor"

    const-string v5, "UPSM state is unknown."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
