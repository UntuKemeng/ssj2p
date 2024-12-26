.class Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 464
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "inside mBReciever onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 467
    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 468
    .local v2, "userHandle":I
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_USER_REMOVED UserHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 470
    .local v1, "msg":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 471
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 481
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "userHandle":I
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 473
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 474
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    .line 475
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->showEnforcedLockTypeNotificationForAllUser()V
    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    .line 476
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->setKeyguardProperty()V
    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    goto :goto_0

    .line 477
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 479
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
