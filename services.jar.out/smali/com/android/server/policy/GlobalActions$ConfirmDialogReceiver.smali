.class Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfirmDialogReceiver"
.end annotation


# instance fields
.field contextInternal:Landroid/content/Context;

.field dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4841
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4842
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4843
    .local v0, "filter":Landroid/content/IntentFilter;
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->contextInternal:Landroid/content/Context;

    .line 4844
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->contextInternal:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4845
    return-void
.end method

.method private restoreQuickpanelBackgroundInternal()V
    .locals 3

    .prologue
    .line 4847
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->contextInternal:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 4854
    :goto_0
    return-void

    .line 4848
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4849
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4850
    const-string/jumbo v1, "suppressCoverUI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4851
    const-string/jumbo v1, "miniModeUI"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4852
    const-string/jumbo v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4853
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->contextInternal:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 4866
    # setter for: Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$7302(Z)Z

    .line 4867
    # getter for: Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4868
    # getter for: Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4869
    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$202(Z)Z

    .line 4870
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->restoreQuickpanelBackgroundInternal()V

    .line 4871
    monitor-exit v1

    .line 4875
    :goto_0
    return-void

    .line 4871
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4873
    :cond_0
    # setter for: Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$002(Z)Z

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4857
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 4858
    const-string/jumbo v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 4859
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4862
    .end local v0    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_0
    :goto_0
    return-void

    .line 4860
    .restart local v0    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
