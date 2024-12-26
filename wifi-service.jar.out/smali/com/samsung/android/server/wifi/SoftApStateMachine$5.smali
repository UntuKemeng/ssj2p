.class Lcom/samsung/android/server/wifi/SoftApStateMachine$5;
.super Landroid/content/BroadcastReceiver;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SoftApStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIsBootCompleteForLogging:Z
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$702(Lcom/samsung/android/server/wifi/SoftApStateMachine;Z)Z

    .line 254
    return-void
.end method
