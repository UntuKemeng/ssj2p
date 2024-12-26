.class final Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceLightState"
.end annotation


# static fields
.field public static final LIGHT_STATE_OFF:I = 0x0

.field public static final LIGHT_STATE_ON:I = 0x1

.field public static final LIGHT_STATE_UNKNOWN:I = 0x2

.field public static final MSG_LIGHT_OFF:I = 0x0

.field public static final MSG_LIGHT_ON:I = 0x1


# instance fields
.field private mHandlerInputDeviceLight:Landroid/os/Handler;

.field private mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

.field private final mInputDeviceLight:Lcom/android/server/lights/Light;

.field private mInputDeviceLightState:I

.field private mInputDeviceLightTimeout:I

.field private mIsKeepLight:Z

.field private mIsMsgPending:Z

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;I)V
    .locals 2
    .param p2, "lightsId"    # I

    .prologue
    .line 7070
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7071
    # getter for: Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$13300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/LightsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLight:Lcom/android/server/lights/Light;

    .line 7072
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightState:I

    .line 7073
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    .line 7075
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InputDeviceLight"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    .line 7076
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7077
    new-instance v0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;-><init>(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Landroid/os/Looper;Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    .line 7090
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 7091
    return-void
.end method

.method static synthetic access$14600(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 7050
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->handleInputDeviceLightOn()V

    return-void
.end method

.method static synthetic access$14700(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 7050
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->handleInputDeviceLightOff()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 7050
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .param p1, "x1"    # I

    .prologue
    .line 7050
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightTimeout(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 7050
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightKeep()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .param p1, "x1"    # Z

    .prologue
    .line 7050
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V

    return-void
.end method

.method private getInputDeviceLightKeep()Z
    .locals 1

    .prologue
    .line 7151
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    return v0
.end method

.method private getInputDeviceLightState()I
    .locals 1

    .prologue
    .line 7123
    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightState:I

    return v0
.end method

.method private getInputDeviceLightTimeout()I
    .locals 1

    .prologue
    .line 7143
    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    return v0
.end method

.method private handleInputDeviceLightOff()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7131
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7132
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    .line 7133
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 7134
    return-void
.end method

.method private handleInputDeviceLightOn()V
    .locals 2

    .prologue
    .line 7127
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLight:Lcom/android/server/lights/Light;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 7128
    return-void
.end method

.method private setInputDeviceLightKeep(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 7147
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    .line 7148
    return-void
.end method

.method private setInputDeviceLightTimeout(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7137
    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    if-eq v0, p1, :cond_0

    .line 7138
    iput p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    .line 7140
    :cond_0
    return-void
.end method


# virtual methods
.method public setInputDeviceLightOn(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 7096
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    if-eqz v1, :cond_0

    .line 7097
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 7098
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    .line 7101
    :cond_0
    if-ne p1, v4, :cond_2

    .line 7102
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7103
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7104
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7106
    iget v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    if-nez v1, :cond_1

    .line 7108
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7109
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7110
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7111
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    .line 7119
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightState:I

    .line 7120
    return-void

    .line 7114
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7115
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7116
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method