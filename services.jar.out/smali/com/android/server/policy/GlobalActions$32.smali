.class Lcom/android/server/policy/GlobalActions$32;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    .prologue
    .line 3318
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$32;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3320
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$32;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions;->airplaneModeClickAction(Z)V

    .line 3321
    const/4 v0, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$7302(Z)Z

    .line 3322
    return-void
.end method
