.class Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "LegacyLedSystemEventListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# static fields
.field private static final MSG_SYSTEM_COVER_EVENT:I = 0x0

.field private static final SYSTEM_EVENT_LED_OFF_COMMAND:Ljava/lang/String; = "led_off_command"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;

.field private mListener:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->mListener:Ljava/lang/Object;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;

    iget-object v2, p0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->mListener:Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;

    return-void

    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->mListener:Ljava/lang/Object;

    return-object v0
.end method

.method public onCoverTouchAccept()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public onCoverTouchReject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public onSystemCoverEvent(I[I)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "args"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
