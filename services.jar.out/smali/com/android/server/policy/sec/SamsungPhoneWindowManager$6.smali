.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$6;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 577
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    # invokes: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updatePowerSave()V
    invoke-static {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$000(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const-string/jumbo v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # invokes: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->setPowerSave(Z)V
    invoke-static {v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$100(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Z)V

    goto :goto_0
.end method
