.class Lcom/android/server/policy/PhoneWindowManager$30$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$30;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$30;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$30;)V
    .locals 0

    .prologue
    .line 10436
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$30$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$30;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 10438
    if-eq p1, v2, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 10439
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$30$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$30;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    if-ne v0, v2, :cond_1

    .line 10440
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$30$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$30;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$30$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$30;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 10441
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$30$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$30;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 10446
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$30$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$30;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 10447
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$30$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$30;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 10448
    return-void

    .line 10444
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$30$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$30;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$30$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$30;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    goto :goto_0
.end method
