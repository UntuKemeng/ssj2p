.class Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktop/DesktopService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopModeStateReceiver"
.end annotation


# instance fields
.field mBTKeyboardConnectedState:I

.field mBTMouseConnectedState:I

.field mUSBKeyboardConnectedstate:I

.field mUSBMouseConnectedstate:I

.field final synthetic this$0:Lcom/android/server/desktop/DesktopService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktop/DesktopService;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput v0, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->mUSBMouseConnectedstate:I

    iput v0, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->mUSBKeyboardConnectedstate:I

    iput v0, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->mBTMouseConnectedState:I

    iput v0, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->mBTKeyboardConnectedState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktop/DesktopService;Lcom/android/server/desktop/DesktopService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p2, "x1"    # Lcom/android/server/desktop/DesktopService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;-><init>(Lcom/android/server/desktop/DesktopService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .local v2, "data":Ljava/lang/String;
    # getter for: Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktop/DesktopService;->access$400()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DesktopModeStateReceiver, action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "com.samsung.android.intent.action.KNOXDESKTOP_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    # getter for: Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktop/DesktopService;->access$400()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Launcher changing is completed, isKnoxDesktopMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    invoke-virtual {v9}, Lcom/android/server/desktop/DesktopService;->isKnoxDesktopMode()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # invokes: Lcom/android/server/desktop/DesktopService;->stopLoadingScreen()V
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$700(Lcom/android/server/desktop/DesktopService;)V

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    invoke-virtual {v7}, Lcom/android/server/desktop/DesktopService;->isKnoxDesktopMode()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/desktop/DesktopService;->turnOnMainLCD(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "android.intent.extra.device_state"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, "mouseState":I
    # getter for: Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktop/DesktopService;->access$400()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB mouse connection event : mouseState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->mUSBMouseConnectedstate:I

    if-eq v7, v5, :cond_2

    iput v5, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->mUSBMouseConnectedstate:I

    iget-object v8, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    const/4 v7, 0x1

    if-ne v7, v5, :cond_3

    const/4 v7, 0x1

    :goto_1
    # setter for: Lcom/android/server/desktop/DesktopService;->mIsUSBMouseConnected:Z
    invoke-static {v8, v7}, Lcom/android/server/desktop/DesktopService;->access$802(Lcom/android/server/desktop/DesktopService;Z)Z

    :cond_2
    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # invokes: Lcom/android/server/desktop/DesktopService;->updateKnoxDesktopModeState()V
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$600(Lcom/android/server/desktop/DesktopService;)V

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .end local v5    # "mouseState":I
    :cond_4
    const-string v7, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "android.intent.extra.device_state"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, "keyboardState":I
    # getter for: Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktop/DesktopService;->access$400()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB keyboard connection event : keyboardState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->mUSBKeyboardConnectedstate:I

    if-eq v7, v4, :cond_5

    iput v4, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->mUSBKeyboardConnectedstate:I

    iget-object v8, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    const/4 v7, 0x1

    if-ne v7, v4, :cond_7

    const/4 v7, 0x1

    :goto_2
    # setter for: Lcom/android/server/desktop/DesktopService;->mIsUSBKeyboardConnected:Z
    invoke-static {v8, v7}, Lcom/android/server/desktop/DesktopService;->access$902(Lcom/android/server/desktop/DesktopService;Z)Z

    :cond_5
    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsKnoxDesktopMode:Z
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$1000(Lcom/android/server/desktop/DesktopService;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsUSBMouseConnected:Z
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$800(Lcom/android/server/desktop/DesktopService;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsBTMouseConnected:Z
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$1100(Lcom/android/server/desktop/DesktopService;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_6
    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsUSBKeyboardConnected:Z
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$900(Lcom/android/server/desktop/DesktopService;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # invokes: Lcom/android/server/desktop/DesktopService;->updateKnoxDesktopModeState()V
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$600(Lcom/android/server/desktop/DesktopService;)V

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .end local v4    # "keyboardState":I
    :cond_8
    const-string v7, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "android.bluetooth.profile.extra.isKeyboard"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .local v3, "isBTKeyboard":Z
    const-string v7, "android.bluetooth.profile.extra.STATE"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "currState":I
    const-string v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .local v6, "prevState":I
    if-nez v3, :cond_d

    # getter for: Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktop/DesktopService;->access$400()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bluetooth mouse connection event : currState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", prevState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    if-ne v1, v7, :cond_a

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/desktop/DesktopService;->mIsBTMouseConnected:Z
    invoke-static {v7, v8}, Lcom/android/server/desktop/DesktopService;->access$1102(Lcom/android/server/desktop/DesktopService;Z)Z

    :cond_9
    :goto_3
    iput v1, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->mBTMouseConnectedState:I

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # invokes: Lcom/android/server/desktop/DesktopService;->updateKnoxDesktopModeState()V
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$600(Lcom/android/server/desktop/DesktopService;)V

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mHasExternalDisplay:Z
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$1200(Lcom/android/server/desktop/DesktopService;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    const/4 v7, 0x3

    if-ne v1, v7, :cond_9

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mHasExternalDisplay:Z
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$1200(Lcom/android/server/desktop/DesktopService;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_c
    iget v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->mUSBMouseConnectedstate:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_9

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/desktop/DesktopService;->mIsBTMouseConnected:Z
    invoke-static {v7, v8}, Lcom/android/server/desktop/DesktopService;->access$1102(Lcom/android/server/desktop/DesktopService;Z)Z

    goto :goto_3

    :cond_d
    # getter for: Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktop/DesktopService;->access$400()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bluetooth keyboard connection event : currState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", prevState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    if-ne v1, v7, :cond_10

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/desktop/DesktopService;->mIsBTKeyboardConnected:Z
    invoke-static {v7, v8}, Lcom/android/server/desktop/DesktopService;->access$1302(Lcom/android/server/desktop/DesktopService;Z)Z

    :cond_e
    :goto_4
    iput v1, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->mBTKeyboardConnectedState:I

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsKnoxDesktopMode:Z
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$1000(Lcom/android/server/desktop/DesktopService;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsUSBMouseConnected:Z
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$800(Lcom/android/server/desktop/DesktopService;)Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsBTMouseConnected:Z
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$1100(Lcom/android/server/desktop/DesktopService;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_f
    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsBTKeyboardConnected:Z
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$1300(Lcom/android/server/desktop/DesktopService;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # invokes: Lcom/android/server/desktop/DesktopService;->updateKnoxDesktopModeState()V
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$600(Lcom/android/server/desktop/DesktopService;)V

    goto/16 :goto_0

    :cond_10
    const/4 v7, 0x2

    if-ne v6, v7, :cond_11

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mHasExternalDisplay:Z
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$1200(Lcom/android/server/desktop/DesktopService;)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    const/4 v7, 0x2

    if-ne v6, v7, :cond_e

    const/4 v7, 0x3

    if-ne v1, v7, :cond_e

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mHasExternalDisplay:Z
    invoke-static {v7}, Lcom/android/server/desktop/DesktopService;->access$1200(Lcom/android/server/desktop/DesktopService;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_12
    iget v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->mUSBKeyboardConnectedstate:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_e

    iget-object v7, p0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/desktop/DesktopService;->mIsBTKeyboardConnected:Z
    invoke-static {v7, v8}, Lcom/android/server/desktop/DesktopService;->access$1302(Lcom/android/server/desktop/DesktopService;Z)Z

    goto :goto_4
.end method
