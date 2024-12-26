.class Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;
.source "NfcLedCoverTouchListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDelegateHandler"
.end annotation


# instance fields
.field private final mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    iput-object p2, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    .line 63
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    if-eqz v0, :cond_0

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;->onCoverTouchAccept()V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;->onCoverTouchReject()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
