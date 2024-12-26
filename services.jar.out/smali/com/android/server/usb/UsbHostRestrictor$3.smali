.class Lcom/android/server/usb/UsbHostRestrictor$3;
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
    .line 346
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 349
    const-string v3, "UsbHostRestrictor"

    const-string v4, "Subscription Receiver onReceive"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$700(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    .line 359
    .local v1, "cardCount":I
    if-lez v1, :cond_0

    .line 360
    const-string v3, "UsbHostRestrictor"

    const-string v4, "Subscription Receiver NEW SIM CARD is recognized properly."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    if-lez v1, :cond_4

    .line 364
    const/4 v3, 0x0

    # setter for: Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$102(Z)Z

    .line 365
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 366
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 367
    const-string v3, "UsbHostRestrictor"

    const-string v4, "SIM USB is is already UNBLOCKED"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "cardCount":I
    :cond_1
    :goto_0
    return-void

    .line 369
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "cardCount":I
    :cond_2
    const-string v3, "UsbHostRestrictor"

    const-string v4, "SIM USB is UNBLOCK"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v4, "OFF"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$600(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "cardCount":I
    :catch_0
    move-exception v2

    .line 380
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "UsbHostRestrictor"

    const-string v4, "error : ACTION_SUBINFO_RECORD_UPDATED"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "cardCount":I
    :cond_3
    :try_start_1
    const-string v3, "UsbHostRestrictor"

    const-string v4, "Subscription Receiver Cannot write for USB DISABLE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :cond_4
    const-string v3, "UsbHostRestrictor"

    const-string v4, "Subscription Receiver SIM is not recognized properly. Needs to check the SIM CARD"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
