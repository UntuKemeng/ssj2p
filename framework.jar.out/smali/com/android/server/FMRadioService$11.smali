.class Lcom/android/server/FMRadioService$11;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private off()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 955
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.fm.system_power.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 957
    iget-object v1, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$800(Lcom/android/server/FMRadioService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 958
    iget-object v1, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    const-string v1, "Powering off : stop FM"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    # invokes: Lcom/android/server/FMRadioService;->stopInternetStreaming()V
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$900(Lcom/android/server/FMRadioService;)V

    .line 961
    iget-object v1, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 962
    iget-object v1, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    const/4 v2, 0x6

    # invokes: Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z
    invoke-static {v1, v3, v2, v3}, Lcom/android/server/FMRadioService;->access$1000(Lcom/android/server/FMRadioService;ZIZ)Z

    .line 967
    :goto_0
    return-void

    .line 964
    :cond_0
    const-string v1, "Powering off : remove audiofocus: FM"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 965
    iget-object v1, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 948
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/android/server/FMRadioService$11;->off()V

    .line 952
    :cond_0
    return-void
.end method
