.class Lcom/android/server/am/SchedPolicyManager$1;
.super Landroid/database/ContentObserver;
.source "SchedPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SchedPolicyManager;->registerDefaultInputMethodChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SchedPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/SchedPolicyManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/am/SchedPolicyManager$1;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager$1;->this$0:Lcom/android/server/am/SchedPolicyManager;

    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager$1;->this$0:Lcom/android/server/am/SchedPolicyManager;

    # invokes: Lcom/android/server/am/SchedPolicyManager;->getDefaultIMEPackage()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/SchedPolicyManager;->access$100(Lcom/android/server/am/SchedPolicyManager;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/am/SchedPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/am/SchedPolicyManager;->access$002(Lcom/android/server/am/SchedPolicyManager;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager$1;->this$0:Lcom/android/server/am/SchedPolicyManager;

    # invokes: Lcom/android/server/am/SchedPolicyManager;->init()V
    invoke-static {v0}, Lcom/android/server/am/SchedPolicyManager;->access$200(Lcom/android/server/am/SchedPolicyManager;)V

    .line 112
    return-void
.end method
