.class Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;)V
    .locals 0

    .prologue
    .line 2699
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver$1;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2702
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2703
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver$1;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$402(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2704
    return-void
.end method
