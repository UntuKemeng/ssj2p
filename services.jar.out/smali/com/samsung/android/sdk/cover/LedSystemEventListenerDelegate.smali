.class Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "LedSystemEventListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# static fields
.field private static final MSG_SYSTEM_COVER_EVENT:I


# instance fields
.field private mHandler:Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

.field private mListener:Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

    iget-object v2, p0, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

    return-void

    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;

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

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
