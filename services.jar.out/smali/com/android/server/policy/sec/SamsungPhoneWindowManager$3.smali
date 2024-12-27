.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;
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
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput-boolean v3, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    invoke-static {p1}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getPenState()I

    move-result v1

    .local v1, "penState":I
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    if-eq v1, v2, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const-wide/16 v6, 0x0

    if-ne v1, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v4, v6, v7, v2, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->notifyPenSwitchChanged(JZZ)V

    .end local v1    # "penState":I
    :cond_0
    return-void

    .restart local v1    # "penState":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
