.class final Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BigDataLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/BigDataLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Lcom/samsung/android/displaysolution/BigDataLoggingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/displaysolution/BigDataLoggingService;
    .param p2, "x1"    # Lcom/samsung/android/displaysolution/BigDataLoggingService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v1, "BigDataLoggingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BigDataLoggingService"

    const-string v2, "ACTION_BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    # invokes: Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_boot_completed_intent()V
    invoke-static {v1}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->access$100(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "BigDataLoggingService"

    const-string v2, "ACTION_SCREEN_ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    # invokes: Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_screen_on_intent()V
    invoke-static {v1}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->access$200(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BigDataLoggingService"

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    # invokes: Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_screen_off_intent()V
    invoke-static {v1}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->access$300(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BigDataLoggingService"

    const-string v2, "ACTION_USER_PRESENT"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    # invokes: Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_user_present_intent()V
    invoke-static {v1}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->access$400(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    goto :goto_0
.end method
