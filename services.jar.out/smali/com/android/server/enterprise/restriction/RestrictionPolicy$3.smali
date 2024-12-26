.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 534
    const-string v3, "RestrictionPolicy"

    const-string v4, "FOTAReceiver: onReceive"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "sec.fota.intent.MDM_REGISTER_RESULT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 538
    const/4 v2, 0x0

    .line 539
    .local v2, "result":I
    const-string/jumbo v3, "result"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 544
    .local v1, "extra":I
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 545
    const/4 v2, 0x1

    .line 546
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FOTAReceiver: action:sec.fota.intent.MDM_REGISTER_RESULT failure("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->clearSelectiveFota()Z
    invoke-static {v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    .line 552
    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->sendSeletiveFotaResult(I)V
    invoke-static {v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$500(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    .line 554
    .end local v1    # "extra":I
    .end local v2    # "result":I
    :cond_0
    return-void

    .line 550
    .restart local v1    # "extra":I
    .restart local v2    # "result":I
    :cond_1
    const-string v3, "RestrictionPolicy"

    const-string v4, "action:sec.fota.intent.MDM_REGISTER_RESULT success"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
