.class Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "NfcLedCoverTouchListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# static fields
.field private static final MSG_LISTEN_COVER_TOUCH_ACCEPT:I = 0x0

.field private static final MSG_LISTEN_COVER_TOUCH_REJECT:I = 0x1


# instance fields
.field private mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

.field private mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    .line 26
    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 29
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    iget-object v2, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    .line 30
    return-void

    .line 26
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
    .line 33
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    return-object v0
.end method

.method public onCoverTouchAccept()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 39
    return-void
.end method

.method public onCoverTouchReject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 44
    return-void
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    return-void
.end method
