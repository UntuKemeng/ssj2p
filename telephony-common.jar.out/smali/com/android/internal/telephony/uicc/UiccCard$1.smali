.class Lcom/android/internal/telephony/uicc/UiccCard$1;
.super Ljava/lang/Object;
.source "UiccCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 520
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 522
    const/4 v1, -0x1

    if-ne p2, v1, :cond_6

    .line 523
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 524
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    const-string v1, "2"

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimTrayCount()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 526
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 527
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 528
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    .line 530
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 531
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 532
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    .line 540
    :cond_2
    :goto_0
    monitor-exit v2

    .line 558
    :goto_1
    return-void

    .line 535
    :cond_3
    if-eqz p1, :cond_2

    .line 536
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 537
    const/4 p1, 0x0

    goto :goto_0

    .line 543
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v3, "Reboot due to SIM swap"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCard$1$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCard$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 551
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 557
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_5
    :goto_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 553
    :cond_6
    const/4 v1, -0x2

    if-ne p2, v1, :cond_5

    .line 554
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v3, "Do not reboot device"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
