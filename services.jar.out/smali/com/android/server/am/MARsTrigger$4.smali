.class Lcom/android/server/am/MARsTrigger$4;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$4;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x6

    .line 603
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 608
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 609
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 610
    const-string v3, "PACKAGE_NAME"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 611
    .local v2, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 612
    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$4;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsPolicyManager;->updateSBikePackages(Ljava/util/ArrayList;)V

    .line 616
    .end local v2    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$4;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$4;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/server/am/MARsTrigger;->access$1300(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V
    invoke-static {v3, v5, v4}, Lcom/android/server/am/MARsTrigger;->access$1400(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    .line 621
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 618
    :cond_2
    const-string v3, "com.android.server.am.MARS_CANCEL_SBIKE_MODE_POLICY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 619
    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$4;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    goto :goto_0
.end method