.class Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CaPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final AP_SLEEP:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final AP_WAKEUP:Ljava/lang/String; = "android.intent.action.SCREEN_ON"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1005

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
